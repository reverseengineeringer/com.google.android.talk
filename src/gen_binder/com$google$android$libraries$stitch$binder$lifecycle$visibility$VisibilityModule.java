package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import imr;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$stitch$binder$lifecycle$visibility$VisibilityModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(2);
      a.put(imr.a, Integer.valueOf(0));
      a.put(imr.b, Integer.valueOf(1));
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
      imr.a(paramilh);
      return;
    }
    imr.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.stitch.binder.lifecycle.visibility.VisibilityModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */