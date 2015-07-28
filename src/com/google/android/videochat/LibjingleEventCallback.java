package com.google.android.videochat;

abstract interface LibjingleEventCallback
{
  public abstract void handleCallStateChanged(String paramString1, int paramInt1, int paramInt2, String paramString2);
  
  public abstract void handleLoudestSpeakerUpdate(int paramInt);
  
  public abstract void handleMediaSourcesUpdate(MediaSources paramMediaSources);
  
  public abstract void handleOutgoingCallSignalingStanza(String paramString1, String paramString2);
  
  public abstract void handleStatsUpdate(Stats paramStats);
}

/* Location:
 * Qualified Name:     com.google.android.videochat.LibjingleEventCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */