package com.google.android.talk;

import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;

public class AddAccountActivity
  extends Activity
  implements TalkApp.AccountIdUpdatedListener
{
  private TalkApp mApp;
  private String mCreatedAccount;
  
  private void checkForAccount()
  {
    AccountManager localAccountManager = AccountManager.get(this);
    Object localObject = localAccountManager.getAccountsByType("ac2dm");
    if ((localObject == null) || (localObject.length == 0))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putCharSequence("introMessage", getString(2131492873));
      ((Bundle)localObject).putParcelable("pendingIntent", PendingIntent.getBroadcast(this, 0, new Intent(), 0));
      localAccountManager.addAccount("com.google", "ac2dm", null, (Bundle)localObject, this, new AccountManagerCallback()
      {
        public void run(final AccountManagerFuture<Bundle> paramAnonymousAccountManagerFuture)
        {
          Object localObject = null;
          try
          {
            paramAnonymousAccountManagerFuture = (Bundle)paramAnonymousAccountManagerFuture.getResult();
            runOnUiThread(new Runnable()
            {
              public void run()
              {
                if (isFinishing()) {
                  return;
                }
                if (paramAnonymousAccountManagerFuture != null)
                {
                  AddAccountActivity.access$002(AddAccountActivity.this, paramAnonymousAccountManagerFuture.getString("authAccount"));
                  mApp.addAccountListChangedListener(AddAccountActivity.this);
                  return;
                }
                finish();
              }
            });
            return;
          }
          catch (IOException paramAnonymousAccountManagerFuture)
          {
            for (;;)
            {
              paramAnonymousAccountManagerFuture = (AccountManagerFuture<Bundle>)localObject;
            }
          }
          catch (AuthenticatorException paramAnonymousAccountManagerFuture)
          {
            for (;;)
            {
              paramAnonymousAccountManagerFuture = (AccountManagerFuture<Bundle>)localObject;
            }
          }
          catch (OperationCanceledException paramAnonymousAccountManagerFuture)
          {
            for (;;)
            {
              paramAnonymousAccountManagerFuture = (AccountManagerFuture<Bundle>)localObject;
            }
          }
        }
      }, null);
    }
  }
  
  private void checkForCreatedAccountCompleted()
  {
    if (isFinishing()) {}
    for (;;)
    {
      return;
      ArrayList localArrayList = mApp.getAccountList();
      int i = 0;
      while (i < localArrayList.size())
      {
        TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)localArrayList.get(i);
        if ((TextUtils.equals(mCreatedAccount, username)) && (accountId > 0L))
        {
          AccountSelectionActivity.startBuddyListComboActivity(localAccountInfo, this);
          return;
        }
        i += 1;
      }
    }
  }
  
  public void onAccountIdUpdated(TalkApp.AccountInfo paramAccountInfo)
  {
    checkForCreatedAccountCompleted();
  }
  
  public void onAccountListChanged()
  {
    checkForCreatedAccountCompleted();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mApp = TalkApp.getApplication(this);
    if (paramBundle == null)
    {
      checkForAccount();
      return;
    }
    finish();
  }
  
  protected void onStop()
  {
    super.onStop();
    mApp.removeAccountListChangedListener(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AddAccountActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */