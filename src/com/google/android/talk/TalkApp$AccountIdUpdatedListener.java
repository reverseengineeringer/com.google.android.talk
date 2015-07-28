package com.google.android.talk;

abstract interface TalkApp$AccountIdUpdatedListener
  extends TalkApp.AccountListChangeListener
{
  public abstract void onAccountIdUpdated(TalkApp.AccountInfo paramAccountInfo);
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.AccountIdUpdatedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */