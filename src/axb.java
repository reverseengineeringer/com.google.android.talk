import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;

public final class axb
  implements TimeInterpolator
{
  private DecelerateInterpolator a;
  
  public axb(float paramFloat)
  {
    a = new DecelerateInterpolator(paramFloat);
  }
  
  public float getInterpolation(float paramFloat)
  {
    return a.getInterpolation(paramFloat);
  }
}

/* Location:
 * Qualified Name:     axb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */