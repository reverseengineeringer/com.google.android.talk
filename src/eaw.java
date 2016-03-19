import android.app.Service;
import android.os.Handler;

public abstract class eaw
  extends Service
{
  static final boolean b = false;
  private final Handler a = new Handler();
  int c = 0;
  int d = 0;
  final Object e = new Object();
  private boolean f = true;
  private final Runnable g = new eax(this);
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public boolean J_()
  {
    synchronized (e)
    {
      if (f)
      {
        if (b) {
          a("Retain failed.");
        }
        return false;
      }
      c += 1;
      if (b) {
        a("Retain");
      }
      a.removeCallbacks(g);
      return true;
    }
  }
  
  public abstract int a();
  
  public String a(String paramString)
  {
    String str = String.valueOf(getClass().getName());
    int i = c;
    int j = d;
    boolean bool = f;
    return String.valueOf(str).length() + 75 + String.valueOf(paramString).length() + "RefCountedService(" + str + ") " + paramString + " (count=" + i + ", startId=" + j + " stopped=" + bool + ")";
  }
  
  public void a(int paramInt)
  {
    synchronized (e)
    {
      d = paramInt;
      if (b) {
        a("Retain w/ startId");
      }
      h();
      return;
    }
  }
  
  public void d()
  {
    synchronized (e)
    {
      c -= 1;
      if (b) {
        a("Release");
      }
      if (c < 0) {
        ezi.e("Babel", a("Negative service count"), new Object[0]);
      }
      if (c == 0)
      {
        int i = a();
        ezi.b("Babel", "Idle: Shutdown runnable posted in release with a delay of %d ms.", new Object[] { Integer.valueOf(i) });
        a.postDelayed(g, i);
      }
      return;
    }
  }
  
  public void e()
  {
    f = true;
  }
  
  public void h()
  {
    
    if (!J_())
    {
      ezi.e("Babel", a("Retain Failed"), new Object[0]);
      throw new IllegalStateException();
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
    synchronized (e)
    {
      hbs.a(Integer.valueOf(0), Integer.valueOf(c));
      f = false;
      int i = a();
      ezi.b("Babel", "onCreate: Shutdown runnable posted in onCreate with a delay of %d ms.", new Object[] { Integer.valueOf(i) });
      a.postDelayed(g, i);
      return;
    }
  }
  
  public void onDestroy()
  {
    ezi.b("Babel", a("onDestroy"), new Object[0]);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     eaw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */