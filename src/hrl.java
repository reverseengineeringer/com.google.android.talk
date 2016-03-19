import android.accounts.AccountManager;
import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class hrl
  implements hql
{
  private final AccountManager a;
  private final List<hqk> b;
  
  hrl(Context paramContext)
  {
    a = AccountManager.get(paramContext);
    b = ilh.c(paramContext, hqk.class);
  }
  
  public hqi a(String paramString)
  {
    hqi[] arrayOfhqi = a();
    int j = arrayOfhqi.length;
    int i = 0;
    while (i < j)
    {
      hqi localhqi = arrayOfhqi[i];
      if (localhqi.a().equals(paramString)) {
        return localhqi;
      }
      i += 1;
    }
    return null;
  }
  
  public <T extends av,  extends hqm> void a(T paramT)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("allowSkip", false);
    a.addAccount("com.google", "webupdates", null, localBundle, null, new hrm(this, paramT), null);
  }
  
  public hqi[] a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll(((hqk)localIterator.next()).a());
    }
    return (hqi[])localArrayList.toArray(new hqi[localArrayList.size()]);
  }
}

/* Location:
 * Qualified Name:     hrl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */