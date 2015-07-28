package com.google.android.videochat;

public abstract interface CallManager$CallBoundaryCallback
{
  public abstract void onConnect(String paramString1, String paramString2, boolean paramBoolean);
  
  public abstract void onDeinit(String paramString1, String paramString2);
  
  public abstract void onInit(String paramString1, String paramString2, boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.CallBoundaryCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */