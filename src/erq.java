import android.content.Context;
import java.util.concurrent.CountDownLatch;

public final class erq
  implements gxn, gxo, gxq<avb>
{
  public static erq d;
  final CountDownLatch a = new CountDownLatch(1);
  final gxk b;
  final gyr c;
  private final Context e;
  
  public erq(Context paramContext)
  {
    e = paramContext;
    b = ((gxl)ilh.a(paramContext, gxl.class)).a(((gys)ilh.a(paramContext, gys.class)).a()).a(this).a(this).a();
    b.a();
    c = ((gyr)ilh.a(paramContext, gyr.class));
  }
  
  public void a()
  {
    ezi.c("Babel_telephony", "TeleFeedbackSender.onConnected", new Object[0]);
    a.countDown();
  }
  
  public void a(int paramInt)
  {
    ezi.c("Babel_telephony", 59 + "TeleFeedbackSender.onConnectionSuspended, code: " + paramInt, new Object[0]);
  }
  
  public void a(gxf paramgxf)
  {
    paramgxf = String.valueOf(paramgxf);
    ezi.c("Babel_telephony", String.valueOf(paramgxf).length() + 47 + "TeleFeedbackSender.onConnectionFailed, result: " + paramgxf, new Object[0]);
    a.countDown();
  }
  
  public void a(gyt paramgyt)
  {
    long l = aal.a(e, "babel_telephony_feedback_api_timeout_millis", 5000);
    String str = String.valueOf(paramgyt);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 79 + "TeleFeedbackSender.sendFeedback, options: " + str + ", timeoutMillis: " + l, new Object[0]);
    new err(this, l, paramgyt).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     erq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */