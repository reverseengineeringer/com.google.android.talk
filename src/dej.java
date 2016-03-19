import android.app.AlertDialog;
import android.os.Handler;
import android.os.Message;
import android.telephony.SmsMessage;
import com.google.android.apps.hangouts.phone.ClassZeroActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;

public final class dej
  extends Handler
{
  private ClassZeroActivity a;
  
  public dej(ClassZeroActivity paramClassZeroActivity)
  {
    a = paramClassZeroActivity;
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      a.b = false;
      a.c.dismiss();
      paramMessage = a;
      RealTimeChatService.a(e, a.getPdu(), b);
      paramMessage = a;
      if (d.size() > 0) {
        d.remove(0);
      }
      if (d.size() == 0) {
        paramMessage.finish();
      }
    }
    else
    {
      return;
    }
    paramMessage.a((SmsMessage)d.get(0));
  }
}

/* Location:
 * Qualified Name:     dej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */