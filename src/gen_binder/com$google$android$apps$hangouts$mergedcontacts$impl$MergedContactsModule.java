package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import cui;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$mergedcontacts$impl$MergedContactsModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(4);
      a.put(cui.a, Integer.valueOf(0));
      a.put(cui.b, Integer.valueOf(1));
      a.put(cui.c, Integer.valueOf(2));
      a.put(cui.d, Integer.valueOf(3));
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
      cui.a(paramContext, paramilh);
      return;
    case 1: 
      cui.b(paramContext, paramilh);
      return;
    case 2: 
      cui.a(paramilh);
      return;
    }
    cui.b(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.mergedcontacts.impl.MergedContactsModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */