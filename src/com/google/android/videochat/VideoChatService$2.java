package com.google.android.videochat;

class VideoChatService$2
  implements CallManager.CallBoundaryCallback
{
  private String callJid;
  
  VideoChatService$2(VideoChatService paramVideoChatService) {}
  
  public void onConnect(String paramString1, String paramString2, boolean paramBoolean)
  {
    this$0.postOngoingNotification(paramString1, paramString2, paramBoolean);
    callJid = paramString1;
    VideoChatService.access$100(this$0, paramString1, paramString2);
  }
  
  public void onDeinit(String paramString1, String paramString2)
  {
    if ((callJid != null) && (callJid.equals(paramString1)))
    {
      this$0.removeOngoingNotification();
      this$0.getNetworkConnectionManager().stopUsingMobileHipri();
    }
    VideoChatService.access$200(this$0, paramString1, paramString2);
  }
  
  public void onInit(String paramString1, String paramString2, boolean paramBoolean)
  {
    this$0.getNetworkConnectionManager().startUsingMobileHipriIfOnMobileNetwork();
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.VideoChatService.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */