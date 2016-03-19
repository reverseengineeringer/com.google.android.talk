import android.os.Build.VERSION;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public final class hxr
{
  static final Set<hxq<?>> a = Collections.newSetFromMap(new WeakHashMap());
  
  public static void a()
  {
    
    if (Build.VERSION.SDK_INT < 14) {
      a(80);
    }
  }
  
  public static void a(int paramInt)
  {
    aal.w();
    new StringBuilder(28).append("Trimming memory: ").append(paramInt);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hxq)localIterator.next()).a(paramInt);
    }
  }
  
  static void a(hxq<?> paramhxq)
  {
    if (aal.v())
    {
      a.add(paramhxq);
      return;
    }
    aal.a(new hxs(paramhxq));
  }
}

/* Location:
 * Qualified Name:     hxr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */