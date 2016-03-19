import android.os.Build.VERSION;
import android.view.View;

public final class ks
{
  public static final lc a = new lc();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new lb();
      return;
    }
    if (i >= 21)
    {
      a = new la();
      return;
    }
    if (i >= 19)
    {
      a = new kz();
      return;
    }
    if (i >= 17)
    {
      a = new ky();
      return;
    }
    if (i >= 16)
    {
      a = new kx();
      return;
    }
    if (i >= 15)
    {
      a = new kv();
      return;
    }
    if (i >= 14)
    {
      a = new kw();
      return;
    }
    if (i >= 11)
    {
      a = new ku();
      return;
    }
    if (i >= 9)
    {
      a = new kt();
      return;
    }
    if (i >= 7)
    {
      a = new lc((byte)0);
      return;
    }
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return a.a(paramInt1, paramInt2, paramInt3);
  }
  
  public static void a(View paramView)
  {
    a.a(paramView, false);
  }
  
  public static void a(View paramView, float paramFloat)
  {
    a.a(paramView, paramFloat);
  }
  
  public static void a(View paramView, ii paramii)
  {
    a.a(paramView, paramii);
  }
  
  public static void a(View paramView, Runnable paramRunnable)
  {
    a.a(paramView, paramRunnable);
  }
  
  public static void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    a.a(paramView, paramRunnable, paramLong);
  }
  
  public static void a(View paramView, boolean paramBoolean)
  {
    a.b(paramView, paramBoolean);
  }
  
  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }
  
  public static void b(View paramView, float paramFloat)
  {
    a.b(paramView, paramFloat);
  }
  
  public static boolean b(View paramView, int paramInt)
  {
    return a.b(paramView, paramInt);
  }
  
  public static void c(View paramView, float paramFloat)
  {
    a.c(paramView, paramFloat);
  }
  
  public static void c(View paramView, int paramInt)
  {
    a.c(paramView, paramInt);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    a.d(paramView, paramFloat);
  }
  
  public static void d(View paramView, int paramInt)
  {
    a.a(paramView, paramInt, null);
  }
  
  public static void e(View paramView, float paramFloat)
  {
    a.e(paramView, paramFloat);
  }
  
  public static void e(View paramView, int paramInt)
  {
    a.d(paramView, paramInt);
  }
  
  public static void f(View paramView, float paramFloat)
  {
    a.f(paramView, paramFloat);
  }
}

/* Location:
 * Qualified Name:     ks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */