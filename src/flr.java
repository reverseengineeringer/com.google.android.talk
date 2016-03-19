import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Set;

final class flr
{
  final Set<ServiceConnection> a;
  int b;
  IBinder c;
  final flq d;
  ComponentName e;
  private final fls g;
  private boolean h;
  
  public flr(flp paramflp, flq paramflq)
  {
    d = paramflq;
    g = new fls(this);
    a = new HashSet();
    b = 2;
  }
  
  public void a()
  {
    flp.c(f).a(flp.b(f), g);
    h = false;
    b = 2;
  }
  
  public void a(ServiceConnection paramServiceConnection)
  {
    flp.c(f).b(flp.b(f), paramServiceConnection);
    a.remove(paramServiceConnection);
  }
  
  public void a(ServiceConnection paramServiceConnection, String paramString)
  {
    flp.c(f).a(flp.b(f), paramServiceConnection, paramString, d.a());
    a.add(paramServiceConnection);
  }
  
  public void a(String paramString)
  {
    h = flp.c(f).a(flp.b(f), paramString, d.a(), g);
    if (h)
    {
      b = 3;
      return;
    }
    try
    {
      flp.c(f).a(flp.b(f), g);
      return;
    }
    catch (IllegalArgumentException paramString) {}
  }
  
  public boolean b()
  {
    return h;
  }
  
  public boolean b(ServiceConnection paramServiceConnection)
  {
    return a.contains(paramServiceConnection);
  }
  
  public int c()
  {
    return b;
  }
  
  public boolean d()
  {
    return a.isEmpty();
  }
  
  public IBinder e()
  {
    return c;
  }
  
  public ComponentName f()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     flr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */