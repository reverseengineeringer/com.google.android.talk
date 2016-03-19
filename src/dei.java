import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.telephony.SmsMessage;
import com.google.android.apps.hangouts.phone.ClassZeroActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;

public final class dei
  implements DialogInterface.OnClickListener
{
  public dei(ClassZeroActivity paramClassZeroActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.b = true;
    ClassZeroActivity localClassZeroActivity = a;
    RealTimeChatService.a(e, a.getPdu(), b);
    paramDialogInterface.dismiss();
    paramDialogInterface = a;
    if (d.size() > 0) {
      d.remove(0);
    }
    if (d.size() == 0)
    {
      paramDialogInterface.finish();
      return;
    }
    paramDialogInterface.a((SmsMessage)d.get(0));
  }
}

/* Location:
 * Qualified Name:     dei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */