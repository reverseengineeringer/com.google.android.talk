package com.google.android.talk;

import android.text.TextUtils;

public class RosterListAdapter$CallState
{
  public String mBareJid;
  public boolean mIsVideo;
  public boolean mPending;
  
  public boolean appliesToContact(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (TextUtils.equals(paramString, mBareJid));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.CallState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */