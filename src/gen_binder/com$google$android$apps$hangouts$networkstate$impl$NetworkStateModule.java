package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import cwr;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$networkstate$impl$NetworkStateModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(cwr.a, Integer.valueOf(0));
      a.put(cwr.b, Integer.valueOf(1));
      a.put(cwr.c, Integer.valueOf(2));
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
      cwr.a(paramContext, paramilh);
      return;
    case 1: 
      cwr.b(paramContext, paramilh);
      return;
    }
    cwr.c(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.networkstate.impl.NetworkStateModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */