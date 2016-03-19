import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import java.util.concurrent.TimeUnit;

class gwo
  implements gwk
{
  private static final long b = TimeUnit.SECONDS.toMillis(2L);
  public final Context a;
  
  public gwo(Context paramContext)
  {
    a = paramContext;
  }
  
  public String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = fgk.a(a, paramString1, paramString2);
      return paramString1;
    }
    catch (fgl paramString1)
    {
      throw new gwl(paramString1.a(), paramString1.getMessage(), paramString1.b(), paramString1);
    }
    catch (fgm paramString1)
    {
      throw new gwm(paramString1.getMessage(), paramString1.b());
    }
    catch (fgj paramString1)
    {
      throw new gwj(paramString1);
    }
  }
  
  public Account[] a(String paramString)
  {
    return AccountManager.get(a).getAccountsByType(paramString);
  }
}

/* Location:
 * Qualified Name:     gwo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */