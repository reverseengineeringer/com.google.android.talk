import android.accounts.Account;
import android.os.AsyncTask;
import android.os.RemoteException;
import android.util.Log;

final class gmc
  extends AsyncTask<Void, Void, Account[]>
{
  gmc(gma paramgma) {}
  
  private Account[] a()
  {
    if (isCancelled()) {
      return null;
    }
    try
    {
      Account[] arrayOfAccount = fgk.c(a.a, "com.google");
      return arrayOfAccount;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("AccountOrderingHelper", "Failed to get accounts", localRemoteException);
      return null;
    }
    catch (fhp localfhp)
    {
      for (;;) {}
    }
    catch (fhq localfhq)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     gmc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */