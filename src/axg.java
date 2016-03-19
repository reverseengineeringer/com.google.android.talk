import android.view.animation.AccelerateDecelerateInterpolator;

final class axg
  extends AccelerateDecelerateInterpolator
{
  private axb b = new axb(0.2F);
  
  axg(axe paramaxe) {}
  
  public float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(b.getInterpolation(paramFloat));
  }
}

/* Location:
 * Qualified Name:     axg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */