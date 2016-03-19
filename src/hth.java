import android.animation.TimeInterpolator;

public class hth
  extends htg
  implements TimeInterpolator
{
  public hth(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    b = 0.0F;
    a = 0.0F;
    c = paramFloat1;
    d = paramFloat2;
    e = paramFloat3;
    f = paramFloat4;
    h = 1.0F;
    g = 1.0F;
  }
  
  public float getInterpolation(float paramFloat)
  {
    return b(c(paramFloat));
  }
}

/* Location:
 * Qualified Name:     hth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */