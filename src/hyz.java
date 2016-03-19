import android.graphics.Bitmap;
import java.util.HashMap;
import java.util.Map;

final class hyz
{
  private final Map<hyt, hza> a = new HashMap();
  private final hza b = new hza(null);
  
  private static void a(hza paramhza)
  {
    a.b = b;
    b.a = a;
  }
  
  public Bitmap a()
  {
    for (hza localhza = b.b; localhza != b; localhza = b)
    {
      if (localhza.a() > 0) {
        return localhza.b();
      }
      a.remove(c);
      a(localhza);
    }
    return null;
  }
  
  public Bitmap a(hyt paramhyt)
  {
    hza localhza = (hza)a.get(paramhyt);
    if (localhza == null)
    {
      localhza = new hza(paramhyt);
      a.put(paramhyt, localhza);
    }
    for (paramhyt = localhza;; paramhyt = localhza)
    {
      b = b;
      a = b.a;
      a.b = paramhyt;
      b.a = paramhyt;
      return paramhyt.b();
      a(localhza);
    }
  }
  
  public void a(hyt paramhyt, Bitmap paramBitmap)
  {
    hza localhza2 = (hza)a.get(paramhyt);
    hza localhza1 = localhza2;
    if (localhza2 == null)
    {
      localhza1 = new hza(paramhyt);
      a.put(paramhyt, localhza1);
      b = b.b;
      a = b;
      b.a = localhza1;
      b.b = localhza1;
    }
    localhza1.a(paramBitmap);
  }
  
  public String toString()
  {
    Object localObject2 = b.a;
    String str = "GroupedLinkedMap(";
    Object localObject1 = str;
    if (!a.isEmpty())
    {
      for (localObject1 = localObject2; localObject1 != b; localObject1 = a)
      {
        str = String.valueOf(str);
        localObject2 = String.valueOf(c);
        int i = ((hza)localObject1).a();
        str = String.valueOf(str).length() + 16 + String.valueOf(localObject2).length() + str + "{" + (String)localObject2 + ", " + i + "} ";
      }
      localObject1 = str.substring(0, str.length() - 1);
    }
    return String.valueOf(localObject1).concat(")");
  }
}

/* Location:
 * Qualified Name:     hyz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */