package gen_binder;

import android.content.Context;
import cmd;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$hangout$knocking$impl$KnockingModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(cmd.a, Integer.valueOf(0));
      a.put(cmd.b, Integer.valueOf(1));
      a.put(cmd.c, Integer.valueOf(2));
      a.put(cmd.d, Integer.valueOf(3));
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
      cmd.a(paramContext, paramilh);
      return;
    case 1: 
      cmd.b(paramContext, paramilh);
      return;
    case 2: 
      cmd.a(paramilh);
      return;
    }
    cmd.c(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.hangout.knocking.impl.KnockingModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */