package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import cpr;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$invites$happystatepromo$impl$HappyStatePromoModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(cpr.a, Integer.valueOf(0));
      a.put(cpr.b, Integer.valueOf(1));
      a.put(cpr.c, Integer.valueOf(2));
      a.put(cpr.d, Integer.valueOf(3));
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
      cpr.a(paramContext, paramilh);
      return;
    case 1: 
      cpr.a(paramilh);
      return;
    case 2: 
      cpr.b(paramContext, paramilh);
      return;
    }
    cpr.c(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.invites.happystatepromo.impl.HappyStatePromoModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */