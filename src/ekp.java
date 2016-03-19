import android.content.Intent;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.settings.CustomizeInvitesActivity;
import com.google.android.libraries.social.settings.PreferenceCategory;

public final class ekp
  extends img
  implements ija
{
  private hpu a;
  
  public ekp()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    Object localObject = dvd.e(a.a());
    iji localiji = new iji(context);
    if (aal.a((bfd)localObject, bhh.c))
    {
      localObject = localiji.a(StressMode.eS);
      Intent localIntent = new Intent(context, CustomizeInvitesActivity.class);
      localIntent.putExtra("account_id", a.a());
      localiji.a((PreferenceCategory)localObject, StressMode.aH, localIntent);
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hpu)binder.a(hpu.class));
  }
}

/* Location:
 * Qualified Name:     ekp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */