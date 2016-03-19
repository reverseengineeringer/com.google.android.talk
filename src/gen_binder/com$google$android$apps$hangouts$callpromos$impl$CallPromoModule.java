package gen_binder;

import android.content.Context;
import bca;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$callpromos$impl$CallPromoModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(bca.a, Integer.valueOf(0));
      a.put(bca.b, Integer.valueOf(1));
      a.put(bca.c, Integer.valueOf(2));
      a.put(bca.d, Integer.valueOf(3));
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
      bca.a(paramContext, paramilh);
      return;
    case 1: 
      bca.b(paramContext, paramilh);
      return;
    case 2: 
      bca.c(paramContext, paramilh);
      return;
    }
    bca.a(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.callpromos.impl.CallPromoModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */