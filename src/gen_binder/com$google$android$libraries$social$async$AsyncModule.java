package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import htt;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$social$async$AsyncModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(5);
      a.put(htt.a, Integer.valueOf(0));
      a.put(htt.b, Integer.valueOf(1));
      a.put(htt.c, Integer.valueOf(2));
      a.put(htt.d, Integer.valueOf(3));
      a.put(htt.e, Integer.valueOf(4));
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
      htt.a(paramilh);
      return;
    case 1: 
      htt.a(paramContext, paramilh);
      return;
    case 2: 
      htt.b(paramContext, paramilh);
      return;
    case 3: 
      htt.b(paramilh);
      return;
    }
    htt.c(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.social.async.AsyncModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */