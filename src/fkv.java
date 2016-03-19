import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;

public final class fkv
  extends fkt
{
  int a;
  private Account b;
  private Context c;
  
  public static Account a(fks paramfks)
  {
    Account localAccount = null;
    long l;
    if (paramfks != null) {
      l = Binder.clearCallingIdentity();
    }
    try
    {
      localAccount = paramfks.a();
      Binder.restoreCallingIdentity(l);
      return localAccount;
    }
    catch (RemoteException paramfks)
    {
      paramfks = paramfks;
      Binder.restoreCallingIdentity(l);
      return null;
    }
    finally
    {
      paramfks = finally;
      Binder.restoreCallingIdentity(l);
      throw paramfks;
    }
  }
  
  public Account a()
  {
    int i = Binder.getCallingUid();
    if (i == a) {
      return b;
    }
    if (fhr.a(c, i))
    {
      a = i;
      return b;
    }
    throw new SecurityException("Caller is not GooglePlayServices");
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof fkv)) {
      return false;
    }
    return b.equals(b);
  }
}

/* Location:
 * Qualified Name:     fkv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */