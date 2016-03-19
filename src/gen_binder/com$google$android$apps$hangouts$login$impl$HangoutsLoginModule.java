package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import csz;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$login$impl$HangoutsLoginModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(8);
      a.put(csz.a, Integer.valueOf(0));
      a.put(csz.b, Integer.valueOf(1));
      a.put(csz.c, Integer.valueOf(2));
      a.put(csz.d, Integer.valueOf(3));
      a.put(csz.e, Integer.valueOf(4));
      a.put(csz.f, Integer.valueOf(5));
      a.put(csz.g, Integer.valueOf(6));
      a.put(csz.h, Integer.valueOf(7));
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
      csz.a(paramilh);
      return;
    case 1: 
      csz.a(paramContext, paramilh);
      return;
    case 2: 
      csz.b(paramContext, paramilh);
      return;
    case 3: 
      csz.b(paramilh);
      return;
    case 4: 
      csz.c(paramContext, paramilh);
      return;
    case 5: 
      csz.c(paramilh);
      return;
    case 6: 
      csz.d(paramilh);
      return;
    }
    csz.e(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.login.impl.HangoutsLoginModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */