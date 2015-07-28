package com.google.android.talk;

import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.Bundle;
import java.io.IOException;

class AccountSelectionActivity$ConnectionErrorCallback$1
  implements AccountManagerCallback<Bundle>
{
  AccountSelectionActivity$ConnectionErrorCallback$1(AccountSelectionActivity.ConnectionErrorCallback paramConnectionErrorCallback) {}
  
  public void run(AccountManagerFuture<Bundle> paramAccountManagerFuture)
  {
    try
    {
      paramAccountManagerFuture = (Bundle)paramAccountManagerFuture.getResult();
      AccountSelectionActivity.log("AccountManager.get() callback - result=" + paramAccountManagerFuture);
      AccountLoginUtils.signIn(access$200this$1.this$0).username, AccountSelectionActivity.access$1100(this$1.this$0), this$1.this$0);
      return;
    }
    catch (OperationCanceledException paramAccountManagerFuture)
    {
      AccountSelectionActivity.log("promptForCredentials(): User canceled, exit");
      this$1.this$0.finish();
      return;
    }
    catch (IOException paramAccountManagerFuture)
    {
      AccountSelectionActivity.log("promptForCredentials(): IO Error, exit");
      this$1.this$0.finish();
      return;
    }
    catch (AuthenticatorException paramAccountManagerFuture)
    {
      AccountSelectionActivity.log("promptForCredentials(): Not authenticated");
      this$1.this$0.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountSelectionActivity.ConnectionErrorCallback.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */