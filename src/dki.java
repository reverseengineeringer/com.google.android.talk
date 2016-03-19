import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.phoneverification.impl.PhoneVerificationActivity;

public final class dki
  implements dkb
{
  public Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, PhoneVerificationActivity.class);
    paramContext.setAction("android.intent.action.VIEW");
    paramContext.putExtra("account_id", paramInt);
    paramContext.putExtra("from_settings", true);
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     dki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */