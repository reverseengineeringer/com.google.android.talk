package com.google.android.videochat;

import com.google.android.videochat.util.CircularArray;
import com.google.android.videochat.util.LogUtil;
import java.io.PrintWriter;
import java.util.Date;

public class RemoteRenderer
  extends Renderer
{
  private final Renderer.RendererThreadCallback mCallback;
  private long mFirstStatsUpdateTime;
  private boolean mHaveSeenFirstFrame;
  private long mLastStatsUpdateTime;
  private int mOutputTextureName;
  CircularArray<Stats> mStats = new CircularArray(120);
  
  RemoteRenderer(RendererManager paramRendererManager, Renderer.RendererThreadCallback paramRendererThreadCallback)
  {
    mRendererManager = paramRendererManager;
    mCallback = paramRendererThreadCallback;
    mRendererID = mRendererManager.instantiateRenderer(3);
    LogUtil.LOGV("vclib:RemoteRenderer", "construct " + mRendererID);
    mRendererManager.registerRendererForStats(this);
  }
  
  public void drawTexture(Renderer.DrawInputParams arg1, Renderer.DrawOutputParams paramDrawOutputParams)
  {
    ??? = (RendererFrameOutputData)paramDrawOutputParams;
    mRendererManager.renderFrame(mRendererID, null, paramDrawOutputParams);
    if ((!mHaveSeenFirstFrame) && (updatedTexture))
    {
      if (mCallback != null) {
        mCallback.onInitialFrame();
      }
      mHaveSeenFirstFrame = true;
    }
    long l = System.currentTimeMillis();
    if (l - mLastStatsUpdateTime > 10000L)
    {
      paramDrawOutputParams = new Stats(null);
      time = l;
      dropped = mRendererManager.getIntParam(mRendererID, "yuv_dropped");
      pushed = mRendererManager.getIntParam(mRendererID, "yuv_pushed");
      renderered = mRendererManager.getIntParam(mRendererID, "yuv_rendered");
      rendererCalls = mRendererManager.getIntParam(mRendererID, "sub_renderedframes");
    }
    synchronized (mStats)
    {
      mStats.add(paramDrawOutputParams);
      mLastStatsUpdateTime = l;
      return;
    }
  }
  
  public void dump(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("Remote Renderer -- dropped, pushed, new frames renderered, rendered");
    Object localObject = new Stats(null);
    time = mFirstStatsUpdateTime;
    synchronized (mStats)
    {
      int j = mStats.count();
      int i = 0;
      while (i < j)
      {
        Stats localStats = (Stats)mStats.get(i);
        Date localDate = new Date(time);
        float f = (float)(time - time) / 1000.0F;
        paramPrintWriter.println(localDate.toString() + " -- " + (dropped - dropped) / f + ", " + (pushed - pushed) / f + ", " + (renderered - renderered) / f + ", " + (rendererCalls - rendererCalls) / f);
        localObject = localStats;
        i += 1;
      }
      return;
    }
  }
  
  public int getOutputTextureName()
  {
    return mOutputTextureName;
  }
  
  public void initializeGLContext()
  {
    LogUtil.LOGV("vclib:RemoteRenderer", "initializeGLContext " + mRendererID);
    mRendererManager.initializeGLContext(mRendererID);
    mOutputTextureName = mRendererManager.getIntParam(mRendererID, "sub_outtex");
    mHaveSeenFirstFrame = false;
    long l = System.currentTimeMillis();
    mFirstStatsUpdateTime = l;
    mLastStatsUpdateTime = l;
  }
  
  public void release()
  {
    LogUtil.LOGV("vclib:RemoteRenderer", "release " + mRendererID);
    mRendererManager.unregisterRendererForStats(this);
    mRendererManager.releaseRenderer(mRendererID);
  }
  
  public static class RendererFrameOutputData
    extends Renderer.DrawOutputParams
  {
    public int frameHeight;
    public boolean frameSizeChanged;
    public int frameWidth;
    public boolean updatedTexture;
  }
  
  private class Stats
  {
    int dropped;
    int pushed;
    int rendererCalls;
    int renderered;
    long time;
    
    private Stats() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.RemoteRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */