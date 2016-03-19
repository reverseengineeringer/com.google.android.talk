package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import gxv;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$gcoreclient$common$api$impl$StitchModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(gxv.a, Integer.valueOf(0));
      a.put(gxv.b, Integer.valueOf(1));
      a.put(gxv.c, Integer.valueOf(2));
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
      gxv.a(paramContext, paramilh);
      return;
    case 1: 
      gxv.a(paramilh);
      return;
    }
    gxv.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.gcoreclient.common.api.impl.StitchModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */