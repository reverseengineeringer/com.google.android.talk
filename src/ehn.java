import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ehn
{
  public static Object a = new Object();
  public static String b;
  private static Map<String, eho> c;
  private static List<eho> d;
  
  public static eho a(String paramString)
  {
    synchronized (a)
    {
      if (c == null) {
        c();
      }
      paramString = (eho)c.get(paramString);
      return paramString;
    }
  }
  
  public static void a()
  {
    synchronized (a)
    {
      if (c == null) {
        c();
      }
      Object localObject2 = new ArrayList(c.values());
      d = (List)localObject2;
      Collections.sort((List)localObject2, eho.a);
      if (!TextUtils.isEmpty(b))
      {
        localObject2 = (eho)c.get(b);
        if (localObject2 != null) {
          d.add(0, localObject2);
        }
      }
      return;
    }
  }
  
  public static List<eho> b()
  {
    synchronized (a)
    {
      if (d == null) {
        a();
      }
      List localList = d;
      return localList;
    }
  }
  
  private static void c()
  {
    synchronized (a)
    {
      if (c != null) {
        return;
      }
      c = new hq();
      hof localhof = hof.b();
      Iterator localIterator = localhof.a().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        eho localeho = new eho(str, Integer.toString(localhof.e(str)));
        c.put(str, localeho);
      }
    }
  }
}

/* Location:
 * Qualified Name:     ehn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */