import android.view.animation.Interpolator;

public final class axd
  implements Interpolator
{
  private final float a = 0.85F;
  private final float b = 0.6F;
  
  public float getInterpolation(float paramFloat)
  {
    return axc.a(paramFloat, a, b);
  }
}

/* Location:
 * Qualified Name:     axd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */