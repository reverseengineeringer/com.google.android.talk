import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public final class ya
{
  final yc a;
  final yb b;
  final List<View> c;
  
  public ya(yc paramyc)
  {
    a = paramyc;
    b = new yb();
    c = new ArrayList();
  }
  
  private int e(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = a.a();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label70;
      }
      int k = paramInt - (i - b.e(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!b.c(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label70:
    return -1;
  }
  
  private void h(View paramView)
  {
    c.add(paramView);
    paramView = RecyclerView.b(paramView);
    if (paramView != null)
    {
      View localView = a;
      n = ks.a.n(localView);
      ks.c(a, 4);
    }
  }
  
  private boolean i(View paramView)
  {
    if (c.remove(paramView))
    {
      yc.b(paramView);
      return true;
    }
    return false;
  }
  
  View a(int paramInt1, int paramInt2)
  {
    int i = c.size();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      View localView = (View)c.get(paramInt2);
      aao localaao = RecyclerView.b(localView);
      if ((localaao.d() == paramInt1) && (!localaao.j()) && (!localaao.m())) {
        return localView;
      }
      paramInt2 += 1;
    }
    return null;
  }
  
  public void a()
  {
    b.a();
    int i = c.size() - 1;
    while (i >= 0)
    {
      yc.b((View)c.get(i));
      c.remove(i);
      i -= 1;
    }
    a.b();
  }
  
  void a(int paramInt)
  {
    paramInt = e(paramInt);
    View localView = a.b(paramInt);
    if (localView == null) {
      return;
    }
    if (b.d(paramInt)) {
      i(localView);
    }
    a.a(paramInt);
  }
  
  public void a(View paramView)
  {
    a(paramView, -1, true);
  }
  
  public void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = e(paramInt))
    {
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        h(paramView);
      }
      a.a(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = e(paramInt))
    {
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        h(paramView);
      }
      a.a(paramView, paramInt);
      return;
    }
  }
  
  public int b()
  {
    return a.a() - c.size();
  }
  
  public View b(int paramInt)
  {
    paramInt = e(paramInt);
    return a.b(paramInt);
  }
  
  void b(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      return;
    }
    if (b.d(i)) {
      i(paramView);
    }
    a.a(i);
  }
  
  public int c()
  {
    return a.a();
  }
  
  int c(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1) {}
    while (b.c(i)) {
      return -1;
    }
    return i - b.e(i);
  }
  
  public View c(int paramInt)
  {
    return a.b(paramInt);
  }
  
  void d(int paramInt)
  {
    paramInt = e(paramInt);
    b.d(paramInt);
    a.c(paramInt);
  }
  
  boolean d(View paramView)
  {
    return c.contains(paramView);
  }
  
  public void e(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    b.a(i);
    h(paramView);
  }
  
  void f(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    if (!b.c(i)) {
      throw new RuntimeException("trying to unhide a view that was not hidden" + paramView);
    }
    b.b(i);
    i(paramView);
  }
  
  boolean g(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1)
    {
      i(paramView);
      return true;
    }
    if (b.c(i))
    {
      b.d(i);
      i(paramView);
      a.a(i);
      return true;
    }
    return false;
  }
  
  public String toString()
  {
    return b.toString() + ", hidden list:" + c.size();
  }
}

/* Location:
 * Qualified Name:     ya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */