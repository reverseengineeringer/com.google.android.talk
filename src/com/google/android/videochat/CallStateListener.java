package com.google.android.videochat;

import java.util.Set;

public abstract interface CallStateListener
{
  public abstract void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject);
  
  public abstract void onChatRoomStateUpdate(Set<NamedSource> paramSet1, Set<NamedSource> paramSet2, boolean paramBoolean, Object paramObject);
  
  public abstract void onLoudestSpeakerUpdate(int paramInt, boolean paramBoolean, Object paramObject);
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallStateListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */