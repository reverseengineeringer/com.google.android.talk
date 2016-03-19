package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import gzs;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$gcoreclient$gcm$impl$StitchModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(7);
      a.put(gzs.a, Integer.valueOf(0));
      a.put(gzs.b, Integer.valueOf(1));
      a.put(gzs.c, Integer.valueOf(2));
      a.put(gzs.d, Integer.valueOf(3));
      a.put(gzs.e, Integer.valueOf(4));
      a.put(gzs.f, Integer.valueOf(5));
      a.put(gzs.g, Integer.valueOf(6));
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
      gzs.a(paramContext, paramilh);
      return;
    case 1: 
      gzs.a(paramilh);
      return;
    case 2: 
      gzs.b(paramilh);
      return;
    case 3: 
      gzs.b(paramContext, paramilh);
      return;
    case 4: 
      gzs.c(paramilh);
      return;
    case 5: 
      gzs.c(paramContext, paramilh);
      return;
    }
    gzs.d(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.gcoreclient.gcm.impl.StitchModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */