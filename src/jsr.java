import android.app.Activity;
import java.lang.annotation.Annotation;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class jsr
{
  private final iog a;
  private final Activity b;
  private final Set<atn> c;
  private final jrc d;
  private final Map<String, kog> e;
  private Set<atn> f;
  private boolean g = false;
  
  jsr(Activity paramActivity, Set<atn> paramSet, jrc paramjrc, Map<String, kog> paramMap)
  {
    c = paramSet;
    b = paramActivity;
    if ((paramActivity instanceof iof)) {}
    for (a = ((iof)paramActivity).getLifecycle();; a = null)
    {
      d = paramjrc;
      e = paramMap;
      return;
    }
  }
  
  public void a()
  {
    if ((a != null) && (!g))
    {
      f = new HashSet();
      f.addAll(c);
      Object localObject1 = d;
      Object localObject2 = b;
      fii.b(localObject2 instanceof jrz, "Given class does not have a peer");
      localObject1 = ((jrc)localObject1).a(((jrz)localObject2).g()).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Annotation)((Iterator)localObject1).next();
        localObject2 = (kog)e.get(((Annotation)localObject2).annotationType().getName());
        if (localObject2 != null) {
          f.add(((kog)localObject2).a());
        }
      }
      localObject1 = f.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (atn)((Iterator)localObject1).next();
        a.a((ioz)localObject2);
      }
      g = true;
    }
  }
}

/* Location:
 * Qualified Name:     jsr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */