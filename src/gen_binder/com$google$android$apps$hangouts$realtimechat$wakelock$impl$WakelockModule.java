package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import eep;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$realtimechat$wakelock$impl$WakelockModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(2);
      a.put(eep.a, Integer.valueOf(0));
      a.put(eep.b, Integer.valueOf(1));
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
      eep.a(paramilh);
      return;
    }
    eep.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.realtimechat.wakelock.impl.WakelockModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */