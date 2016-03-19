import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class bfj
  implements hqh
{
  bfj(bff parambff) {}
  
  public String a()
  {
    return "accounts_util_upgrade";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    String str = paramhqe.b("account_name");
    Object localObject1;
    if ("SMS".equals(str))
    {
      localObject1 = "smsmms";
      localObject1 = paramContext.getSharedPreferences((String)localObject1, 0);
      if (localObject1 != null) {
        break label71;
      }
    }
    label71:
    do
    {
      return;
      localObject1 = String.valueOf(str);
      if (((String)localObject1).length() != 0)
      {
        localObject1 = "account-".concat((String)localObject1);
        break;
      }
      localObject1 = new String("account-");
      break;
      Object localObject2 = ilh.c(paramContext, beh.class);
      paramContext = ((SharedPreferences)localObject1).edit();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((beh)((Iterator)localObject2).next()).a(paramhqe, (SharedPreferences)localObject1, paramContext);
      }
      paramContext.apply();
      paramContext = ((SharedPreferences)localObject1).getAll().entrySet().iterator();
      while (paramContext.hasNext())
      {
        Object localObject3 = (Map.Entry)paramContext.next();
        localObject2 = (String)((Map.Entry)localObject3).getKey();
        localObject3 = ((Map.Entry)localObject3).getValue();
        if ((localObject3 instanceof String))
        {
          paramhqe.c((String)localObject2, (String)localObject3);
        }
        else if ((localObject3 instanceof Boolean))
        {
          paramhqe.c((String)localObject2, aal.a((Boolean)localObject3, false));
        }
        else if ((localObject3 instanceof Integer))
        {
          paramhqe.c((String)localObject2, aal.a((Integer)localObject3, 0));
        }
        else if ((localObject3 instanceof Long))
        {
          paramhqe.c((String)localObject2, aal.a((Long)localObject3, 0L));
        }
        else if ((localObject3 instanceof Float))
        {
          paramhqe.b((String)localObject2, aal.a((Float)localObject3));
        }
        else if ((localObject3 instanceof Set))
        {
          paramhqe.b((String)localObject2, (Set)localObject3);
        }
        else if (localObject3 != null)
        {
          localObject3 = String.valueOf(localObject3);
          hbs.a(String.valueOf(localObject3).length() + 29 + String.valueOf(localObject2).length() + "Missed value type: " + (String)localObject3 + " for key: " + (String)localObject2);
        }
      }
    } while ("SMS".equals(str));
    ((SharedPreferences)localObject1).edit().clear().apply();
  }
}

/* Location:
 * Qualified Name:     bfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */