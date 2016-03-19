import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.BlockingQueue;

final class fyq
  extends Handler
{
  fyq(fyp paramfyp, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (paramMessage != null) {
      Object localObject = obj;
    }
    paramMessage = (Intent)obj;
    if ("com.google.android.c2dm.intent.REGISTRATION".equals(paramMessage.getAction())) {
      fyp.a(a).add(paramMessage);
    }
    while (fyp.a(a, paramMessage)) {
      return;
    }
    paramMessage.setPackage(fyp.b(a).getPackageName());
    fyp.b(a).sendBroadcast(paramMessage);
  }
}

/* Location:
 * Qualified Name:     fyq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */