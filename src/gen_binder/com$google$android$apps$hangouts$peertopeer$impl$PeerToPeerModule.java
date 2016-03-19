package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import czk;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$peertopeer$impl$PeerToPeerModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(5);
      a.put(czk.a, Integer.valueOf(0));
      a.put(czk.b, Integer.valueOf(1));
      a.put(czk.c, Integer.valueOf(2));
      a.put(czk.d, Integer.valueOf(3));
      a.put(czk.e, Integer.valueOf(4));
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
      czk.a(paramContext, paramilh);
      return;
    case 1: 
      czk.b(paramContext, paramilh);
      return;
    case 2: 
      czk.c(paramContext, paramilh);
      return;
    case 3: 
      czk.d(paramContext, paramilh);
      return;
    }
    czk.a(paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.peertopeer.impl.PeerToPeerModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */