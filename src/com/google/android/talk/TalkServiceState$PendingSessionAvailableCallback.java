package com.google.android.talk;

import android.os.Handler;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;

class TalkServiceState$PendingSessionAvailableCallback
  extends TalkServiceState.PendingCallback
{
  final long accountId;
  final SessionAvailableRunnable r;
  volatile IGTalkService service;
  volatile IImSession session;
  
  TalkServiceState$PendingSessionAvailableCallback(Handler paramHandler, long paramLong, SessionAvailableRunnable paramSessionAvailableRunnable)
  {
    super(paramHandler);
    accountId = paramLong;
    r = paramSessionAvailableRunnable;
  }
  
  public void run()
  {
    r.run(service, session);
  }
  
  void setServiceAndSession(IGTalkService paramIGTalkService, IImSession paramIImSession)
  {
    service = paramIGTalkService;
    session = paramIImSession;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkServiceState.PendingSessionAvailableCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */