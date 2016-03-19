import android.view.animation.Interpolator;

final class qb
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    paramFloat -= 1.0F;
    return paramFloat * (paramFloat * paramFloat * paramFloat * paramFloat) + 1.0F;
  }
}

/* Location:
 * Qualified Name:     qb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */