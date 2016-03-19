package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import dmg;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$promo$impl$PromoFrameworkModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(dmg.a, Integer.valueOf(0));
      a.put(dmg.b, Integer.valueOf(1));
      a.put(dmg.c, Integer.valueOf(2));
      a.put(dmg.d, Integer.valueOf(3));
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
      dmg.a(paramContext, paramilh);
      return;
    case 1: 
      dmg.b(paramContext, paramilh);
      return;
    case 2: 
      dmg.a(paramilh);
      return;
    }
    dmg.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.promo.impl.PromoFrameworkModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */