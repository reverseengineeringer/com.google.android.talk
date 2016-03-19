package gen_binder;

import android.content.Context;
import cnp;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$hangout$volumecircle$impl$VolumeCircleModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(cnp.a, Integer.valueOf(0));
      a.put(cnp.b, Integer.valueOf(1));
      a.put(cnp.c, Integer.valueOf(2));
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
      cnp.a(paramilh);
      return;
    case 1: 
      cnp.b(paramilh);
      return;
    }
    cnp.a(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.hangout.volumecircle.impl.VolumeCircleModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */