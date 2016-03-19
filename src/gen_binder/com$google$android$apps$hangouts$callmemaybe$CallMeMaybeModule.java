package gen_binder;

import android.content.Context;
import bbp;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$callmemaybe$CallMeMaybeModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(5);
      a.put(bbp.a, Integer.valueOf(0));
      a.put(bbp.b, Integer.valueOf(1));
      a.put(bbp.c, Integer.valueOf(2));
      a.put(bbp.d, Integer.valueOf(3));
      a.put(bbp.e, Integer.valueOf(4));
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
      bbp.a(paramContext, paramilh);
      return;
    case 1: 
      bbp.a(paramilh);
      return;
    case 2: 
      bbp.b(paramContext, paramilh);
      return;
    case 3: 
      bbp.c(paramContext, paramilh);
      return;
    }
    bbp.d(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.callmemaybe.CallMeMaybeModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */