import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.content.Intent;
import android.os.Bundle;

final class hrm
  implements AccountManagerCallback<Bundle>
{
  hrm(hrl paramhrl, av paramav) {}
  
  public void run(AccountManagerFuture<Bundle> paramAccountManagerFuture)
  {
    try
    {
      if (a.isAdded())
      {
        Intent localIntent = (Intent)((Bundle)paramAccountManagerFuture.getResult()).getParcelable("intent");
        hrl localhrl = b;
        bg localbg = a.getChildFragmentManager();
        img localimg = (img)localbg.a("new.account.launcher");
        paramAccountManagerFuture = localimg;
        if (localimg == null)
        {
          paramAccountManagerFuture = new img((byte)0);
          localbg.a().a(paramAccountManagerFuture, "new.account.launcher").c();
        }
        aal.a(new hrn(localhrl, paramAccountManagerFuture, localIntent));
      }
      return;
    }
    catch (Exception paramAccountManagerFuture)
    {
      throw new IllegalStateException(paramAccountManagerFuture);
    }
  }
}

/* Location:
 * Qualified Name:     hrm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */