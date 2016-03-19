import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ezq
{
  static final boolean a;
  static final ezs b;
  static Map<String, ezv> c;
  static Runnable d;
  private static final boolean e;
  
  static
  {
    imx localimx = ezi.t;
    e = false;
    localimx = ezi.x;
    a = false;
    if ((Build.VERSION.SDK_INT >= 18) && (e)) {}
    for (b = new ezt();; b = new ezu())
    {
      c = new HashMap(20);
      d = null;
      return;
    }
  }
  
  static ezv a(String paramString)
  {
    synchronized (c)
    {
      ezv localezv2 = (ezv)c.get(paramString);
      ezv localezv1 = localezv2;
      if (localezv2 == null)
      {
        localezv1 = new ezv(paramString);
        c.put(paramString, localezv1);
      }
      return localezv1;
    }
  }
  
  public static Map<String, Long> a()
  {
    Object localObject3;
    synchronized (c)
    {
      d = null;
      ArrayList localArrayList = new ArrayList(c.size());
      localObject3 = c.keySet().iterator();
      if (((Iterator)localObject3).hasNext()) {
        localArrayList.add(a((String)((Iterator)localObject3).next()));
      }
    }
    ??? = new HashMap();
    Iterator localIterator = ((List)localObject2).iterator();
    while (localIterator.hasNext())
    {
      localObject3 = (ezv)localIterator.next();
      if (((ezv)localObject3).a())
      {
        localObject3 = ((ezv)localObject3).b();
        ((Map)???).put(a, Long.valueOf(b));
      }
    }
    if (a) {
      return (Map<String, Long>)???;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     ezq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */