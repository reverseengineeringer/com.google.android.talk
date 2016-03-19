import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import java.util.ArrayList;
import java.util.List;

final class hrp
  implements hqk
{
  private final AccountManager a;
  
  hrp(Context paramContext)
  {
    a = AccountManager.get(paramContext);
  }
  
  public List<hqi> a()
  {
    Account[] arrayOfAccount = a.getAccountsByType("com.google");
    ArrayList localArrayList = new ArrayList(arrayOfAccount.length);
    int i = 0;
    while (i < arrayOfAccount.length)
    {
      localArrayList.add(new hqj(name, i).b());
      i += 1;
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     hrp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */