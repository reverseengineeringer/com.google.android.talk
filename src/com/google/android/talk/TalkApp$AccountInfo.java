package com.google.android.talk;

public class TalkApp$AccountInfo
{
  public long accountId;
  public boolean active;
  public boolean autoLoggingIn;
  public boolean loading;
  public boolean signedIn;
  public int unreadCount;
  public String username;
  
  public String dump()
  {
    return "accountId: " + accountId + " username: " + username + " signedIn: " + signedIn + " autoLoggingIn: " + autoLoggingIn + " active: " + active;
  }
  
  public String toString()
  {
    return username;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkApp.AccountInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */