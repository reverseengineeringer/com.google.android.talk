import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public final class ta
{
  final ArrayList<md> a = new ArrayList();
  mn b;
  boolean c;
  private long d = -1L;
  private Interpolator e;
  private final mo f = new tb(this);
  
  public ta a(Interpolator paramInterpolator)
  {
    if (!c) {
      e = paramInterpolator;
    }
    return this;
  }
  
  public ta a(md parammd)
  {
    if (!c) {
      a.add(parammd);
    }
    return this;
  }
  
  public ta a(md parammd1, md parammd2)
  {
    a.add(parammd1);
    parammd2.b(parammd1.a());
    a.add(parammd2);
    return this;
  }
  
  public ta a(mn parammn)
  {
    if (!c) {
      b = parammn;
    }
    return this;
  }
  
  public void a()
  {
    if (c) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      md localmd = (md)localIterator.next();
      if (d >= 0L) {
        localmd.a(d);
      }
      if (e != null) {
        localmd.a(e);
      }
      if (b != null) {
        localmd.a(f);
      }
      localmd.c();
    }
    c = true;
  }
  
  public void b()
  {
    if (!c) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((md)localIterator.next()).b();
    }
    c = false;
  }
  
  public ta c()
  {
    if (!c) {
      d = 250L;
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     ta
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */