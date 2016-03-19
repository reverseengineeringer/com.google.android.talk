import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.libraries.social.login.LoginActivity;

public final class iac
{
  private final Context a;
  private iaj b;
  private Intent c;
  private Bundle d;
  
  public iac(Context paramContext)
  {
    a = paramContext;
  }
  
  public Intent a()
  {
    Intent localIntent = new Intent(a, LoginActivity.class);
    localIntent.putExtra("login_request", b);
    localIntent.putExtra("redirect_intent", c);
    localIntent.putExtra("redirect_intent_options", d);
    return localIntent;
  }
  
  public iac a(iaj paramiaj)
  {
    b = paramiaj;
    return this;
  }
}

/* Location:
 * Qualified Name:     iac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */