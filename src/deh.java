import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.telephony.SmsMessage;
import com.google.android.apps.hangouts.phone.ClassZeroActivity;
import java.util.ArrayList;

public final class deh
  implements DialogInterface.OnClickListener
{
  public deh(ClassZeroActivity paramClassZeroActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
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
 * Qualified Name:     deh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */