package com.google.android.videochat;

public class Stats$ConnectionInfoStats
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
  
  public Stats$ConnectionInfoStats(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    super(2);
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

/* Location:
 * Qualified Name:     com.google.android.videochat.Stats.ConnectionInfoStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */