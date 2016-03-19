package gen_binder;

import android.content.Context;
import bag;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$callerid$impl$CallerIdModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(10);
      a.put(bag.a, Integer.valueOf(0));
      a.put(bag.b, Integer.valueOf(1));
      a.put(bag.c, Integer.valueOf(2));
      a.put(bag.d, Integer.valueOf(3));
      a.put(bag.e, Integer.valueOf(4));
      a.put(bag.f, Integer.valueOf(5));
      a.put(bag.g, Integer.valueOf(6));
      a.put(bag.h, Integer.valueOf(7));
      a.put(bag.i, Integer.valueOf(8));
      a.put(bag.j, Integer.valueOf(9));
    }
    paramClass = (Integer)a.get(paramClass.getName());
    if (paramClass == null) {
      return;
    }
    switch (paramClass.intValue())
    {
    default: 
      return;
    case 0: 
      bag.a(paramContext, paramilh);
      return;
    case 1: 
      bag.b(paramContext, paramilh);
      return;
    case 2: 
      bag.c(paramContext, paramilh);
      return;
    case 3: 
      bag.d(paramContext, paramilh);
      return;
    case 4: 
      bag.e(paramContext, paramilh);
      return;
    case 5: 
      bag.f(paramContext, paramilh);
      return;
    case 6: 
      bag.a(paramilh);
      return;
    case 7: 
      bag.g(paramContext, paramilh);
      return;
    case 8: 
      bag.h(paramContext, paramilh);
      return;
    }
    bag.i(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.callerid.impl.CallerIdModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */