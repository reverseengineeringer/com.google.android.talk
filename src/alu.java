import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class alu
{
  private boolean a;
  private final Handler b = new Handler(Looper.getMainLooper(), new alv());
  
  public void a(alr<?> paramalr)
  {
    
    if (a)
    {
      b.obtainMessage(1, paramalr).sendToTarget();
      return;
    }
    a = true;
    paramalr.e();
    a = false;
  }
}

/* Location:
 * Qualified Name:     alu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */