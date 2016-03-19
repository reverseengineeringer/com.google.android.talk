package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import efj;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$rpc$HangoutsRpcModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(5);
      a.put(efj.a, Integer.valueOf(0));
      a.put(efj.b, Integer.valueOf(1));
      a.put(efj.c, Integer.valueOf(2));
      a.put(efj.d, Integer.valueOf(3));
      a.put(efj.e, Integer.valueOf(4));
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
      efj.a(paramContext, paramilh);
      return;
    case 1: 
      efj.b(paramContext, paramilh);
      return;
    case 2: 
      efj.c(paramContext, paramilh);
      return;
    case 3: 
      efj.a(paramilh);
      return;
    }
    efj.d(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.rpc.HangoutsRpcModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */