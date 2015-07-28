package com.google.android.videochat;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RendererManager
{
  static final String IMAGE_STABILIZATION_RENDERER_LEVEL_KEY = "is_level";
  static final String IMAGE_STABILIZATION_RENDERER_PULSE_RESET_KEY = "is_reset";
  static final String RENDERER_FLIP_INPUT_KEY = "sub_flipinput";
  static final String RENDERER_INPUT_CLIP_DIMENSIONS_KEY = "sub_inclip";
  static final String RENDERER_INPUT_DIMENSIONS_KEY = "sub_indims";
  static final String RENDERER_INPUT_TEXTURE_KEY = "sub_intex";
  static final String RENDERER_OUTPUT_DIMENSIONS_KEY = "sub_outdims";
  static final String RENDERER_OUTPUT_FBO_KEY = "sub_outfbo";
  static final String RENDERER_OUTPUT_GL_FORMAT_KEY = "sub_outformat";
  static final String RENDERER_OUTPUT_TEXTURE_KEY = "sub_outtex";
  static final String RENDERER_RENDER_CALLS_KEY = "sub_renderedframes";
  static final int RENDERER_TYPE_CAMERA = 1;
  static final int RENDERER_TYPE_IMAGE_STABILIZATION = 2;
  static final int RENDERER_TYPE_REMOTE = 3;
  static final int RENDERER_TYPE_SELF = 0;
  static final String SELF_RENDERER_CAMERA_ROTATION_KEY = "c_rotation";
  private static List<Renderer> sRendererStatsList;
  private static final Object sRendererStatsListLock = new Object();
  private int mNativeContext;
  
  static {}
  
  public RendererManager()
  {
    nativeInit();
    synchronized (sRendererStatsListLock)
    {
      sRendererStatsList = new ArrayList();
      return;
    }
  }
  
  public static void dump(PrintWriter paramPrintWriter)
  {
    synchronized (sRendererStatsListLock)
    {
      if (sRendererStatsList != null)
      {
        Iterator localIterator = sRendererStatsList.iterator();
        if (localIterator.hasNext()) {
          ((Renderer)localIterator.next()).dump(paramPrintWriter);
        }
      }
    }
  }
  
  private final native void nativeInit();
  
  private final native void nativeRelease();
  
  public RemoteRenderer createRemoteRenderer(Renderer.RendererThreadCallback paramRendererThreadCallback)
  {
    return new RemoteRenderer(this, paramRendererThreadCallback);
  }
  
  public SelfRenderer createSelfRenderer(Renderer.SelfRendererThreadCallback paramSelfRendererThreadCallback, CameraSpecification paramCameraSpecification)
  {
    return new SelfRenderer(this, paramSelfRendererThreadCallback, paramCameraSpecification);
  }
  
  final native int getIntParam(int paramInt, String paramString);
  
  final native boolean initializeGLContext(int paramInt);
  
  final native int instantiateRenderer(int paramInt);
  
  void registerRendererForStats(Renderer paramRenderer)
  {
    synchronized (sRendererStatsListLock)
    {
      if (sRendererStatsList != null) {
        sRendererStatsList.add(paramRenderer);
      }
      return;
    }
  }
  
  public void release()
  {
    nativeRelease();
    synchronized (sRendererStatsListLock)
    {
      sRendererStatsList = null;
      return;
    }
  }
  
  final native void releaseRenderer(int paramInt);
  
  final native void renderFrame(int paramInt, Object paramObject1, Object paramObject2);
  
  final native void setIntParam(int paramInt1, String paramString, int paramInt2);
  
  void unregisterRendererForStats(Renderer paramRenderer)
  {
    synchronized (sRendererStatsListLock)
    {
      if (sRendererStatsList != null) {
        sRendererStatsList.remove(paramRenderer);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.RendererManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */