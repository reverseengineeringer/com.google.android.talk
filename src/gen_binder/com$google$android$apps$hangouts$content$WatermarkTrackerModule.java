package gen_binder;

import android.content.Context;
import bja;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$content$WatermarkTrackerModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(1);
      a.put(bja.a, Integer.valueOf(0));
    }
    paramContext = (Integer)a.get(paramClass.getName());
    if (paramContext == null) {
      return;
    }
    switch (paramContext.intValue())
    {
    default: 
      return;
    }
    bja.a(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.content.WatermarkTrackerModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */