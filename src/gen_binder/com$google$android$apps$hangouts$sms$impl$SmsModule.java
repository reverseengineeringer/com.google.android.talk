package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import eoq;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$sms$impl$SmsModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(eoq.a, Integer.valueOf(0));
      a.put(eoq.b, Integer.valueOf(1));
      a.put(eoq.c, Integer.valueOf(2));
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
      eoq.a(paramContext, paramilh);
      return;
    case 1: 
      eoq.b(paramContext, paramilh);
      return;
    }
    eoq.c(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.sms.impl.SmsModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */