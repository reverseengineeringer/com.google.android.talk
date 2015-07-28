package com.google.android.talk;

import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;

public abstract interface SessionAvailableRunnable
{
  public abstract void run(IGTalkService paramIGTalkService, IImSession paramIImSession);
}

/* Location:
 * Qualified Name:     com.google.android.talk.SessionAvailableRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */