package com.google.android.talk;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gtalkservice.ConnectionError;
import java.io.IOException;

class AccountSelectionActivity$ConnectionErrorCallback
  implements Runnable
{
  private ConnectionError mError;
  
  public AccountSelectionActivity$ConnectionErrorCallback(AccountSelectionActivity paramAccountSelectionActivity, ConnectionError paramConnectionError)
  {
    mError = paramConnectionError;
  }
  
  private void promptForCredentials()
  {
    AccountSelectionActivity.log("prompt for passwd for " + access$200this$0).username);
    Account localAccount = new Account(access$200this$0).username, "com.google");
    Bundle localBundle = new Bundle();
    AccountManager.get(this$0).getAuthToken(localAccount, "ac2dm", localBundle, this$0, new AccountManagerCallback()
    {
      public void run(AccountManagerFuture<Bundle> paramAnonymousAccountManagerFuture)
      {
        try
        {
          paramAnonymousAccountManagerFuture = (Bundle)paramAnonymousAccountManagerFuture.getResult();
          AccountSelectionActivity.log("AccountManager.get() callback - result=" + paramAnonymousAccountManagerFuture);
          AccountLoginUtils.signIn(access$200this$0).username, AccountSelectionActivity.access$1100(this$0), this$0);
          return;
        }
        catch (OperationCanceledException paramAnonymousAccountManagerFuture)
        {
          AccountSelectionActivity.log("promptForCredentials(): User canceled, exit");
          this$0.finish();
          return;
        }
        catch (IOException paramAnonymousAccountManagerFuture)
        {
          AccountSelectionActivity.log("promptForCredentials(): IO Error, exit");
          this$0.finish();
          return;
        }
        catch (AuthenticatorException paramAnonymousAccountManagerFuture)
        {
          AccountSelectionActivity.log("promptForCredentials(): Not authenticated");
          this$0.finish();
        }
      }
    }, null);
  }
  
  private void showConnectionOrServerErrors()
  {
    if (!this$0.isFinishing()) {
      this$0.showDialog(2);
    }
  }
  
  public void run()
  {
    Resources localResources = this$0.getResources();
    int i;
    int j;
    if (mError != null)
    {
      i = mError.getError();
      j = 1;
      if (i != 0) {
        break label49;
      }
      i = j;
    }
    for (;;)
    {
      if (i != 0) {
        AccountSelectionActivity.access$1000(this$0);
      }
      return;
      i = 0;
      break;
      label49:
      if (ConnectionError.isNetworkError(i))
      {
        boolean bool = false;
        if (i == 1)
        {
          i = 2131492962;
          bool = true;
        }
        for (;;)
        {
          AccountSelectionActivity.access$700(this$0, i);
          i = 0;
          AccountSelectionActivity.access$800(this$0, bool);
          break;
          i = 2131492961;
        }
      }
      AccountSelectionActivity.access$902(this$0, null);
      switch (i)
      {
      case 6: 
      default: 
        i = j;
        break;
      case 4: 
      case 5: 
        promptForCredentials();
        i = j;
        break;
      case 8: 
        AccountSelectionActivity.access$902(this$0, localResources.getString(2131492963));
        showConnectionOrServerErrors();
        i = j;
        break;
      case 7: 
        AccountSelectionActivity.access$902(this$0, localResources.getString(2131492964));
        showConnectionOrServerErrors();
        i = j;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountSelectionActivity.ConnectionErrorCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */