import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public final class pq
{
  Object a;
  pr b;
  
  private pq(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      b = new pu();
    }
    for (;;)
    {
      a = b.a(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9) {
        b = new pt();
      } else {
        b = new ps();
      }
    }
  }
  
  public pq(Context paramContext, Interpolator paramInterpolator)
  {
    this(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public static pq a(Context paramContext, Interpolator paramInterpolator)
  {
    return new pq(paramContext, paramInterpolator);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    b.a(a, paramInt1, paramInt2, 0, paramInt3);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b.a(a, 0, 0, paramInt1, paramInt2, paramInt3, paramInt4, Integer.MIN_VALUE, Integer.MAX_VALUE);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    b.a(a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public boolean a()
  {
    return b.a(a);
  }
  
  public int b()
  {
    return b.b(a);
  }
  
  public void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    b.a(a, paramInt1, paramInt2, 0, paramInt3, 0, 0, 0, paramInt4, 0, paramInt5);
  }
  
  public boolean b(int paramInt1, int paramInt2, int paramInt3)
  {
    return b.a(a, paramInt1, paramInt2, 0, 0, 0, paramInt3);
  }
  
  public int c()
  {
    return b.c(a);
  }
  
  public int d()
  {
    return b.g(a);
  }
  
  public int e()
  {
    return b.h(a);
  }
  
  public float f()
  {
    return b.d(a);
  }
  
  public boolean g()
  {
    return b.e(a);
  }
  
  public void h()
  {
    b.f(a);
  }
}

/* Location:
 * Qualified Name:     pq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */