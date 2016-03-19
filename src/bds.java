import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

final class bds
  implements bdp
{
  private static final kth<String> a = kth.b("device_country");
  private final String b;
  private final Context c;
  private final Object d = new Object();
  private boolean e;
  private final List<Runnable> f = new ArrayList();
  
  public bds(String paramString, Context paramContext, Executor paramExecutor)
  {
    b = paramString;
    c = paramContext;
    paramExecutor.execute(new bdt(this));
    paramString = new IntentFilter();
    paramString.addAction("com.google.gservices.intent.action.GSERVICES_CHANGED");
    paramContext.registerReceiver(new bdu(this), paramString);
  }
  
  private void a(String paramString)
  {
    boolean bool;
    if ((paramString.startsWith(b)) || (paramString.startsWith("url:")) || (a.contains(paramString)))
    {
      bool = true;
      paramString = String.valueOf(b);
      if (paramString.length() == 0) {
        break label65;
      }
    }
    label65:
    for (paramString = "Config keys must start with ".concat(paramString);; paramString = new String("Config keys must start with "))
    {
      aen.a(bool, paramString);
      return;
      bool = false;
      break;
    }
  }
  
  private void c()
  {
    if (e) {
      return;
    }
    long l;
    synchronized (d)
    {
      l = System.currentTimeMillis();
      boolean bool = e;
      if (bool) {}
    }
  }
  
  public int a(String paramString, int paramInt)
  {
    a(paramString);
    c();
    return gvj.a(c.getContentResolver(), paramString, paramInt);
  }
  
  public long a(String paramString, long paramLong)
  {
    a(paramString);
    c();
    return gvj.a(c.getContentResolver(), paramString, paramLong);
  }
  
  public String a(String paramString1, String paramString2)
  {
    a(paramString1);
    c();
    return gvj.a(c.getContentResolver(), paramString1, paramString2);
  }
  
  void a()
  {
    gvj.b(c.getContentResolver(), new String[] { b });
    synchronized (d)
    {
      e = true;
      d.notifyAll();
      b();
      return;
    }
  }
  
  public void a(Runnable paramRunnable)
  {
    synchronized (f)
    {
      f.add(paramRunnable);
      return;
    }
  }
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    a(paramString);
    c();
    return gvj.a(c.getContentResolver(), paramString, paramBoolean);
  }
  
  void b()
  {
    synchronized (f)
    {
      Iterator localIterator = f.iterator();
      if (localIterator.hasNext()) {
        aal.a((Runnable)localIterator.next());
      }
    }
  }
}

/* Location:
 * Qualified Name:     bds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */