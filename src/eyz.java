import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class eyz
{
  static final long a = TimeUnit.SECONDS.toMillis(30L);
  static final Handler b = new Handler(Looper.getMainLooper());
  public static final eyz c = new eyz();
  final List<ezb> d = new ArrayList();
  final Runnable e = new eza(this);
  
  public void a(ezb paramezb)
  {
    d.add(paramezb);
    if (d.size() == 1) {
      b.postDelayed(e, a);
    }
  }
  
  public void b(ezb paramezb)
  {
    d.remove(paramezb);
    if (d.isEmpty()) {
      b.removeCallbacks(e);
    }
  }
}

/* Location:
 * Qualified Name:     eyz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */