import android.os.StrictMode.ThreadPolicy;
import android.os.StrictMode.ThreadPolicy.Builder;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class jri
{
  static final StrictMode.ThreadPolicy a = new StrictMode.ThreadPolicy.Builder().detectAll().penaltyDeath().penaltyLog().build();
  private static final ThreadFactory b = new lbm().a().a("Lightweight Thread #%d").a(new jrj()).b();
  private static final StrictMode.ThreadPolicy c = new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().penaltyLog().build();
  
  static Executor a(lbe paramlbe)
  {
    return paramlbe;
  }
  
  static lbd a(lbd paramlbd)
  {
    return paramlbd;
  }
  
  static lbe a()
  {
    return aal.a(Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors(), b));
  }
  
  static Executor b(lbd paramlbd)
  {
    return paramlbd;
  }
}

/* Location:
 * Qualified Name:     jri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */