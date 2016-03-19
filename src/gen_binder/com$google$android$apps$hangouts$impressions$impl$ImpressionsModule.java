package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import coq;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$impressions$impl$ImpressionsModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(coq.a, Integer.valueOf(0));
      a.put(coq.b, Integer.valueOf(1));
      a.put(coq.c, Integer.valueOf(2));
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
      coq.a(paramContext, paramilh);
      return;
    case 1: 
      coq.b(paramContext, paramilh);
      return;
    }
    coq.c(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.impressions.impl.ImpressionsModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */