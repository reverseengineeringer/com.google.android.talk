import android.app.Activity;
import android.content.Intent;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.settings.SettingsActivity;

public final class cvk
  extends cve
{
  public int a()
  {
    return StressMode.iG;
  }
  
  public void a(Activity paramActivity)
  {
    aal.a(a, 1606);
    bfd localbfd = a;
    Intent localIntent = new Intent(aal.oJ, SettingsActivity.class);
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.putExtra("account_id", localbfd.g());
    paramActivity.startActivity(localIntent);
  }
  
  public int b()
  {
    return R.drawable.cf;
  }
  
  public int c()
  {
    return 9;
  }
  
  public int d()
  {
    return 3;
  }
  
  public int e()
  {
    return 9;
  }
}

/* Location:
 * Qualified Name:     cvk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */