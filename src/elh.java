import android.content.Intent;
import android.os.Bundle;
import com.google.android.apps.hangouts.settings.AccountSettingsActivity;

public final class elh
  extends iiq
  implements ijx
{
  private final ijw f = new ijw(this, c);
  
  public void a()
  {
    f.a(new elk());
    Intent localIntent = new Intent(a, AccountSettingsActivity.class);
    f.a(new icm().a().a(localIntent).a(new hzs().a("logged_in").b("sms_only")).b());
  }
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    b.a(ika.class, f);
  }
}

/* Location:
 * Qualified Name:     elh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */