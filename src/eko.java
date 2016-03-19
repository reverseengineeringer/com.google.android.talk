import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.settings.NotificationSettingsActivity;
import com.google.android.libraries.social.settings.PreferenceCategory;

public final class eko
  extends img
  implements ija
{
  public eko()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    iji localiji = new iji(context);
    PreferenceCategory localPreferenceCategory = localiji.a(StressMode.aj);
    localPreferenceCategory.c(NotificationSettingsActivity.a(context, lifecycle, localiji, StressMode.ah, "chat_notification_enabled_key", "chat_notification_sound_key", 2, "chat_notification_vibrate_bool_key"));
    localPreferenceCategory.c(NotificationSettingsActivity.a(context, lifecycle, localiji, StressMode.sI, "hangouts_notification_enabled_key", "hangout_sound_key", 1, "hangout_vibrate_boolean_key"));
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
  }
}

/* Location:
 * Qualified Name:     eko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */