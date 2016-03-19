import android.graphics.SurfaceTexture;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class hge
  extends hgn
  implements hds, hld
{
  private float[] A = new float[16];
  final AtomicInteger a = new AtomicInteger(0);
  hdu b;
  int c = 0;
  SurfaceTexture d;
  Surface e;
  hdr f;
  boolean g;
  boolean h;
  hle i;
  hlg j = new hlg();
  boolean k;
  private final hgm q = new hgm(this);
  private final hcd r;
  private final EncoderManager s;
  private final Object t = new Object();
  private final AtomicReference<hlc> u = new AtomicReference(new hlc());
  private final Runnable v = new hgf(this);
  private long w = -1L;
  private volatile long x = -1L;
  private float[] y = hll.a;
  private float[] z = new float[16];
  
  public hge(hcd paramhcd)
  {
    super(paramhcd.e(), paramhcd.c().d());
    r = paramhcd;
    s = paramhcd.g();
    paramhcd.d().a(q);
    l.a(new hgg(this));
  }
  
  public void a()
  {
    m();
    if (i != null) {
      aal.a(new hgl(this));
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt == -1)
    {
      x = -1L;
      return;
    }
    x = (1000 / paramInt);
  }
  
  public void a(hla paramhla)
  {
    if (paramhla.a() != null)
    {
      j.a = paramhla.a();
      aal.a(v);
    }
    if (!k) {
      l.a(paramhla, this);
    }
    super.a(paramhla);
  }
  
  public void a(hla paramhla, Runnable paramRunnable)
  {
    if ((paramhla.a() != null) && (paramhla.a().equals(j.a)))
    {
      j.a = null;
      aal.a(v);
    }
    if (!k) {
      l.a(paramhla);
    }
    super.a(paramhla, paramRunnable);
  }
  
  public void a(hlc paramhlc)
  {
    if (!paramhlc.equals((hlc)u.get()))
    {
      hlk.a(3, "vclib", "Changing capture format from %s to %s", new Object[] { u.get(), paramhlc });
      u.set(paramhlc);
      l.a(new hgj(this));
      hlc localhlc = paramhlc.a();
      if (!k)
      {
        localhlc.a(0);
        localhlc.a(paramhlc.b(), paramhlc.c());
      }
      n.set(localhlc);
    }
  }
  
  public void a(hle paramhle)
  {
    i = paramhle;
    synchronized (t)
    {
      if ((d != null) && (paramhle != null) && (!k)) {
        paramhle.a(d);
      }
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    a(paramBoolean);
    j();
  }
  
  public boolean b()
  {
    boolean bool1 = false;
    hbs.b("Attempted to processFrame without initializing.", d);
    hbs.b("Attempted to processFrame without initializing.", b);
    long l3 = SystemClock.elapsedRealtime();
    long l1 = 0L;
    d.getTransformMatrix(A);
    hll.a(A, y, z);
    int n = a.getAndSet(0);
    if (n > 0) {}
    for (;;)
    {
      int m;
      try
      {
        d.updateTexImage();
        long l2 = d.getTimestamp();
        if (n > 1) {
          hlk.a(3, "vclib", 35 + "Skipped encoding " + (n - 1) + " frames");
        }
        l1 = l2;
        if (!k)
        {
          b.a(z);
          l1 = l2;
        }
        int i1 = d();
        if ((o) || (i1 == 0))
        {
          m = 0;
          n = 0;
          if (m != 0)
          {
            w = l3;
            hdr localhdr = f;
            boolean bool2 = k;
            if (!k) {
              break label346;
            }
            float[] arrayOfFloat1 = z;
            if (!localhdr.a(i1, l1, bool2, arrayOfFloat1)) {
              hlk.a(5, "vclib", "Failed to encode frame.");
            }
          }
          if (x != -1L)
          {
            l1 = SystemClock.elapsedRealtime();
            l.a(this, Math.max(1L, x - (l1 - l3)));
          }
          if (n > 0) {
            bool1 = true;
          }
          return bool1;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        hlk.a("vclib", "Failed to updateTexImage", localRuntimeException);
        return false;
      }
      if (x == -1L)
      {
        m = 1;
      }
      else
      {
        if (l3 >= w + x) {}
        for (m = 1;; m = 0)
        {
          l1 = 1000000L * l3;
          break;
        }
        label346:
        float[] arrayOfFloat2 = hll.a;
      }
    }
  }
  
  public String c()
  {
    return "InputCapture";
  }
  
  public void c(boolean paramBoolean)
  {
    l.a(new hgk(this, paramBoolean));
  }
  
  public int d()
  {
    if (k) {
      return c;
    }
    return b.b();
  }
  
  public void d(boolean paramBoolean)
  {
    if (k == paramBoolean) {
      return;
    }
    k = paramBoolean;
    aal.a(v);
  }
  
  public boolean e()
  {
    return (!k) && (g);
  }
  
  public boolean f()
  {
    return k;
  }
  
  void g()
  {
    a(-1);
    c(false);
    a(null);
    d(false);
    a(new hlc());
  }
  
  public void h()
  {
    r.d().b(q);
    l.a(new hgh(this));
  }
  
  void i()
  {
    synchronized (t)
    {
      c = aal.q();
      d = new SurfaceTexture(c);
      if (((hlc)u.get()).d() > 0) {
        d.setDefaultBufferSize(((hlc)u.get()).d(), ((hlc)u.get()).e());
      }
      e = new Surface(d);
      j.b.add(e);
      d.setOnFrameAvailableListener(new hgi(this));
      if (k) {
        aal.a(v);
      }
      while (i == null)
      {
        b = new hdu(c);
        f = s.a(c, r, this);
        f.a();
        m();
        return;
      }
      i.a(d);
    }
  }
  
  void j()
  {
    if (!h) {
      return;
    }
    r.d().a(o);
  }
  
  public hlf k()
  {
    hlf localhlf = new hlf();
    int m;
    if (f != null)
    {
      m = f.b();
      if (m == -1) {}
    }
    for (;;)
    {
      hgu localhgu = hgu.b(m);
      a = ba;
      b = bb;
      c = localhgu.d();
      hgu.a();
      localhgu = hgu.c;
      d = ba;
      e = bb;
      f = localhgu.d();
      return localhlf;
      m = 0;
    }
  }
  
  public boolean l()
  {
    return k;
  }
  
  void m()
  {
    hlc localhlc = (hlc)u.get();
    if ((localhlc.b() == 0) || (localhlc.c() == 0))
    {
      hlk.a(3, "vclib", "Ignoring capture size area of 0");
      return;
    }
    hlp localhlp = new hlp(localhlc.b(), localhlc.c());
    d.setDefaultBufferSize(localhlc.d(), localhlc.e());
    if (b != null) {
      b.a(localhlp);
    }
    if (f != null) {
      f.a(a, b, localhlc.i());
    }
    int n = localhlc.h();
    int m = n;
    if (k)
    {
      m = n;
      if (g) {
        m = (n + 180) % 360;
      }
    }
    y = hll.a(m);
  }
}

/* Location:
 * Qualified Name:     hge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */