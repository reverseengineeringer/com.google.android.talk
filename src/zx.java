import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

public abstract class zx
{
  private zy a = null;
  private ArrayList<a> b = new ArrayList();
  private long c = 120L;
  private long d = 120L;
  private long e = 250L;
  private long f = 250L;
  
  public static int c(aao paramaao)
  {
    int k = paramaao.i & 0xE;
    int j;
    if (paramaao.j()) {
      j = 4;
    }
    do
    {
      return j;
      j = k;
    } while ((k & 0x4) != 0);
    int m = c;
    int i;
    if (o == null) {
      i = -1;
    }
    for (;;)
    {
      j = k;
      if (m == -1) {
        break;
      }
      j = k;
      if (i == -1) {
        break;
      }
      j = k;
      if (m == i) {
        break;
      }
      return k | 0x800;
      RecyclerView localRecyclerView = o;
      if ((paramaao.a(524)) || (!paramaao.l())) {
        i = -1;
      } else {
        i = c.c(b);
      }
    }
  }
  
  public long a()
  {
    return e;
  }
  
  public zz a(aao paramaao, List<Object> paramList)
  {
    return i().a(paramaao);
  }
  
  public void a(zy paramzy)
  {
    a = paramzy;
  }
  
  public abstract boolean a(aao paramaao1, aao paramaao2, zz paramzz1, zz paramzz2);
  
  public abstract boolean a(aao paramaao, zz paramzz1, zz paramzz2);
  
  public long b()
  {
    return c;
  }
  
  public zz b(aao paramaao)
  {
    return i().a(paramaao);
  }
  
  public abstract boolean b(aao paramaao, zz paramzz1, zz paramzz2);
  
  public long c()
  {
    return d;
  }
  
  public abstract boolean c(aao paramaao, zz paramzz1, zz paramzz2);
  
  public long d()
  {
    return f;
  }
  
  public abstract void d(aao paramaao);
  
  public abstract void e();
  
  public final void e(aao paramaao)
  {
    if (a != null) {
      a.a(paramaao);
    }
  }
  
  public abstract void f();
  
  public boolean f(aao paramaao)
  {
    return true;
  }
  
  public abstract boolean g();
  
  public final void h()
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      b.get(i);
      i += 1;
    }
    b.clear();
  }
  
  public zz i()
  {
    return new zz();
  }
}

/* Location:
 * Qualified Name:     zx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */