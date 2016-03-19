import android.view.animation.AnimationUtils;

final class ny
{
  private int a;
  private int b;
  private float c;
  private float d;
  private long e = Long.MIN_VALUE;
  private long f = 0L;
  private int g = 0;
  private int h = 0;
  private long i = -1L;
  private float j;
  private int k;
  
  private float a(long paramLong)
  {
    if (paramLong < e) {
      return 0.0F;
    }
    if ((i < 0L) || (paramLong < i)) {
      return nx.a((float)(paramLong - e) / a, 0.0F, 1.0F) * 0.5F;
    }
    long l = i;
    float f1 = j;
    float f2 = j;
    return nx.a((float)(paramLong - l) / k, 0.0F, 1.0F) * f2 + (1.0F - f1);
  }
  
  public void a()
  {
    e = AnimationUtils.currentAnimationTimeMillis();
    i = -1L;
    f = e;
    j = 0.5F;
    g = 0;
    h = 0;
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    c = paramFloat1;
    d = paramFloat2;
  }
  
  public void a(int paramInt)
  {
    a = 500;
  }
  
  public void b()
  {
    long l = AnimationUtils.currentAnimationTimeMillis();
    k = nx.a((int)(l - e), 0, b);
    j = a(l);
    i = l;
  }
  
  public void b(int paramInt)
  {
    b = 500;
  }
  
  public boolean c()
  {
    return (i > 0L) && (AnimationUtils.currentAnimationTimeMillis() > i + k);
  }
  
  public void d()
  {
    if (f == 0L) {
      throw new RuntimeException("Cannot compute scroll delta before calling start()");
    }
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    float f1 = a(l1);
    f1 = f1 * 4.0F + -4.0F * f1 * f1;
    long l2 = l1 - f;
    f = l1;
    g = ((int)((float)l2 * f1 * c));
    h = ((int)((float)l2 * f1 * d));
  }
  
  public int e()
  {
    return (int)(c / Math.abs(c));
  }
  
  public int f()
  {
    return (int)(d / Math.abs(d));
  }
  
  public int g()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     ny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */