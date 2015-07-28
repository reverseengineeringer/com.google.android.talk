package com.google.android.videochat;

import java.util.Set;

class CallStateClient$1
  implements CallStateListener
{
  CallStateClient$1(CallStateClient paramCallStateClient) {}
  
  public void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject)
  {
    this$0.onCallStateUpdate(paramString, paramCallState, paramBoolean, paramObject);
  }
  
  public void onChatRoomStateUpdate(Set<NamedSource> paramSet1, Set<NamedSource> paramSet2, boolean paramBoolean, Object paramObject)
  {
    this$0.onChatRoomUpdate(paramSet1, paramSet2, paramBoolean, paramObject);
  }
  
  public void onLoudestSpeakerUpdate(int paramInt, boolean paramBoolean, Object paramObject)
  {
    this$0.onLoudestSpeakerUpdate(paramInt, paramBoolean, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallStateClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */