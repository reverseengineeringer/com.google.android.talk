import android.view.animation.AccelerateDecelerateInterpolator;

final class axf
  extends AccelerateDecelerateInterpolator
{
  private axb b = new axb(0.8F);
  
  axf(axe paramaxe) {}
  
  public float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(b.getInterpolation(paramFloat));
  }
}

/* Location:
 * Qualified Name:     axf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */