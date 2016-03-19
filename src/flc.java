import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.ValidateAccountRequest;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class flc<T extends IInterface>
  implements fia, fln
{
  public static final String[] d = { "service_esmobile", "service_googleme" };
  public final Context a;
  final Handler b;
  public AtomicInteger c = new AtomicInteger(0);
  private final fkq e;
  private final Looper f;
  private final flo g;
  private final fho h;
  private final Object i = new Object();
  private fma j;
  private fig k;
  private T l;
  private final ArrayList<flf<?>> m = new ArrayList();
  private flh n;
  private int o = 1;
  private final Set<Scope> p;
  private final Account q;
  private final fif r;
  private final fih s;
  private final int t;
  
  public flc(Context paramContext, Looper paramLooper, int paramInt, fkq paramfkq, fif paramfif, fih paramfih)
  {
    this(paramContext, paramLooper, flo.a(paramContext), fho.b, paramInt, paramfkq, (fif)aal.d(paramfif), (fih)aal.d(paramfih));
  }
  
  private flc(Context paramContext, Looper paramLooper, flo paramflo, fho paramfho, int paramInt, fkq paramfkq, fif paramfif, fih paramfih)
  {
    a = ((Context)aal.b(paramContext, "Context must not be null"));
    f = ((Looper)aal.b(paramLooper, "Looper must not be null"));
    g = ((flo)aal.b(paramflo, "Supervisor must not be null"));
    h = ((fho)aal.b(paramfho, "API availability must not be null"));
    b = new fle(this, paramLooper);
    t = paramInt;
    e = ((fkq)aal.d(paramfkq));
    q = paramfkq.b();
    p = b(paramfkq.e());
    r = paramfif;
    s = paramfih;
  }
  
  private void a(int paramInt, T paramT)
  {
    boolean bool = true;
    int i1;
    int i2;
    if (paramInt == 3)
    {
      i1 = 1;
      if (paramT == null) {
        break label290;
      }
      i2 = 1;
      label17:
      if (i1 != i2) {
        break label296;
      }
    }
    for (;;)
    {
      aal.b(bool);
      for (;;)
      {
        synchronized (i)
        {
          o = paramInt;
          l = paramT;
          switch (paramInt)
          {
          case 3: 
            return;
          case 2: 
            if (n != null)
            {
              Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + a());
              g.b(a(), n, e.h());
              c.incrementAndGet();
            }
            n = new flh(this, c.get());
            if (g.a(a(), n, e.h())) {
              continue;
            }
            Log.e("GmsClient", "unable to connect to service: " + a());
            b.sendMessage(b.obtainMessage(3, c.get(), 9));
          }
        }
        if (n != null)
        {
          g.b(a(), n, e.h());
          n = null;
        }
      }
      i1 = 0;
      break;
      label290:
      i2 = 0;
      break label17;
      label296:
      bool = false;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (i)
    {
      if (o != paramInt1) {
        return false;
      }
      a(paramInt2, paramT);
      return true;
    }
  }
  
  private Set<Scope> b(Set<Scope> paramSet)
  {
    Set localSet = a(paramSet);
    if (localSet == null) {
      return localSet;
    }
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext()) {
      if (!paramSet.contains((Scope)localIterator.next())) {
        throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
      }
    }
    return localSet;
  }
  
  public abstract T a(IBinder paramIBinder);
  
  public abstract String a();
  
  protected Set<Scope> a(Set<Scope> paramSet)
  {
    return paramSet;
  }
  
  protected void a(int paramInt)
  {
    b.sendMessage(b.obtainMessage(6, paramInt, -1, new flk(this)));
  }
  
  protected void a(int paramInt1, Bundle paramBundle, int paramInt2)
  {
    b.sendMessage(b.obtainMessage(5, paramInt2, -1, new fll(this, paramInt1, paramBundle)));
  }
  
  public void a(int paramInt1, IBinder paramIBinder, Bundle paramBundle, int paramInt2)
  {
    b.sendMessage(b.obtainMessage(1, paramInt2, -1, new flj(this, paramInt1, paramIBinder, paramBundle)));
  }
  
  public void a(fig paramfig)
  {
    k = ((fig)aal.b(paramfig, "Connection progress callbacks cannot be null."));
    a(2, null);
  }
  
  public void a(fks paramfks)
  {
    paramfks = new ValidateAccountRequest(paramfks, (Scope[])p.toArray(new Scope[p.size()]), a.getPackageName(), null);
    try
    {
      j.a(new flg(this, c.get()), paramfks);
      return;
    }
    catch (DeadObjectException paramfks)
    {
      i();
      return;
    }
    catch (RemoteException paramfks) {}
  }
  
  public void a(fks paramfks, Set<Scope> paramSet)
  {
    for (;;)
    {
      try
      {
        localObject = j();
        localObject = new GetServiceRequest(t).a(a.getPackageName()).a((Bundle)localObject);
        if (paramSet != null) {
          ((GetServiceRequest)localObject).a(paramSet);
        }
        if (!e()) {
          continue;
        }
        if (q == null) {
          continue;
        }
        paramSet = q;
        ((GetServiceRequest)localObject).a(paramSet).a(paramfks);
      }
      catch (DeadObjectException paramfks)
      {
        Object localObject;
        i();
        return;
        if (!n()) {
          continue;
        }
        ((GetServiceRequest)localObject).a(q);
        continue;
      }
      catch (RemoteException paramfks) {}
      j.a(new flg(this, c.get()), (GetServiceRequest)localObject);
      return;
      paramSet = new Account("<<default account>>", "com.google");
    }
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter)
  {
    IInterface localIInterface;
    for (;;)
    {
      synchronized (i)
      {
        int i1 = o;
        localIInterface = l;
        paramPrintWriter.append(paramString).append("mConnectState=");
        switch (i1)
        {
        default: 
          paramPrintWriter.print("UNKNOWN");
          paramPrintWriter.append(" mService=");
          if (localIInterface != null) {
            break label142;
          }
          paramPrintWriter.println("null");
          return;
        }
      }
      paramPrintWriter.print("CONNECTING");
      continue;
      paramPrintWriter.print("CONNECTED");
      continue;
      paramPrintWriter.print("DISCONNECTING");
      continue;
      paramPrintWriter.print("DISCONNECTED");
    }
    label142:
    paramPrintWriter.append(b()).append("@").println(Integer.toHexString(System.identityHashCode(localIInterface.asBinder())));
  }
  
  public abstract String b();
  
  public void c()
  {
    c.incrementAndGet();
    synchronized (m)
    {
      int i2 = m.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((flf)m.get(i1)).d();
        i1 += 1;
      }
      m.clear();
      a(1, null);
      return;
    }
  }
  
  public boolean d()
  {
    for (;;)
    {
      synchronized (i)
      {
        if (o == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public boolean e()
  {
    return false;
  }
  
  protected void f() {}
  
  protected void g() {}
  
  public boolean h()
  {
    for (;;)
    {
      synchronized (i)
      {
        if (o == 2)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void i()
  {
    b.sendMessage(b.obtainMessage(4, c.get(), 1));
  }
  
  public Bundle j()
  {
    return new Bundle();
  }
  
  public final void k()
  {
    if (!d()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public Bundle l()
  {
    return null;
  }
  
  public final T m()
  {
    synchronized (i)
    {
      if (o == 4) {
        throw new DeadObjectException();
      }
    }
    k();
    if (l != null) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "Client is connected but service is null");
      IInterface localIInterface = l;
      return localIInterface;
    }
  }
  
  public boolean n()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     flc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */