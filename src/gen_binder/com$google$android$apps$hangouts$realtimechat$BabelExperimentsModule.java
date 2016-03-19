package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import dvr;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$realtimechat$BabelExperimentsModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(dvr.a, Integer.valueOf(0));
      a.put(dvr.b, Integer.valueOf(1));
      a.put(dvr.c, Integer.valueOf(2));
      a.put(dvr.d, Integer.valueOf(3));
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
      dvr.a(paramContext, paramilh);
      return;
    case 1: 
      dvr.b(paramContext, paramilh);
      return;
    case 2: 
      dvr.c(paramContext, paramilh);
      return;
    }
    dvr.d(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.realtimechat.BabelExperimentsModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */