package gen_binder;

import android.content.Context;
import cll;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$hangout$incomingring$v1$IncomingRingActivityProviderModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(cll.a, Integer.valueOf(0));
      a.put(cll.b, Integer.valueOf(1));
      a.put(cll.c, Integer.valueOf(2));
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
      cll.a(paramContext, paramilh);
      return;
    case 1: 
      cll.a(paramilh);
      return;
    }
    cll.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.hangout.incomingring.v1.IncomingRingActivityProviderModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */