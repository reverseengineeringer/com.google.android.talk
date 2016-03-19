package gen_binder;

import android.content.Context;
import cka;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$hangout$activity$v1$CallHandlerProviderModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(cka.a, Integer.valueOf(0));
      a.put(cka.b, Integer.valueOf(1));
      a.put(cka.c, Integer.valueOf(2));
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
      cka.a(paramilh);
      return;
    case 1: 
      cka.a(paramContext, paramilh);
      return;
    }
    cka.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.hangout.activity.v1.CallHandlerProviderModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */