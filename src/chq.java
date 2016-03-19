import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.hangout.IncomingRing;
import com.google.android.apps.hangouts.hangout.IncomingRingActivity;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class chq
  implements View.OnClickListener
{
  public chq(IncomingRingActivity paramIncomingRingActivity) {}
  
  public void onClick(View paramView)
  {
    int m = 1;
    int i;
    label45:
    int j;
    if (!a.isFinishing())
    {
      paramView = a;
      if (j.h()) {
        break label140;
      }
      i = 1;
      if ((i == 0) || (paramView.checkCallingOrSelfPermission("android.permission.CAMERA") == 0)) {
        break label145;
      }
      i = 1;
      if (paramView.checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") == 0) {
        break label150;
      }
      j = 1;
      label56:
      if (!paramView.g()) {
        break label155;
      }
      k = m;
      if (i == 0) {
        if (j == 0) {
          break label155;
        }
      }
    }
    label140:
    label145:
    label150:
    label155:
    for (int k = m;; k = 0)
    {
      if (k == 0) {
        break label161;
      }
      new AlertDialog.Builder(paramView).setMessage(paramView.getResources().getString(StressMode.eu)).setCancelable(false).setPositiveButton(17039370, new chs(paramView)).show();
      aal.a(j.b(), 2682);
      return;
      i = 0;
      break;
      i = 0;
      break label45;
      j = 0;
      break label56;
    }
    label161:
    j.k();
  }
}

/* Location:
 * Qualified Name:     chq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */