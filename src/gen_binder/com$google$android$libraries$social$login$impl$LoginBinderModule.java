package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import ibf;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$social$login$impl$LoginBinderModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(7);
      a.put(ibf.a, Integer.valueOf(0));
      a.put(ibf.b, Integer.valueOf(1));
      a.put(ibf.c, Integer.valueOf(2));
      a.put(ibf.d, Integer.valueOf(3));
      a.put(ibf.e, Integer.valueOf(4));
      a.put(ibf.f, Integer.valueOf(5));
      a.put(ibf.g, Integer.valueOf(6));
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
      ibf.a(paramContext, paramilh);
      return;
    case 1: 
      ibf.b(paramContext, paramilh);
      return;
    case 2: 
      ibf.c(paramContext, paramilh);
      return;
    case 3: 
      ibf.d(paramContext, paramilh);
      return;
    case 4: 
      ibf.e(paramContext, paramilh);
      return;
    case 5: 
      ibf.f(paramContext, paramilh);
      return;
    }
    ibf.g(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.social.login.impl.LoginBinderModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */