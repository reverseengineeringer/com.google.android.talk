import android.content.Context;
import android.content.Intent;
import com.google.android.gms.identity.accounts.api.AccountData;

class gwe
  implements gwc
{
  public gwd a(Context paramContext, Intent paramIntent)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (gan.a(paramContext, paramIntent))
    {
      localObject1 = gan.b;
      aal.b(paramContext, "Context must not be null.");
      aal.b(paramIntent, "Intent must not be null.");
      if (gap.a(paramContext, paramIntent)) {
        break label60;
      }
    }
    label60:
    for (paramContext = (Context)localObject2;; paramContext = (AccountData)aal.a(paramIntent, "com.google.android.gms.accounts.ACCOUNT_DATA", AccountData.CREATOR))
    {
      localObject1 = new gwd(paramContext.a(), paramContext.b());
      return (gwd)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     gwe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */