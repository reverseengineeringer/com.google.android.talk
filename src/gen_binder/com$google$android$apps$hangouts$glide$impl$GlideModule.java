package gen_binder;

import android.content.Context;
import ceo;
import com.google.android.apps.common.proguard.UsedByReflection;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$glide$impl$GlideModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(6);
      a.put(ceo.a, Integer.valueOf(0));
      a.put(ceo.b, Integer.valueOf(1));
      a.put(ceo.c, Integer.valueOf(2));
      a.put(ceo.d, Integer.valueOf(3));
      a.put(ceo.e, Integer.valueOf(4));
      a.put(ceo.f, Integer.valueOf(5));
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
      ceo.a(paramilh);
      return;
    case 1: 
      ceo.a(paramContext, paramilh);
      return;
    case 2: 
      ceo.b(paramContext, paramilh);
      return;
    case 3: 
      ceo.b(paramilh);
      return;
    case 4: 
      ceo.c(paramContext, paramilh);
      return;
    }
    ceo.d(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.glide.impl.GlideModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */