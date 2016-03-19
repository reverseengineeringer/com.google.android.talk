package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import dcb;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$peoplelistv2$impl$PeopleListV2Module
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(6);
      a.put(dcb.a, Integer.valueOf(0));
      a.put(dcb.b, Integer.valueOf(1));
      a.put(dcb.c, Integer.valueOf(2));
      a.put(dcb.d, Integer.valueOf(3));
      a.put(dcb.e, Integer.valueOf(4));
      a.put(dcb.f, Integer.valueOf(5));
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
      dcb.a(paramilh);
      return;
    case 1: 
      dcb.b(paramilh);
      return;
    case 2: 
      dcb.c(paramilh);
      return;
    case 3: 
      dcb.d(paramilh);
      return;
    case 4: 
      dcb.e(paramilh);
      return;
    }
    dcb.f(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.peoplelistv2.impl.PeopleListV2Module
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */