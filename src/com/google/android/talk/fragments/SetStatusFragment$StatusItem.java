package com.google.android.talk.fragments;

import com.google.android.gtalkservice.Presence.Show;

class SetStatusFragment$StatusItem
{
  boolean mCustomPresence;
  boolean mInvisible;
  Runnable mRunnable;
  Presence.Show mShow;
  String mStatus;
  int mStatusResourceId;
  
  SetStatusFragment$StatusItem(SetStatusFragment paramSetStatusFragment, String paramString, Presence.Show paramShow, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    mStatus = paramString;
    mStatusResourceId = paramInt;
    mShow = paramShow;
    mInvisible = paramBoolean1;
    mCustomPresence = paramBoolean2;
  }
  
  public void setClickRunnable(Runnable paramRunnable)
  {
    mRunnable = paramRunnable;
  }
  
  public String toString()
  {
    return mStatus;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.StatusItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */