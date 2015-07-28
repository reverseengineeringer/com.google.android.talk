package com.google.android.talk;

import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.Bundle;
import java.io.IOException;

class AddAccountActivity$1
  implements AccountManagerCallback<Bundle>
{
  AddAccountActivity$1(AddAccountActivity paramAddAccountActivity) {}
  
  public void run(final AccountManagerFuture<Bundle> paramAccountManagerFuture)
  {
    Object localObject = null;
    try
    {
      paramAccountManagerFuture = (Bundle)paramAccountManagerFuture.getResult();
      this$0.runOnUiThread(new Runnable()
      {
        public void run()
        {
          if (this$0.isFinishing()) {
            return;
          }
          if (paramAccountManagerFuture != null)
          {
            AddAccountActivity.access$002(this$0, paramAccountManagerFuture.getString("authAccount"));
            AddAccountActivity.access$100(this$0).addAccountListChangedListener(this$0);
            return;
          }
          this$0.finish();
        }
      });
      return;
    }
    catch (IOException paramAccountManagerFuture)
    {
      for (;;)
      {
        paramAccountManagerFuture = (AccountManagerFuture<Bundle>)localObject;
      }
    }
    catch (AuthenticatorException paramAccountManagerFuture)
    {
      for (;;)
      {
        paramAccountManagerFuture = (AccountManagerFuture<Bundle>)localObject;
      }
    }
    catch (OperationCanceledException paramAccountManagerFuture)
    {
      for (;;)
      {
        paramAccountManagerFuture = (AccountManagerFuture<Bundle>)localObject;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AddAccountActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */