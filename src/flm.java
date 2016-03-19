import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class flm
  implements Handler.Callback
{
  final ArrayList<fif> a = new ArrayList();
  private final fln b;
  private final ArrayList<fif> c = new ArrayList();
  private final ArrayList<fih> d = new ArrayList();
  private volatile boolean e = false;
  private final AtomicInteger f = new AtomicInteger(0);
  private boolean g = false;
  private final Handler h;
  private final Object i = new Object();
  
  public flm(Looper paramLooper, fln paramfln)
  {
    b = paramfln;
    h = new Handler(paramLooper, this);
  }
  
  public void a()
  {
    e = false;
    f.incrementAndGet();
  }
  
  public void a(int paramInt)
  {
    boolean bool = false;
    if (Looper.myLooper() == h.getLooper()) {
      bool = true;
    }
    aal.a(bool, "onUnintentionalDisconnection must only be called on the Handler thread");
    h.removeMessages(1);
    synchronized (i)
    {
      g = true;
      Object localObject2 = new ArrayList(c);
      int j = f.get();
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        fif localfif = (fif)((Iterator)localObject2).next();
        if ((e) && (f.get() == j)) {
          if (c.contains(localfif)) {
            localfif.a(paramInt);
          }
        }
      }
    }
    a.clear();
    g = false;
  }
  
  public void a(Bundle paramBundle)
  {
    boolean bool2 = true;
    boolean bool1;
    if (Looper.myLooper() == h.getLooper())
    {
      bool1 = true;
      aal.a(bool1, "onConnectionSuccess must only be called on the Handler thread");
    }
    for (;;)
    {
      synchronized (i)
      {
        if (g) {
          break label190;
        }
        bool1 = true;
        aal.a(bool1);
        h.removeMessages(1);
        g = true;
        if (a.size() != 0) {
          break label195;
        }
        bool1 = bool2;
        aal.a(bool1);
        Object localObject2 = new ArrayList(c);
        int j = f.get();
        localObject2 = ((ArrayList)localObject2).iterator();
        if (!((Iterator)localObject2).hasNext()) {
          break label200;
        }
        fif localfif = (fif)((Iterator)localObject2).next();
        if ((!e) || (!b.d()) || (f.get() != j)) {
          break label200;
        }
        if (a.contains(localfif)) {
          continue;
        }
        localfif.a_(paramBundle);
      }
      bool1 = false;
      break;
      label190:
      bool1 = false;
      continue;
      label195:
      bool1 = false;
    }
    label200:
    a.clear();
    g = false;
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    if (Looper.myLooper() == h.getLooper()) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "onConnectionFailure must only be called on the Handler thread");
      h.removeMessages(1);
      synchronized (i)
      {
        Object localObject2 = new ArrayList(d);
        int j = f.get();
        localObject2 = ((ArrayList)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          fih localfih = (fih)((Iterator)localObject2).next();
          if ((!e) || (f.get() != j)) {
            return;
          }
          if (d.contains(localfih)) {
            localfih.a(paramConnectionResult);
          }
        }
      }
      return;
    }
  }
  
  public void a(fif paramfif)
  {
    aal.d(paramfif);
    synchronized (i)
    {
      if (c.contains(paramfif))
      {
        new StringBuilder("registerConnectionCallbacks(): listener ").append(paramfif).append(" is already registered");
        if (b.d()) {
          h.sendMessage(h.obtainMessage(1, paramfif));
        }
        return;
      }
      c.add(paramfif);
    }
  }
  
  public void a(fih paramfih)
  {
    aal.d(paramfih);
    synchronized (i)
    {
      if (d.contains(paramfih))
      {
        new StringBuilder("registerConnectionFailedListener(): listener ").append(paramfih).append(" is already registered");
        return;
      }
      d.add(paramfih);
    }
  }
  
  public void b()
  {
    e = true;
  }
  
  public void b(fif paramfif)
  {
    aal.d(paramfif);
    synchronized (i)
    {
      if (!c.remove(paramfif)) {
        new StringBuilder("unregisterConnectionCallbacks(): listener ").append(paramfif).append(" not found");
      }
      while (!g) {
        return;
      }
      a.add(paramfif);
    }
  }
  
  public void b(fih paramfih)
  {
    aal.d(paramfih);
    synchronized (i)
    {
      if (!d.remove(paramfih)) {
        new StringBuilder("unregisterConnectionFailedListener(): listener ").append(paramfih).append(" not found");
      }
      return;
    }
  }
  
  public boolean handleMessage(Message arg1)
  {
    if (what == 1)
    {
      fif localfif = (fif)obj;
      synchronized (i)
      {
        if ((e) && (b.d()) && (c.contains(localfif))) {
          localfif.a_(null);
        }
        return true;
      }
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
    return false;
  }
}

/* Location:
 * Qualified Name:     flm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */