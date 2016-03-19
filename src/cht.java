import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.IncomingRing;
import com.google.android.apps.hangouts.hangout.IncomingRingActivity;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.hangout.multiwaveview.GlowPadView.OnTriggerListener;

public final class cht
  implements GlowPadView.OnTriggerListener
{
  public cht(IncomingRingActivity paramIncomingRingActivity) {}
  
  public void onFinishFinalAnimation() {}
  
  public void onGrabbed(View paramView, int paramInt) {}
  
  public void onGrabbedStateChange(View paramView, int paramInt) {}
  
  public void onReleased(View paramView, int paramInt) {}
  
  public void onTrigger(View paramView, int paramInt)
  {
    int k = 1;
    switch (paramInt)
    {
    case 1: 
    default: 
      aal.k(60 + "Unexpected trigger for GlowPadView widget value: " + paramInt);
      return;
    case 0: 
      paramView = a;
      label89:
      int i;
      if (!j.h())
      {
        paramInt = 1;
        if ((paramInt == 0) || (paramView.checkCallingOrSelfPermission("android.permission.CAMERA") == 0)) {
          break label189;
        }
        paramInt = 1;
        if (paramView.checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") == 0) {
          break label194;
        }
        i = 1;
        label100:
        if (!paramView.g()) {
          break label199;
        }
        j = k;
        if (paramInt == 0) {
          if (i == 0) {
            break label199;
          }
        }
      }
      label189:
      label194:
      label199:
      for (int j = k;; j = 0)
      {
        if (j == 0) {
          break label205;
        }
        new AlertDialog.Builder(paramView).setMessage(paramView.getResources().getString(StressMode.eu)).setCancelable(false).setPositiveButton(17039370, new chs(paramView)).show();
        aal.a(j.b(), 2682);
        return;
        paramInt = 0;
        break;
        paramInt = 0;
        break label89;
        i = 0;
        break label100;
      }
      label205:
      j.k();
      return;
    }
    a.j.l();
  }
}

/* Location:
 * Qualified Name:     cht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */