package com.google.android.talk;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.IntentService;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.database.SQLException;
import android.util.Log;
import com.google.android.gsf.TalkContract.Account;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;

public class McsConnectionStartedService
  extends IntentService
  implements AccountLoginUtils.ConnectionCreatedListener
{
  private static final String[] ACCOUNT_PROJECTION = { "_id", "username", "last_login_state" };
  private AccountManager mAccountManager;
  
  public McsConnectionStartedService()
  {
    super(McsConnectionStartedService.class.getName());
    setIntentRedelivery(true);
  }
  
  private boolean isValidAccount(String paramString)
  {
    Account[] arrayOfAccount = mAccountManager.getAccountsByType("com.google");
    int j = arrayOfAccount.length;
    int i = 0;
    while (i < j)
    {
      if (paramString.equals(name)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void onMcsConnectionStarted()
  {
    TalkApp.LOGI("talk", "onMcsConnectionStarted");
    mAccountManager = AccountManager.get(this);
    IGTalkService localIGTalkService = ((TalkApp)getApplication()).getGTalkService();
    if (localIGTalkService == null)
    {
      TalkApp.LOGI("talk", "onMcsConnectionStarted: GTalkService is null");
      return;
    }
    localCursor = getContentResolver().query(TalkContract.Account.CONTENT_URI, ACCOUNT_PROJECTION, "last_login_state=1", null, null);
    if (localCursor == null)
    {
      TalkApp.LOGI("talk", "onMcsConnectionStarted: empty cursor");
      return;
    }
    for (;;)
    {
      try
      {
        if (!localCursor.moveToNext()) {
          continue;
        }
        str = localCursor.getString(1);
        i = localCursor.getInt(0);
        if (localCursor.getInt(2) == 0) {
          continue;
        }
        bool = true;
      }
      catch (SQLException localSQLException)
      {
        String str;
        int i;
        Log.e("talk", "onMcsConnectionStarted caught ", localSQLException);
        return;
        boolean bool = false;
        continue;
        return;
      }
      finally
      {
        localCursor.close();
      }
      TalkApp.LOGD("talk", "onMcsConnectionStarted: login for accountId: " + i + " username: " + str + " lastLoggedIn: " + bool);
      if ((bool) && (isValidAccount(str))) {
        AccountLoginUtils.signIn(str, localIGTalkService, this);
      }
    }
  }
  
  public void connectionCreated(String paramString, IImSession paramIImSession)
  {
    if (TalkApp.verboseLoggable()) {
      Log.v("talk", "connectionCreated " + paramString + " " + paramIImSession);
    }
    ((TalkApp)getApplication()).setImSessionAvailable(paramString, paramIImSession);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    onMcsConnectionStarted();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.McsConnectionStartedService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */