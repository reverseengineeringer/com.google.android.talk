import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Deprecated
public class hil
{
  private final String a;
  private final String b;
  private final String c;
  private int d;
  private final ArrayList<Integer> e = new ArrayList();
  private final ArrayList<Integer> f = new ArrayList();
  private boolean g;
  private boolean h;
  private final boolean i;
  private final boolean j;
  private long k;
  private boolean l = false;
  private boolean m = false;
  private volatile Object n;
  
  protected hil(String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramInt;
    i = paramBoolean1;
    j = paramBoolean2;
    if (paramInt == 1) {}
    for (long l1 = SystemClock.elapsedRealtime();; l1 = -1L)
    {
      k = l1;
      return;
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(Object paramObject)
  {
    n = paramObject;
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public boolean a(int paramInt)
  {
    int i1 = d;
    d = paramInt;
    if ((k == -1L) && (d == 1)) {
      k = SystemClock.elapsedRealtime();
    }
    return i1 != d;
  }
  
  public String b()
  {
    Object localObject = n;
    if ((localObject instanceof him)) {
      return ((him)localObject).a();
    }
    return b;
  }
  
  public void b(int paramInt)
  {
    e.add(Integer.valueOf(paramInt));
  }
  
  public void b(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public String c()
  {
    return c;
  }
  
  public void c(int paramInt)
  {
    e.remove(Integer.valueOf(paramInt));
  }
  
  public void d(int paramInt)
  {
    f.add(Integer.valueOf(paramInt));
  }
  
  public boolean d()
  {
    return d == 20;
  }
  
  public void e(int paramInt)
  {
    f.remove(Integer.valueOf(paramInt));
  }
  
  public boolean e()
  {
    return (d == 21) || (d());
  }
  
  public boolean f()
  {
    return (d == 22) || (e());
  }
  
  public long g()
  {
    return k;
  }
  
  public boolean h()
  {
    return d == 22;
  }
  
  public boolean i()
  {
    return d == 21;
  }
  
  public boolean j()
  {
    return d == 1;
  }
  
  public boolean k()
  {
    return i;
  }
  
  public List<Integer> l()
  {
    return Collections.unmodifiableList(e);
  }
  
  public List<Integer> m()
  {
    return Collections.unmodifiableList(f);
  }
  
  public boolean n()
  {
    return g;
  }
  
  public boolean o()
  {
    return h;
  }
  
  public Object p()
  {
    return n;
  }
  
  public void q()
  {
    l = true;
  }
  
  public boolean r()
  {
    return l;
  }
  
  public void s()
  {
    m = true;
  }
  
  public boolean t()
  {
    return m;
  }
  
  public String toString()
  {
    return String.format("%s (%s)", new Object[] { b, a });
  }
}

/* Location:
 * Qualified Name:     hil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */