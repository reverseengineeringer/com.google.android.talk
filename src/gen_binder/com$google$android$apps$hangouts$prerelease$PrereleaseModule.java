package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$prerelease$PrereleaseModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null) {
      a = new HashMap(0);
    }
    paramContext = (Integer)a.get(paramClass.getName());
    if (paramContext == null) {
      return;
    }
    paramContext.intValue();
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.prerelease.PrereleaseModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */