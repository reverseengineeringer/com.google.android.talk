import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;

public abstract class fip<R extends fim>
  implements fij<R>
{
  private final CountDownLatch a = new CountDownLatch(1);
  private fin<R> b;
  public final Object c = new Object();
  public final fiq<R> d;
  public final ArrayList<fik> e = new ArrayList();
  public volatile R f;
  public volatile boolean g;
  private boolean h;
  private boolean i;
  private flu j;
  
  protected fip(Looper paramLooper)
  {
    d = new fiq(paramLooper);
  }
  
  static void b(fim paramfim)
  {
    if ((paramfim instanceof fil)) {}
    try
    {
      ((fil)paramfim).b();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      new StringBuilder("Unable to release ").append(paramfim);
    }
  }
  
  private void c(R paramR)
  {
    f = paramR;
    j = null;
    a.countDown();
    paramR = f;
    if (b != null)
    {
      d.a();
      if (!h) {
        d.a(b, g());
      }
    }
    paramR = e.iterator();
    while (paramR.hasNext())
    {
      paramR.next();
      fhe.a.b();
    }
    e.clear();
  }
  
  private R g()
  {
    boolean bool = true;
    synchronized (c)
    {
      if (!g)
      {
        aal.a(bool, "Result has already been consumed.");
        aal.a(b(), "Result is not ready.");
        fim localfim = f;
        f = null;
        b = null;
        g = true;
        e();
        return localfim;
      }
      bool = false;
    }
  }
  
  public final R a()
  {
    boolean bool2 = true;
    boolean bool1;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    }
    for (;;)
    {
      aal.a(bool1, "await must not be called on the UI thread");
      if (!g)
      {
        bool1 = bool2;
        aal.a(bool1, "Result has already been consumed");
      }
      try
      {
        a.await();
        aal.a(b(), "Result is not ready.");
        return g();
        bool1 = false;
        continue;
        bool1 = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          b(Status.b);
        }
      }
    }
  }
  
  public abstract R a(Status paramStatus);
  
  public final void a(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (c)
      {
        if ((i) || (h))
        {
          b(paramR);
          return;
        }
        if (!b())
        {
          bool1 = true;
          aal.a(bool1, "Results have already been set");
          if (g) {
            break label83;
          }
          bool1 = bool2;
          aal.a(bool1, "Result has already been consumed");
          c(paramR);
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label83:
      bool1 = false;
    }
  }
  
  public final void a(fin<R> paramfin)
  {
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "Result has already been consumed.");
      for (;;)
      {
        synchronized (c)
        {
          if (d()) {
            return;
          }
          if (b())
          {
            d.a(paramfin, g());
            return;
          }
        }
        b = paramfin;
      }
    }
  }
  
  public final void a(flu paramflu)
  {
    synchronized (c)
    {
      j = paramflu;
      return;
    }
  }
  
  public final void b(Status paramStatus)
  {
    synchronized (c)
    {
      if (!b())
      {
        a(a(paramStatus));
        i = true;
      }
      return;
    }
  }
  
  public final boolean b()
  {
    return a.getCount() == 0L;
  }
  
  public void c()
  {
    synchronized (c)
    {
      if ((h) || (g)) {
        return;
      }
      flu localflu = j;
      if (localflu == null) {}
    }
    try
    {
      j.a();
      b(f);
      b = null;
      h = true;
      c(a(Status.e));
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
  
  public boolean d()
  {
    synchronized (c)
    {
      boolean bool = h;
      return bool;
    }
  }
  
  protected void e() {}
}

/* Location:
 * Qualified Name:     fip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */