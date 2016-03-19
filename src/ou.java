import android.support.v4.widget.DrawerLayout;
import android.view.View;

public final class ou
  extends qd
{
  final int a;
  qa b;
  private final Runnable d = new ov(this);
  
  public ou(DrawerLayout paramDrawerLayout, int paramInt)
  {
    a = paramInt;
  }
  
  public int a(View paramView, int paramInt)
  {
    if (c.a(paramView, 3)) {
      return Math.max(-paramView.getWidth(), Math.min(paramInt, 0));
    }
    int i = c.getWidth();
    return Math.max(i - paramView.getWidth(), Math.min(paramInt, i));
  }
  
  public void a()
  {
    c.removeCallbacks(d);
  }
  
  public void a(int paramInt)
  {
    c.a(paramInt, b.c());
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1) {}
    for (View localView = c.c(3);; localView = c.c(5))
    {
      if ((localView != null) && (c.a(localView) == 0)) {
        b.a(localView, paramInt2);
      }
      return;
    }
  }
  
  public void a(View paramView, float paramFloat)
  {
    float f = c.d(paramView);
    int k = paramView.getWidth();
    int i;
    if (c.a(paramView, 3)) {
      if ((paramFloat > 0.0F) || ((paramFloat == 0.0F) && (f > 0.5F))) {
        i = 0;
      }
    }
    for (;;)
    {
      b.a(i, paramView.getTop());
      c.invalidate();
      return;
      i = -k;
      continue;
      int j = c.getWidth();
      if (paramFloat >= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (f <= 0.5F) {}
        }
      }
      else
      {
        i = j - k;
      }
    }
  }
  
  public void a(qa paramqa)
  {
    b = paramqa;
  }
  
  public boolean a(View paramView)
  {
    return (c.g(paramView)) && (c.a(paramView, a)) && (c.a(paramView) == 0);
  }
  
  void b()
  {
    int i = 3;
    if (a == 3) {
      i = 5;
    }
    View localView = c.c(i);
    if (localView != null) {
      c.i(localView);
    }
  }
  
  public void b(View paramView)
  {
    getLayoutParamsc = false;
    b();
  }
  
  public void b(View paramView, int paramInt)
  {
    int i = paramView.getWidth();
    float f;
    if (c.a(paramView, 3))
    {
      f = (i + paramInt) / i;
      c.b(paramView, f);
      if (f != 0.0F) {
        break label76;
      }
    }
    label76:
    for (paramInt = 4;; paramInt = 0)
    {
      paramView.setVisibility(paramInt);
      c.invalidate();
      return;
      f = (c.getWidth() - paramInt) / i;
      break;
    }
  }
  
  public int c(View paramView)
  {
    if (c.g(paramView)) {
      return paramView.getWidth();
    }
    return 0;
  }
  
  public void c()
  {
    c.postDelayed(d, 160L);
  }
  
  public int d(View paramView)
  {
    return paramView.getTop();
  }
}

/* Location:
 * Qualified Name:     ou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */