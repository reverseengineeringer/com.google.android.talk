import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;

public abstract class nx
  implements View.OnTouchListener
{
  private static final int r = ;
  final ny a = new ny();
  final View b;
  boolean c;
  boolean d;
  boolean e;
  private final Interpolator f = new AccelerateInterpolator();
  private Runnable g;
  private float[] h = { 0.0F, 0.0F };
  private float[] i = { Float.MAX_VALUE, Float.MAX_VALUE };
  private int j;
  private int k;
  private float[] l = { 0.0F, 0.0F };
  private float[] m = { 0.0F, 0.0F };
  private float[] n = { Float.MAX_VALUE, Float.MAX_VALUE };
  private boolean o;
  private boolean p;
  private boolean q;
  
  public nx(View paramView)
  {
    b = paramView;
    paramView = Resources.getSystem().getDisplayMetrics();
    int i1 = (int)(1575.0F * density + 0.5F);
    int i2 = (int)(density * 315.0F + 0.5F);
    a(i1, i1);
    b(i2, i2);
    b();
    d();
    c();
    a();
    a(r);
    e();
    f();
  }
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 > paramFloat3) {
      return paramFloat3;
    }
    if (paramFloat1 < paramFloat2) {
      return paramFloat2;
    }
    return paramFloat1;
  }
  
  private float a(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = a(h[paramInt] * paramFloat2, 0.0F, i[paramInt]);
    float f2 = c(paramFloat1, f1);
    paramFloat1 = c(paramFloat2 - paramFloat1, f1) - f2;
    if (paramFloat1 < 0.0F) {
      paramFloat1 = -f.getInterpolation(-paramFloat1);
    }
    for (paramFloat1 = a(paramFloat1, -1.0F, 1.0F);; paramFloat1 = 0.0F)
    {
      if (paramFloat1 != 0.0F) {
        break label102;
      }
      return 0.0F;
      if (paramFloat1 > 0.0F)
      {
        paramFloat1 = f.getInterpolation(paramFloat1);
        break;
      }
    }
    label102:
    f2 = l[paramInt];
    paramFloat2 = m[paramInt];
    f1 = n[paramInt];
    paramFloat3 = f2 * paramFloat3;
    if (paramFloat1 > 0.0F) {
      return a(paramFloat1 * paramFloat3, paramFloat2, f1);
    }
    return -a(-paramFloat1 * paramFloat3, paramFloat2, f1);
  }
  
  static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    if (paramInt1 < 0) {
      return 0;
    }
    return paramInt1;
  }
  
  private float c(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 == 0.0F) {}
    do
    {
      do
      {
        do
        {
          return 0.0F;
          switch (j)
          {
          default: 
            return 0.0F;
          }
        } while (paramFloat1 >= paramFloat2);
        if (paramFloat1 >= 0.0F) {
          return 1.0F - paramFloat1 / paramFloat2;
        }
      } while ((!e) || (j != 1));
      return 1.0F;
    } while (paramFloat1 >= 0.0F);
    return paramFloat1 / -paramFloat2;
  }
  
  private void h()
  {
    if (c)
    {
      e = false;
      return;
    }
    a.b();
  }
  
  public nx a()
  {
    l[0] = 0.001F;
    l[1] = 0.001F;
    return this;
  }
  
  public nx a(float paramFloat1, float paramFloat2)
  {
    n[0] = (paramFloat1 / 1000.0F);
    n[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public nx a(int paramInt)
  {
    k = paramInt;
    return this;
  }
  
  public nx a(boolean paramBoolean)
  {
    if ((p) && (!paramBoolean)) {
      h();
    }
    p = paramBoolean;
    return this;
  }
  
  public nx b()
  {
    j = 1;
    return this;
  }
  
  public nx b(float paramFloat1, float paramFloat2)
  {
    m[0] = (paramFloat1 / 1000.0F);
    m[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public abstract void b(int paramInt);
  
  public nx c()
  {
    h[0] = 0.2F;
    h[1] = 0.2F;
    return this;
  }
  
  public abstract boolean c(int paramInt);
  
  public nx d()
  {
    i[0] = Float.MAX_VALUE;
    i[1] = Float.MAX_VALUE;
    return this;
  }
  
  public nx e()
  {
    a.a(500);
    return this;
  }
  
  public nx f()
  {
    a.b(500);
    return this;
  }
  
  boolean g()
  {
    ny localny = a;
    int i1 = localny.f();
    int i2 = localny.e();
    if ((i1 == 0) || (!c(i1)))
    {
      if (i2 != 0) {}
      return false;
    }
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!p) {}
    for (;;)
    {
      return false;
      switch (jx.a(paramMotionEvent))
      {
      }
      while ((q) && (e))
      {
        return true;
        d = true;
        o = false;
        float f1 = a(0, paramMotionEvent.getX(), paramView.getWidth(), b.getWidth());
        float f2 = a(1, paramMotionEvent.getY(), paramView.getHeight(), b.getHeight());
        a.a(f1, f2);
        if ((!e) && (g()))
        {
          if (g == null) {
            g = new nz(this);
          }
          e = true;
          c = true;
          if ((!o) && (k > 0)) {
            ks.a(b, g, k);
          }
          for (;;)
          {
            o = true;
            break;
            g.run();
          }
          h();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     nx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */