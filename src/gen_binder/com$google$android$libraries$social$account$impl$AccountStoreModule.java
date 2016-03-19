package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import hrk;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$libraries$social$account$impl$AccountStoreModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(6);
      a.put(hrk.a, Integer.valueOf(0));
      a.put(hrk.b, Integer.valueOf(1));
      a.put(hrk.c, Integer.valueOf(2));
      a.put(hrk.d, Integer.valueOf(3));
      a.put(hrk.e, Integer.valueOf(4));
      a.put(hrk.f, Integer.valueOf(5));
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
      hrk.a(paramilh);
      return;
    case 1: 
      hrk.a(paramContext, paramilh);
      return;
    case 2: 
      hrk.b(paramContext, paramilh);
      return;
    case 3: 
      hrk.c(paramContext, paramilh);
      return;
    case 4: 
      hrk.b(paramilh);
      return;
    }
    hrk.c(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.libraries.social.account.impl.AccountStoreModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */