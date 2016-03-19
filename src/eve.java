import android.app.PendingIntent;
import android.os.Handler;
import java.util.List;

final class eve
  implements evf, Runnable
{
  final PendingIntent a;
  final evd b;
  
  eve() {}
  
  eve(evc paramevc, PendingIntent paramPendingIntent, evd paramevd)
  {
    this();
    a = paramPendingIntent;
    b = paramevd;
  }
  
  private void d()
  {
    ezi.c("Babel_telephony", "TeleInCallUiController.ShowDialogAction.onTimeout", new Object[0]);
    b.b();
    e();
  }
  
  private void e()
  {
    c.c.removeCallbacks(this);
    c.b.remove(this);
  }
  
  public void a()
  {
    ezi.c("Babel_telephony", "TeleInCallUiController.ShowDialogAction.onConnected", new Object[0]);
    c.a(a, b);
    e();
  }
  
  public void b()
  {
    ezi.c("Babel_telephony", "TeleInCallUiController.ShowDialogAction.onError", new Object[0]);
    b.a();
    e();
  }
  
  public void c()
  {
    a.cancel();
    e();
  }
  
  public final void run()
  {
    d();
  }
}

/* Location:
 * Qualified Name:     eve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */