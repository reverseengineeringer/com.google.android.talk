import android.content.Context;
import android.content.Intent;

public final class gap
{
  private final gaq a;
  
  public gap(gaq paramgaq)
  {
    aal.b(paramgaq, "Callbacks must not be null.");
    a = paramgaq;
  }
  
  public static boolean a(Context paramContext, Intent paramIntent)
  {
    aal.b(paramContext, "Context must not be null.");
    aal.b(paramIntent, "Intent must not be null.");
    return paramIntent.hasExtra("com.google.android.gms.accounts.ACCOUNT_DATA");
  }
}

/* Location:
 * Qualified Name:     gap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */