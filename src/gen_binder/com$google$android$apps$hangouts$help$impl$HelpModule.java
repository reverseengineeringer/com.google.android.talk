package gen_binder;

import android.content.Context;
import cog;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$help$impl$HelpModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(cog.a, Integer.valueOf(0));
      a.put(cog.b, Integer.valueOf(1));
      a.put(cog.c, Integer.valueOf(2));
      a.put(cog.d, Integer.valueOf(3));
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
      cog.a(paramilh);
      return;
    case 1: 
      cog.b(paramilh);
      return;
    case 2: 
      cog.a(paramContext, paramilh);
      return;
    }
    cog.c(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.help.impl.HelpModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */