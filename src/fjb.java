import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

final class fjb
  implements fig
{
  private final WeakReference<fiv> a;
  private final fhw<?> b;
  private final int c;
  
  public fjb(fiv paramfiv, fhw<?> paramfhw, int paramInt)
  {
    a = new WeakReference(paramfiv);
    b = paramfhw;
    c = paramInt;
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    boolean bool = false;
    fiv localfiv = (fiv)a.get();
    if (localfiv == null) {
      return;
    }
    if (Looper.myLooper() == a.a()) {
      bool = true;
    }
    aal.a(bool, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
    b.lock();
    try
    {
      bool = localfiv.b(0);
      if (!bool) {
        return;
      }
      if (!paramConnectionResult.b()) {
        localfiv.b(paramConnectionResult, b, c);
      }
      if (localfiv.e()) {
        localfiv.f();
      }
      return;
    }
    finally
    {
      b.unlock();
    }
  }
  
  public void b(ConnectionResult paramConnectionResult)
  {
    boolean bool = true;
    fiv localfiv = (fiv)a.get();
    if (localfiv == null) {
      return;
    }
    if (Looper.myLooper() == a.a()) {}
    for (;;)
    {
      aal.a(bool, "onReportAccountValidation must be called on the GoogleApiClient handler thread");
      b.lock();
      try
      {
        bool = localfiv.b(1);
        if (!bool)
        {
          return;
          bool = false;
          continue;
        }
        if (!paramConnectionResult.b()) {
          localfiv.b(paramConnectionResult, b, c);
        }
        if (localfiv.e()) {
          localfiv.g();
        }
        return;
      }
      finally
      {
        b.unlock();
      }
    }
  }
}

/* Location:
 * Qualified Name:     fjb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */