import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

class cor
  implements con, iaw
{
  private final Context a;
  private final SharedPreferences b;
  
  cor(Context paramContext)
  {
    a = paramContext;
    b = paramContext.getSharedPreferences("interaction_prefs", 0);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    String str = String.valueOf(b(paramInt1));
    str = String.valueOf(str).length() + 29 + str + "logged_impression_" + paramInt2;
    if (!b.getBoolean(str, false))
    {
      ((hba)ilh.a(a, hba.class)).a(paramInt1).a(paramInt2).d();
      b.edit().putBoolean(str, true).apply();
    }
  }
  
  private static String b(int paramInt)
  {
    return 20 + "account_" + paramInt + "_";
  }
  
  private static String c(int paramInt)
  {
    return String.valueOf(b(paramInt)).concat("login_time");
  }
  
  public void a(int paramInt)
  {
    Object localObject = ((hpz)ilh.a(a, hpz.class)).a(paramInt);
    if (((hqb)localObject).b()) {
      if (!((hqb)localObject).d("sms_only"))
      {
        localObject = b.edit();
        ((SharedPreferences.Editor)localObject).remove(c(paramInt));
        str1 = b(paramInt);
        localIterator = b.getAll().keySet().iterator();
        while (localIterator.hasNext())
        {
          str2 = (String)localIterator.next();
          if (str2.startsWith(str1)) {
            ((SharedPreferences.Editor)localObject).remove(str2);
          }
        }
        ((SharedPreferences.Editor)localObject).apply();
      }
    }
    while ((!((hqb)localObject).a()) || (b.contains(c(paramInt))))
    {
      String str1;
      Iterator localIterator;
      String str2;
      return;
    }
    localObject = (hvq)ilh.a(a, hvq.class);
    b.edit().putLong(c(paramInt), ((hvq)localObject).a()).apply();
    a(paramInt, 2590);
  }
  
  public void a(int paramInt, coo paramcoo)
  {
    long l1 = b.getLong(c(paramInt), 0L);
    long l2 = ((hvq)ilh.a(a, hvq.class)).a();
    if (l2 < TimeUnit.MILLISECONDS.convert(1L, TimeUnit.DAYS) + l1)
    {
      a(paramInt, 2591);
      a(paramInt, d);
    }
    if (l2 < l1 + TimeUnit.MILLISECONDS.convert(7L, TimeUnit.DAYS))
    {
      a(paramInt, 2595);
      a(paramInt, e);
    }
  }
}

/* Location:
 * Qualified Name:     cor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */