import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class tg
  implements tz
{
  public Context a;
  public Context b;
  public tl c;
  public LayoutInflater d;
  public LayoutInflater e;
  public ub f;
  private ua g;
  private int h;
  private int i;
  private int j;
  
  public tg(Context paramContext, int paramInt1, int paramInt2)
  {
    a = paramContext;
    d = LayoutInflater.from(paramContext);
    h = paramInt1;
    i = paramInt2;
  }
  
  public View a(tp paramtp, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof uc)) {}
    for (paramView = (uc)paramView;; paramView = b(paramViewGroup))
    {
      a(paramtp, paramView);
      return (View)paramView;
    }
  }
  
  public ua a()
  {
    return g;
  }
  
  public ub a(ViewGroup paramViewGroup)
  {
    if (f == null)
    {
      f = ((ub)d.inflate(h, paramViewGroup, false));
      f.a(c);
      b(true);
    }
    return f;
  }
  
  public void a(int paramInt)
  {
    j = paramInt;
  }
  
  public void a(Context paramContext, tl paramtl)
  {
    b = paramContext;
    e = LayoutInflater.from(b);
    c = paramtl;
  }
  
  protected void a(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)f).addView(paramView, paramInt);
  }
  
  public void a(tl paramtl, boolean paramBoolean)
  {
    if (g != null) {
      g.a(paramtl, paramBoolean);
    }
  }
  
  public abstract void a(tp paramtp, uc paramuc);
  
  public void a(ua paramua)
  {
    g = paramua;
  }
  
  public boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public boolean a(tp paramtp)
  {
    return true;
  }
  
  public boolean a(ue paramue)
  {
    if (g != null) {
      return g.a(paramue);
    }
    return false;
  }
  
  public uc b(ViewGroup paramViewGroup)
  {
    return (uc)d.inflate(i, paramViewGroup, false);
  }
  
  public void b(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)f;
    if (localViewGroup == null) {}
    label200:
    label206:
    for (;;)
    {
      return;
      int m;
      if (c != null)
      {
        c.l();
        ArrayList localArrayList = c.k();
        int i1 = localArrayList.size();
        int n = 0;
        int k = 0;
        m = k;
        if (n < i1)
        {
          tp localtp2 = (tp)localArrayList.get(n);
          if (!a(localtp2)) {
            break label200;
          }
          View localView1 = localViewGroup.getChildAt(k);
          if ((localView1 instanceof uc)) {}
          for (tp localtp1 = ((uc)localView1).a();; localtp1 = null)
          {
            View localView2 = a(localtp2, localView1, localViewGroup);
            if (localtp2 != localtp1)
            {
              localView2.setPressed(false);
              ks.a.h(localView2);
            }
            if (localView2 != localView1) {
              a(localView2, k);
            }
            k += 1;
            n += 1;
            break;
          }
        }
      }
      for (;;)
      {
        if (m >= localViewGroup.getChildCount()) {
          break label206;
        }
        if (!a(localViewGroup, m))
        {
          m += 1;
          continue;
          break;
          m = 0;
        }
      }
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(tp paramtp)
  {
    return false;
  }
  
  public boolean c(tp paramtp)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     tg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */