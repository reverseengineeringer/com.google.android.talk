package gen_binder;

import android.content.Context;
import ayb;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$app$impl$AppBinderModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(7);
      a.put(ayb.a, Integer.valueOf(0));
      a.put(ayb.b, Integer.valueOf(1));
      a.put(ayb.c, Integer.valueOf(2));
      a.put(ayb.d, Integer.valueOf(3));
      a.put(ayb.e, Integer.valueOf(4));
      a.put(ayb.f, Integer.valueOf(5));
      a.put(ayb.g, Integer.valueOf(6));
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
      ayb.a(paramContext, paramilh);
      return;
    case 1: 
      ayb.b(paramContext, paramilh);
      return;
    case 2: 
      ayb.a(paramilh);
      return;
    case 3: 
      ayb.c(paramContext, paramilh);
      return;
    case 4: 
      ayb.d(paramContext, paramilh);
      return;
    case 5: 
      ayb.b(paramilh);
      return;
    }
    ayb.e(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.app.impl.AppBinderModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */