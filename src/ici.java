import android.content.Intent;
import android.os.Bundle;

public final class ici
  extends iiq
  implements ijx
{
  private final ijw f = new ijw(this, c);
  
  public static Bundle a(Intent paramIntent)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("LoginSettingsFragment.account_view_intent", paramIntent.getParcelableExtra("LoginSettingsFragment.account_view_intent"));
    return localBundle;
  }
  
  public void a()
  {
    Intent localIntent = null;
    Bundle localBundle = getArguments();
    if (localBundle != null) {
      localIntent = (Intent)localBundle.getParcelable("LoginSettingsFragment.account_view_intent");
    }
    f.a(new icm().a(localIntent).b());
  }
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    b.a(ika.class, f);
  }
}

/* Location:
 * Qualified Name:     ici
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */