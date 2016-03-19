package gen_binder;

import android.content.Context;
import beg;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$content$AccountUpgradeModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(beg.a, Integer.valueOf(0));
      a.put(beg.b, Integer.valueOf(1));
      a.put(beg.c, Integer.valueOf(2));
      a.put(beg.d, Integer.valueOf(3));
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
      beg.a(paramilh);
      return;
    case 1: 
      beg.b(paramilh);
      return;
    case 2: 
      beg.a(paramContext, paramilh);
      return;
    }
    beg.b(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.content.AccountUpgradeModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */