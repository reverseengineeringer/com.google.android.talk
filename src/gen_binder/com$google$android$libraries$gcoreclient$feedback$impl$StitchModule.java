package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import gzc;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$gcoreclient$feedback$impl$StitchModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(gzc.a, Integer.valueOf(0));
      a.put(gzc.b, Integer.valueOf(1));
      a.put(gzc.c, Integer.valueOf(2));
      a.put(gzc.d, Integer.valueOf(3));
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
      gzc.a(paramilh);
      return;
    case 1: 
      gzc.b(paramilh);
      return;
    case 2: 
      gzc.c(paramilh);
      return;
    }
    gzc.d(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.gcoreclient.feedback.impl.StitchModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */