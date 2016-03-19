package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import hyn;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$social$images$ImageResourceModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(hyn.a, Integer.valueOf(0));
      a.put(hyn.b, Integer.valueOf(1));
      a.put(hyn.c, Integer.valueOf(2));
      a.put(hyn.d, Integer.valueOf(3));
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
      hyn.a(paramContext, paramilh);
      return;
    case 1: 
      hyn.a(paramilh);
      return;
    case 2: 
      hyn.b(paramilh);
      return;
    }
    hyn.c(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.social.images.ImageResourceModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */