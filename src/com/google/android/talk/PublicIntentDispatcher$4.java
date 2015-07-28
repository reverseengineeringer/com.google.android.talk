package com.google.android.talk;

import android.content.Context;

final class PublicIntentDispatcher$4
  implements ContactInfoQuery.ContactInfoQueryCallback
{
  PublicIntentDispatcher$4(ContactInfoQuery paramContactInfoQuery, Context paramContext, long paramLong, String paramString1, boolean paramBoolean, String paramString2) {}
  
  public void onContactInfoLoaded()
  {
    int i = val$query.getCapabilities();
    if (ActivityUtils.isVideoChatCapable(i))
    {
      PublicIntentDispatcher.access$700(val$c, val$fromAccountId, val$toAddress, true, val$needLogin);
      return;
    }
    if (ActivityUtils.isAudioChatCapable(i))
    {
      PublicIntentDispatcher.access$700(val$c, val$fromAccountId, val$toAddress, false, val$needLogin);
      return;
    }
    PublicIntentDispatcher.access$800(val$c, val$fromAccountId, val$toAddress, val$messageBody, val$needLogin);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PublicIntentDispatcher.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */