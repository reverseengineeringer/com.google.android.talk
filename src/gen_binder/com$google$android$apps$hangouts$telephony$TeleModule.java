package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import esm;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$telephony$TeleModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(10);
      a.put(esm.a, Integer.valueOf(0));
      a.put(esm.b, Integer.valueOf(1));
      a.put(esm.c, Integer.valueOf(2));
      a.put(esm.d, Integer.valueOf(3));
      a.put(esm.e, Integer.valueOf(4));
      a.put(esm.f, Integer.valueOf(5));
      a.put(esm.g, Integer.valueOf(6));
      a.put(esm.h, Integer.valueOf(7));
      a.put(esm.i, Integer.valueOf(8));
      a.put(esm.j, Integer.valueOf(9));
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
      esm.a(paramilh);
      return;
    case 1: 
      esm.a(paramContext, paramilh);
      return;
    case 2: 
      esm.b(paramContext, paramilh);
      return;
    case 3: 
      esm.b(paramilh);
      return;
    case 4: 
      esm.c(paramContext, paramilh);
      return;
    case 5: 
      esm.c(paramilh);
      return;
    case 6: 
      esm.d(paramContext, paramilh);
      return;
    case 7: 
      esm.d(paramilh);
      return;
    case 8: 
      esm.e(paramContext, paramilh);
      return;
    }
    esm.e(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.telephony.TeleModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */