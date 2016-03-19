import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

final class asr
{
  final ahw a;
  private final aik b;
  private final Handler c;
  private final Context d;
  private final List<ast> e = new ArrayList();
  private boolean f = false;
  private boolean g = false;
  private ahu<Bitmap> h;
  private ass i;
  private boolean j;
  private ass k;
  private Bitmap l;
  private ajd<Bitmap> m;
  
  private asr(ahu<Bitmap> paramahu)
  {
    a = localHandler;
    Handler localHandler = new Handler(Looper.getMainLooper(), new asu(this));
    d = paramahu;
    c = localHandler;
    ahu localahu;
    h = localahu;
    aik localaik;
    b = localaik;
    ajd localajd;
    Bitmap localBitmap;
    a(localajd, localBitmap);
  }
  
  public asr(Context paramContext, aik paramaik, int paramInt1, int paramInt2, ajd<Bitmap> paramajd, Bitmap paramBitmap)
  {
    this(paramContext, atr.a.a(paramContext), paramaik, atr.a.a(paramContext).g().a(((auk)auk.b(akr.b).a()).a(paramInt1, paramInt2)), paramajd, paramBitmap);
  }
  
  private void j()
  {
    if ((!f) || (g)) {
      return;
    }
    g = true;
    int n = b.c();
    long l1 = SystemClock.uptimeMillis();
    long l2 = n;
    b.b();
    k = new ass(c, b.e(), l2 + l1);
    h.a().a(auk.b(new asv())).a(b).a(k);
  }
  
  private void k()
  {
    if (l != null)
    {
      ahk.a(d).a().a(l);
      l = null;
    }
  }
  
  Bitmap a()
  {
    return l;
  }
  
  void a(ajd<Bitmap> paramajd, Bitmap paramBitmap)
  {
    m = ((ajd)aal.a(paramajd, "Argument must not be null"));
    l = ((Bitmap)aal.a(paramBitmap, "Argument must not be null"));
    h = h.a(new auk().a(d, paramajd));
  }
  
  void a(ass paramass)
  {
    if (j)
    {
      c.obtainMessage(2, paramass).sendToTarget();
      return;
    }
    if (paramass.a() != null)
    {
      k();
      ass localass = i;
      i = paramass;
      int n = e.size() - 1;
      while (n >= 0)
      {
        ((ast)e.get(n)).f();
        n -= 1;
      }
      if (localass != null) {
        c.obtainMessage(2, localass).sendToTarget();
      }
    }
    g = false;
    j();
  }
  
  void a(ast paramast)
  {
    if (j) {
      throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }
    boolean bool = e.isEmpty();
    if (e.contains(paramast)) {
      throw new IllegalStateException("Cannot subscribe twice in a row");
    }
    e.add(paramast);
    if ((bool) && (!f))
    {
      f = true;
      j = false;
      j();
    }
  }
  
  int b()
  {
    return i().getWidth();
  }
  
  void b(ast paramast)
  {
    e.remove(paramast);
    if (e.isEmpty()) {
      f = false;
    }
  }
  
  int c()
  {
    return i().getHeight();
  }
  
  int d()
  {
    return b.f() + avq.a(i().getWidth(), i().getHeight(), i().getConfig());
  }
  
  int e()
  {
    if (i != null) {
      return i.a;
    }
    return -1;
  }
  
  ByteBuffer f()
  {
    return b.a().asReadOnlyBuffer();
  }
  
  int g()
  {
    return b.d();
  }
  
  void h()
  {
    e.clear();
    k();
    f = false;
    if (i != null)
    {
      a.a(i);
      i = null;
    }
    if (k != null)
    {
      a.a(k);
      k = null;
    }
    b.h();
    j = true;
  }
  
  Bitmap i()
  {
    if (i != null) {
      return i.a();
    }
    return l;
  }
}

/* Location:
 * Qualified Name:     asr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */