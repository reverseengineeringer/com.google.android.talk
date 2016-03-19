import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import android.view.ViewParent;
import java.util.WeakHashMap;

public class lc
{
  WeakHashMap<View, md> c = null;
  
  lc() {}
  
  lc(byte paramByte)
  {
    this();
  }
  
  public boolean A(View paramView)
  {
    return paramView.getWindowToken() != null;
  }
  
  public float B(View paramView)
  {
    return 0.0F;
  }
  
  public float C(View paramView)
  {
    return 0.0F;
  }
  
  public void D(View paramView)
  {
    if ((paramView instanceof kc)) {
      ((kc)paramView).stopNestedScroll();
    }
  }
  
  public float E(View paramView)
  {
    return C(paramView) + B(paramView);
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    return paramInt1 | paramInt2;
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSize(paramInt1, paramInt2);
  }
  
  public int a(View paramView)
  {
    return 2;
  }
  
  long a()
  {
    return 10L;
  }
  
  public mq a(View paramView, mq parammq)
  {
    return parammq;
  }
  
  public void a(View paramView, float paramFloat) {}
  
  public void a(View paramView, int paramInt1, int paramInt2) {}
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(View paramView, int paramInt, Paint paramPaint) {}
  
  public void a(View paramView, ColorStateList paramColorStateList)
  {
    if ((paramView instanceof kn)) {
      ((kn)paramView).a(paramColorStateList);
    }
  }
  
  public void a(View paramView, PorterDuff.Mode paramMode)
  {
    if ((paramView instanceof kn)) {
      ((kn)paramView).a(paramMode);
    }
  }
  
  public void a(View paramView, ii paramii) {}
  
  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, a());
  }
  
  public void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postDelayed(paramRunnable, a() + paramLong);
  }
  
  public void a(View paramView, kg paramkg) {}
  
  public void a(View paramView, boolean paramBoolean) {}
  
  public boolean a(View paramView, int paramInt)
  {
    if ((paramView instanceof km))
    {
      paramView = (km)paramView;
      int i = paramView.computeHorizontalScrollOffset();
      int j = paramView.computeHorizontalScrollRange() - paramView.computeHorizontalScrollExtent();
      if (j != 0) {
        if (paramInt < 0) {
          if (i > 0) {
            paramInt = 1;
          }
        }
      }
      while (paramInt != 0)
      {
        return true;
        paramInt = 0;
        continue;
        if (i < j - 1) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
      }
    }
    return false;
  }
  
  public float b(View paramView)
  {
    return 1.0F;
  }
  
  public void b(View paramView, float paramFloat) {}
  
  public void b(View paramView, boolean paramBoolean) {}
  
  public boolean b(View paramView, int paramInt)
  {
    if ((paramView instanceof km))
    {
      paramView = (km)paramView;
      int i = paramView.computeVerticalScrollOffset();
      int j = paramView.computeVerticalScrollRange() - paramView.computeVerticalScrollExtent();
      if (j != 0) {
        if (paramInt < 0) {
          if (i > 0) {
            paramInt = 1;
          }
        }
      }
      while (paramInt != 0)
      {
        return true;
        paramInt = 0;
        continue;
        if (i < j - 1) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
      }
    }
    return false;
  }
  
  public int c(View paramView)
  {
    return 0;
  }
  
  public void c(View paramView, float paramFloat) {}
  
  public void c(View paramView, int paramInt) {}
  
  public int d(View paramView)
  {
    return paramView.getMeasuredWidth();
  }
  
  public void d(View paramView, float paramFloat) {}
  
  public void d(View paramView, int paramInt) {}
  
  public int e(View paramView)
  {
    return 0;
  }
  
  public void e(View paramView, float paramFloat) {}
  
  public float f(View paramView)
  {
    return 0.0F;
  }
  
  public void f(View paramView, float paramFloat) {}
  
  public float g(View paramView)
  {
    return 0.0F;
  }
  
  public void h(View paramView) {}
  
  public boolean i(View paramView)
  {
    return false;
  }
  
  public boolean j(View paramView)
  {
    return false;
  }
  
  public md k(View paramView)
  {
    return new md(paramView);
  }
  
  public boolean l(View paramView)
  {
    return false;
  }
  
  public void m(View paramView)
  {
    paramView.invalidate();
  }
  
  public int n(View paramView)
  {
    return 0;
  }
  
  public ViewParent o(View paramView)
  {
    return paramView.getParent();
  }
  
  public int p(View paramView)
  {
    return aal.b(paramView);
  }
  
  public int q(View paramView)
  {
    return aal.c(paramView);
  }
  
  public void r(View paramView) {}
  
  public boolean s(View paramView)
  {
    return false;
  }
  
  public boolean t(View paramView)
  {
    return true;
  }
  
  public int u(View paramView)
  {
    return 0;
  }
  
  public int v(View paramView)
  {
    return paramView.getPaddingLeft();
  }
  
  public int w(View paramView)
  {
    return paramView.getPaddingRight();
  }
  
  public int x(View paramView)
  {
    return 0;
  }
  
  public boolean y(View paramView)
  {
    return false;
  }
  
  public boolean z(View paramView)
  {
    return (paramView.getWidth() > 0) && (paramView.getHeight() > 0);
  }
}

/* Location:
 * Qualified Name:     lc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */