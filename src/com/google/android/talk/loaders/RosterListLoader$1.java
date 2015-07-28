package com.google.android.talk.loaders;

import android.database.ContentObserver;
import android.os.Handler;

class RosterListLoader$1
  extends ContentObserver
{
  RosterListLoader$1(RosterListLoader paramRosterListLoader, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public void onChange(boolean paramBoolean)
  {
    RosterListLoader.access$000(this$0, "RosterListLoader.mContentObserver.onChange");
    this$0.forceLoad();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.loaders.RosterListLoader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */