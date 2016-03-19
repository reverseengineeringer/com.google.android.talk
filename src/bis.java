import android.database.Cursor;
import java.util.Iterator;
import java.util.List;

public abstract class bis
{
  private boolean c;
  private boolean d;
  private final int e;
  private final int f;
  private C g;
  private int h;
  
  private bis(bir parambir, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    e = paramInt1;
    f = paramInt2;
    d = paramBoolean2;
    c = paramBoolean1;
    g();
  }
  
  public bis(dci paramdci, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramdci, paramInt1, paramInt2, paramBoolean1, paramBoolean2);
  }
  
  private void g()
  {
    int j = h();
    int i = j;
    if (c) {
      if (!d)
      {
        i = j;
        if (j <= 0) {}
      }
      else
      {
        i = j + 1;
      }
    }
    h = i;
  }
  
  private int h()
  {
    if ((g != null) && (!g.isClosed())) {
      return g.getCount();
    }
    return 0;
  }
  
  private boolean i()
  {
    Iterator localIterator = a.c.iterator();
    while (localIterator.hasNext()) {
      if ((bis)localIterator.next() == this) {
        return true;
      }
    }
    return false;
  }
  
  private int j()
  {
    Iterator localIterator = a.c.iterator();
    bis localbis;
    for (int i = 0; localIterator.hasNext(); i = localbis.c() + i)
    {
      localbis = (bis)localIterator.next();
      if (localbis == this) {
        return i;
      }
    }
    return -1;
  }
  
  public int a(int paramInt)
  {
    int i = paramInt;
    if (c) {
      i = paramInt - 1;
    }
    if (i == -1) {
      return e;
    }
    return f;
  }
  
  public abstract void a(aao paramaao);
  
  public void a(aao paramaao, int paramInt)
  {
    int i = paramInt;
    if (c) {
      i = paramInt - 1;
    }
    if (i == -1)
    {
      a(paramaao);
      return;
    }
    if (!g.moveToPosition(i)) {
      throw new IllegalStateException(44 + "Couldn't move cursor to position " + i);
    }
    a(paramaao, g);
  }
  
  public abstract void a();
  
  public void a(C paramC)
  {
    if (g == paramC) {
      return;
    }
    boolean bool1 = i();
    int j = j();
    if (!bool1)
    {
      g = paramC;
      return;
    }
    bool1 = a();
    int k = h;
    g = paramC;
    g();
    boolean bool2 = a();
    int m = h;
    a.d += m - k;
    if ((bool1) && (bool2)) {}
    for (int i = 1; m > k; i = 0)
    {
      a.a(j + i, k - i);
      a.b(j + k, m - k);
      return;
    }
    if (k > m)
    {
      a.a(j + i, m - i);
      a.a.c(j + m, k - m);
      return;
    }
    a.a(j + i, m - i);
  }
  
  public void a(boolean paramBoolean)
  {
    if (c == paramBoolean) {}
    int i;
    do
    {
      do
      {
        boolean bool;
        do
        {
          return;
          bool = a();
          c = paramBoolean;
        } while (bool == a());
        i = j();
        if (!bool) {
          break;
        }
        h -= 1;
      } while (!i());
      localbir = a;
      d -= 1;
      a.a.c(i, 1);
      return;
      h += 1;
    } while (!i());
    bir localbir = a;
    d += 1;
    a.a.b(i, 1);
  }
  
  public boolean a()
  {
    return (c) && ((d) || (h() > 0));
  }
  
  public int b(int paramInt)
  {
    if ((bec)e() == null) {
      return 0;
    }
    if ((paramInt > 0) && (a())) {}
    for (paramInt = 1;; paramInt = 0) {
      return paramInt;
    }
  }
  
  public boolean b()
  {
    return h == 0;
  }
  
  public int c()
  {
    return h;
  }
  
  public int c(int paramInt)
  {
    if ((bec)e() == null) {}
    while (paramInt <= 0) {
      return 0;
    }
    a();
    return 0;
  }
  
  public boolean d()
  {
    return g != null;
  }
  
  public C e()
  {
    return g;
  }
  
  public int f()
  {
    bec localbec = (bec)e();
    if (localbec != null) {
      return localbec.b();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     bis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */