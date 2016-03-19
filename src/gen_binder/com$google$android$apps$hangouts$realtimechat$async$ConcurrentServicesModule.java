package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import edz;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$realtimechat$async$ConcurrentServicesModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(edz.a, Integer.valueOf(0));
      a.put(edz.b, Integer.valueOf(1));
      a.put(edz.c, Integer.valueOf(2));
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
      edz.a(paramilh);
      return;
    case 1: 
      edz.a(paramContext, paramilh);
      return;
    }
    edz.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.realtimechat.async.ConcurrentServicesModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */