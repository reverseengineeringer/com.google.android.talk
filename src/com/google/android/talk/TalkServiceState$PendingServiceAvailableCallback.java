package com.google.android.talk;

import android.os.Handler;
import com.google.android.gtalkservice.IGTalkService;

class TalkServiceState$PendingServiceAvailableCallback
  extends TalkServiceState.PendingCallback
{
  final ServiceAvailableRunnable r;
  volatile IGTalkService service;
  
  TalkServiceState$PendingServiceAvailableCallback(Handler paramHandler, ServiceAvailableRunnable paramServiceAvailableRunnable)
  {
    super(paramHandler);
    r = paramServiceAvailableRunnable;
  }
  
  public void run()
  {
    r.run(service);
  }
  
  void setService(IGTalkService paramIGTalkService)
  {
    service = paramIGTalkService;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkServiceState.PendingServiceAvailableCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */