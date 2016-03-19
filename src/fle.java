import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.atomic.AtomicInteger;

final class fle
  extends Handler
{
  public fle(flc paramflc, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  private static void a(Message paramMessage)
  {
    ((flf)obj).c();
  }
  
  private static boolean b(Message paramMessage)
  {
    return (what == 2) || (what == 1) || (what == 5) || (what == 6);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (a.c.get() != arg1)
    {
      if (b(paramMessage)) {
        a(paramMessage);
      }
      return;
    }
    if (((what == 1) || (what == 5) || (what == 6)) && (!a.h()))
    {
      a(paramMessage);
      return;
    }
    if (what == 3)
    {
      paramMessage = new ConnectionResult(arg2, null);
      flc.a(a).a(paramMessage);
      a.g();
      return;
    }
    if (what == 4)
    {
      flc.a(a, 4);
      if (flc.b(a) != null) {
        flc.b(a).a(arg2);
      }
      flc localflc = a;
      int i = arg2;
      localflc.f();
      flc.a(a, 4, 1, null);
      return;
    }
    if ((what == 2) && (!a.d()))
    {
      a(paramMessage);
      return;
    }
    if (b(paramMessage))
    {
      ((flf)obj).b();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     fle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */