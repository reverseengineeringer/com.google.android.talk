import android.support.v7.widget.RecyclerView;
import android.view.View;

public abstract class aak
{
  int a;
  RecyclerView b;
  boolean c;
  boolean d;
  View e;
  final aal f;
  private aab g;
  
  public int a(View paramView)
  {
    return b.c(paramView);
  }
  
  public lbb<V> a(K paramK, V paramV)
  {
    fii.a(paramK);
    fii.a(paramV);
    return lau.g(g());
  }
  
  protected final void a()
  {
    if (!d) {
      return;
    }
    b.u.a = -1;
    e = null;
    a = -1;
    c = false;
    d = false;
    aab localaab = g;
    if (s == this) {
      s = null;
    }
    g = null;
    b = null;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  protected void b(View paramView)
  {
    if (a(paramView) == d()) {
      e = paramView;
    }
  }
  
  public boolean b()
  {
    return c;
  }
  
  public boolean c()
  {
    return d;
  }
  
  public int d()
  {
    return a;
  }
  
  public abstract View e();
  
  public abstract boolean f();
  
  public abstract V g();
}

/* Location:
 * Qualified Name:     aak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */