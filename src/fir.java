import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.atomic.AtomicReference;

public abstract class fir<R extends fim, A extends fia>
  extends fio<R>
  implements fis<R>, fjr<A>
{
  private AtomicReference<fjq> a = new AtomicReference();
  final fib<A> h;
  
  public fir(fib<A> paramfib, fic paramfic)
  {
    super(((fic)aal.b(paramfic, "GoogleApiClient must not be null")).a());
    h = ((fib)aal.d(paramfib));
  }
  
  public fir(byte paramByte)
  {
    this(paramByte, localfic);
  }
  
  public fir(fic paramfic)
  {
    this(fgr.a, paramfic);
  }
  
  public fir(fic paramfic, byte paramByte)
  {
    this(gdj.a, paramfic);
  }
  
  public fir(fic paramfic, char paramChar)
  {
    this(glu.a, paramfic);
  }
  
  public fir(fic paramfic, int paramInt)
  {
    this(fyc.a, paramfic);
  }
  
  public fir(fic paramfic, short paramShort)
  {
    this(gry.k, paramfic);
  }
  
  private void a(RemoteException paramRemoteException)
  {
    c(new Status(8, paramRemoteException.getLocalizedMessage(), null));
  }
  
  public abstract void a(A paramA);
  
  public void a(fjq paramfjq)
  {
    a.set(paramfjq);
  }
  
  public final void b(A paramA)
  {
    try
    {
      a(paramA);
      return;
    }
    catch (DeadObjectException paramA)
    {
      a(paramA);
      throw paramA;
    }
    catch (RemoteException paramA)
    {
      a(paramA);
    }
  }
  
  public final void c(Status paramStatus)
  {
    if (!paramStatus.a()) {}
    for (boolean bool = true;; bool = false)
    {
      aal.b(bool, "Failed result must not be success");
      a(a(paramStatus));
      return;
    }
  }
  
  public Status d(Status paramStatus)
  {
    return paramStatus;
  }
  
  protected void e()
  {
    fjq localfjq = (fjq)a.getAndSet(null);
    if (localfjq != null) {
      localfjq.a(this);
    }
  }
  
  public final fib<A> f()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     fir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */