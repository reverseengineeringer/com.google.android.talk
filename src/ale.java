import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ale<R>
  implements akj<R>, avy
{
  private static final alf k = new alf();
  private static final Handler l = new Handler(Looper.getMainLooper(), new alg());
  final List<aul> a = new ArrayList(2);
  final awa b = new awb();
  final alh c;
  aiw d;
  boolean e;
  alr<?> f;
  air g;
  boolean h;
  alk<?> i;
  volatile boolean j;
  private final ic<ale<?>> m;
  private final alf n;
  private final anm o;
  private final anm p;
  private alm q;
  private boolean r;
  private List<aul> s;
  private akh<R> t;
  
  ale(anm paramanm1, anm paramanm2, alh paramalh, ic<ale<?>> paramic)
  {
    this(paramanm1, paramanm2, paramalh, paramic, k);
  }
  
  private ale(anm paramanm1, anm paramanm2, alh paramalh, ic<ale<?>> paramic, alf paramalf)
  {
    o = paramanm1;
    p = paramanm2;
    c = paramalh;
    m = paramic;
    n = paramalf;
  }
  
  ale<R> a(aiw paramaiw, boolean paramBoolean)
  {
    d = paramaiw;
    e = paramBoolean;
    return this;
  }
  
  void a()
  {
    b.a();
    if (j)
    {
      a(false);
      return;
    }
    if (a.isEmpty()) {
      throw new IllegalStateException("Received an exception without any callbacks to notify");
    }
    if (r) {
      throw new IllegalStateException("Already failed once");
    }
    r = true;
    c.a(d, null);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      aul localaul = (aul)localIterator.next();
      if (!c(localaul)) {
        localaul.a(q);
      }
    }
    a(false);
  }
  
  public void a(akh<?> paramakh)
  {
    if (j)
    {
      l.obtainMessage(3, this).sendToTarget();
      return;
    }
    p.execute(paramakh);
  }
  
  public void a(alm paramalm)
  {
    q = paramalm;
    l.obtainMessage(2, this).sendToTarget();
  }
  
  public void a(alr<R> paramalr, air paramair)
  {
    f = paramalr;
    g = paramair;
    l.obtainMessage(1, this).sendToTarget();
  }
  
  public void a(aul paramaul)
  {
    avq.a();
    b.a();
    if (h)
    {
      paramaul.a(i, g);
      return;
    }
    if (r)
    {
      paramaul.a(q);
      return;
    }
    a.add(paramaul);
  }
  
  void a(boolean paramBoolean)
  {
    avq.a();
    a.clear();
    d = null;
    i = null;
    f = null;
    if (s != null) {
      s.clear();
    }
    r = false;
    j = false;
    h = false;
    t.a(paramBoolean);
    t = null;
    q = null;
    g = null;
    m.a(this);
  }
  
  public void b(akh<R> paramakh)
  {
    t = paramakh;
    if (paramakh.a()) {}
    for (anm localanm = o;; localanm = p)
    {
      localanm.execute(paramakh);
      return;
    }
  }
  
  public void b(aul paramaul)
  {
    avq.a();
    b.a();
    if ((h) || (r))
    {
      if (s == null) {
        s = new ArrayList(2);
      }
      if (!s.contains(paramaul)) {
        s.add(paramaul);
      }
    }
    do
    {
      return;
      a.remove(paramaul);
    } while ((!a.isEmpty()) || (r) || (h) || (j));
    j = true;
    t.b();
    if ((o.remove(t)) || (p.remove(t))) {}
    for (int i1 = 1;; i1 = 0)
    {
      c.a(this, d);
      if (i1 == 0) {
        break;
      }
      a(true);
      return;
    }
  }
  
  boolean c(aul paramaul)
  {
    return (s != null) && (s.contains(paramaul));
  }
  
  public awa i_()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ale
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */