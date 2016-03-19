import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceScreen;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.ApnSettingsActivity;

public final class ddk
  extends Handler
{
  private ApnSettingsActivity a;
  
  public ddk(ApnSettingsActivity paramApnSettingsActivity)
  {
    a = paramApnSettingsActivity;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    }
    a.a();
    a.getPreferenceScreen().setEnabled(true);
    ApnSettingsActivity.b = false;
    a.dismissDialog(1001);
    Toast.makeText(a, a.getResources().getString(StressMode.iV), 0).show();
  }
}

/* Location:
 * Qualified Name:     ddk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */