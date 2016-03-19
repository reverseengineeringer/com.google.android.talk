package gen_binder;

import android.content.Context;
import com.google.android.apps.common.proguard.UsedByReflection;
import eql;
import ilh;
import ilq;
import java.util.HashMap;

@UsedByReflection
public final class com$google$android$apps$hangouts$sync$impl$SyncModule
  implements ilq
{
  private HashMap<String, Integer> a;
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    if (a == null)
    {
      a = new HashMap(3);
      a.put(eql.a, Integer.valueOf(0));
      a.put(eql.b, Integer.valueOf(1));
      a.put(eql.c, Integer.valueOf(2));
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
      eql.a(paramContext, paramilh);
      return;
    case 1: 
      eql.b(paramContext, paramilh);
      return;
    }
    eql.c(paramContext, paramilh);
  }
}

/* Location:
 * Qualified Name:     gen_binder.com.google.android.apps.hangouts.sync.impl.SyncModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */