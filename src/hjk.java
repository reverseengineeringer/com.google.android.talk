import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;

public abstract class hjk
  implements hlb
{
  private final hjo a;
  private final hjm b;
  private int c = 0;
  private int d = 0;
  private boolean e;
  public final Context k;
  public hjp l;
  final hjn m;
  public HandlerThread n;
  public Handler o;
  public hld p;
  public hjl q;
  public boolean r;
  public final Object s = new Object();
  public hlf t;
  public hlp u = new hlp(0, 0);
  public hlp v = new hlp(16, 10);
  public SurfaceTexture w;
  public int x = 0;
  int y = 0;
  boolean z = true;
  
  protected hjk(Context paramContext)
  {
    k = paramContext;
    m = new hjn(this);
    a = new hjo(this);
    b = new hjm(this);
    y = n();
  }
  
  private boolean f()
  {
    boolean bool2 = false;
    boolean bool1 = false;
    for (;;)
    {
      synchronized (s)
      {
        if ((d == 90) || (d == 270))
        {
          if ((y != 0) && (y != 180)) {
            return bool1;
          }
        }
        else
        {
          if (y == 90) {
            break label94;
          }
          bool1 = bool2;
          if (y == 270) {
            break label94;
          }
          return bool1;
        }
      }
      bool1 = true;
      continue;
      label94:
      bool1 = true;
    }
  }
  
  public void a(int paramInt)
  {
    
    synchronized (s)
    {
      if (paramInt == x) {
        return;
      }
      if ((paramInt == 1) && (!a())) {
        throw new IllegalStateException("Tried to use front camera, but no front camera detected");
      }
    }
    if ((paramInt == 2) && (!b())) {
      throw new IllegalStateException("Tried to use rear camera, but no rear camera detected");
    }
    x = paramInt;
    m();
    if (x == 0) {
      return;
    }
    if (r) {
      d();
    }
  }
  
  protected final void a(int paramInt1, int paramInt2)
  {
    synchronized (s)
    {
      e = true;
      d = paramInt1;
      c = paramInt2;
      aal.a(a);
      return;
    }
  }
  
  public void a(hjl paramhjl)
  {
    aal.w();
    q = paramhjl;
    if (paramhjl != null) {
      synchronized (s)
      {
        if (u.a > 0) {
          paramhjl.p();
        }
        return;
      }
    }
  }
  
  public void a(hks arg1)
  {
    
    synchronized (s)
    {
      p = null;
      b.disable();
      m();
      if (n != null)
      {
        n.quit();
        n = null;
        o = null;
      }
      return;
    }
  }
  
  public void a(hks arg1, hld paramhld)
  {
    aal.w();
    n = new HandlerThread("CameraOpenThread");
    n.start();
    o = new Handler(n.getLooper());
    b.enable();
    synchronized (s)
    {
      t = paramhld.k();
      p = paramhld;
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool = true;
    aal.w();
    r = paramBoolean;
    for (;;)
    {
      synchronized (s)
      {
        if (x == 0)
        {
          if (a())
          {
            i = 1;
            x = i;
          }
        }
        else
        {
          if (x != 0) {
            continue;
          }
          hlk.a(6, "vclib", "No camera supported on this device, can not enable");
          return;
        }
        if (!b()) {
          break label131;
        }
        i = 2;
        continue;
        if (p == null) {
          return;
        }
      }
      ??? = p;
      if (!paramBoolean) {}
      for (;;)
      {
        ((hld)???).b(bool);
        if (!paramBoolean) {
          break;
        }
        d();
        return;
        bool = false;
      }
      m();
      return;
      label131:
      int i = 0;
    }
  }
  
  public abstract boolean a();
  
  public abstract boolean b();
  
  protected abstract hlp c();
  
  protected abstract void d();
  
  protected abstract void e();
  
  public boolean g()
  {
    return r;
  }
  
  public int h()
  {
    synchronized (s)
    {
      int i = x;
      return i;
    }
  }
  
  public int i()
  {
    synchronized (s)
    {
      int i = u.a;
      return i;
    }
  }
  
  public int j()
  {
    synchronized (s)
    {
      int i = u.b;
      return i;
    }
  }
  
  public void k()
  {
    z = true;
  }
  
  void l()
  {
    
    synchronized (s)
    {
      if (!e) {
        return;
      }
      if (x == 1) {}
      for (boolean bool = true; bool; bool = false)
      {
        i = (360 - (c + y) % 360) % 360;
        int j = t.a;
        int i1 = t.b;
        hlk.a(3, "vclib", 36 + "Encoder caps=" + j + "x" + i1);
        u = c();
        Object localObject2 = c();
        ??? = localObject2;
        if (f())
        {
          u = new hlp(u.b, u.a);
          ??? = localObject2;
          if ((this instanceof hje)) {
            ??? = u;
          }
        }
        if (q != null) {
          q.p();
        }
        localObject2 = String.valueOf(u);
        hlk.a(3, "vclib", String.valueOf(localObject2).length() + 31 + "CaptureDimensions preview size=" + (String)localObject2);
        ??? = new hlc().a(u.a, u.b, a, b).a(i);
        p.a((hlc)???);
        hlk.a(3, "vclib", 32 + "CaptureDimensions mirrored=" + bool);
        p.c(bool);
        return;
      }
      int i = (c - y + 360) % 360;
    }
  }
  
  protected final void m()
  {
    synchronized (s)
    {
      e = false;
      e();
      return;
    }
  }
  
  final int n()
  {
    switch (((WindowManager)k.getSystemService("window")).getDefaultDisplay().getRotation())
    {
    default: 
      hlk.a("vclib", "Bad rotation");
      return 0;
    case 0: 
      return 0;
    case 1: 
      return 90;
    case 2: 
      return 180;
    }
    return 270;
  }
}

/* Location:
 * Qualified Name:     hjk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */