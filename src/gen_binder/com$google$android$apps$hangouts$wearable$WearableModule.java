package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import ffs;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$wearable$WearableModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(ffs.a, Integer.valueOf(0));
      a.put(ffs.b, Integer.valueOf(1));
      a.put(ffs.c, Integer.valueOf(2));
    }
    paramContext = (Integer)a.get(paramClass.getName());
    if (paramContext == null) {
      return;
    }
    switch (paramContext.intValue())
    {
    default: 
      return;
    case 0: 
      ffs.a(paramilh);
      return;
    case 1: 
      ffs.b(paramilh);
      return;
    }
    ffs.c(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.wearable.WearableModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */