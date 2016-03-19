package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import epp;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$statusmessage$impl$StatusMessageModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(2);
      a.put(epp.a, Integer.valueOf(0));
      a.put(epp.b, Integer.valueOf(1));
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
      epp.a(paramilh);
      return;
    }
    epp.a(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.statusmessage.impl.StatusMessageModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */