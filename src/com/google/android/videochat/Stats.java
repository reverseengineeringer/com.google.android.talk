package com.google.android.videochat;

public abstract class Stats
{
  public int type;
  
  public Stats(int paramInt)
  {
    type = paramInt;
  }
  
  public static class ConnectionInfoStats
    extends Stats
  {
    public int flags;
    public String localAddress;
    public String localProtocol;
    public String localType;
    public int mediaType;
    public int receivedBitrate;
    public int receivedBytes;
    public String remoteAddress;
    public String remoteProtocol;
    public String remoteType;
    public int rtt;
    public int sentBitrate;
    public int sentBytes;
    
    public ConnectionInfoStats(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
    {
      super();
      mediaType = paramInt1;
      localType = paramString1;
      localAddress = paramString2;
      localProtocol = paramString3;
      remoteType = paramString4;
      remoteAddress = paramString5;
      remoteProtocol = paramString6;
      receivedBytes = paramInt2;
      receivedBitrate = paramInt3;
      sentBytes = paramInt4;
      sentBitrate = paramInt5;
      rtt = paramInt6;
      flags = paramInt7;
    }
  }
  
  public static class RendererStats
    extends Stats
  {
    public float incomingVideoDroppedFramerate;
    public float incomingVideoFramerate;
    public float incomingVideoRenderedFramerate;
    public float rendererFramerate;
    
    public RendererStats(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      super();
      rendererFramerate = paramFloat1;
      incomingVideoFramerate = paramFloat2;
      incomingVideoRenderedFramerate = paramFloat3;
      incomingVideoDroppedFramerate = paramFloat4;
    }
  }
  
  public static class VideoMediaEngineStats
    extends Stats
  {
    public int receivedFrameHeight;
    public int receivedFrameWidth;
    public float receivedFramerate;
    public int sentFrameHeight;
    public int sentFrameWidth;
    public float sentFramerate;
    
    public VideoMediaEngineStats(float paramFloat1, int paramInt1, int paramInt2, float paramFloat2, int paramInt3, int paramInt4)
    {
      super();
      receivedFramerate = paramFloat1;
      receivedFrameWidth = paramInt1;
      receivedFrameHeight = paramInt2;
      sentFramerate = paramFloat2;
      sentFrameWidth = paramInt3;
      sentFrameHeight = paramInt4;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.Stats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */