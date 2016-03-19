import android.animation.TimeInterpolator;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

public final class axe
  implements Interpolator
{
  private TimeInterpolator a;
  
  public axe(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      switch (axh.a[(paramInt - 1)])
      {
      }
    }
    for (;;)
    {
      a = ((TimeInterpolator)localObject);
      return;
      localObject = new PathInterpolator(0.4F, 0.0F, 0.2F, 1.0F);
      continue;
      localObject = new PathInterpolator(0.8F, 0.0F, 0.6F, 1.0F);
      continue;
      switch (axh.a[(paramInt - 1)])
      {
      default: 
        break;
      case 1: 
        localObject = new axf(this);
        break;
      case 2: 
        localObject = new axg(this);
      }
    }
  }
  
  public float getInterpolation(float paramFloat)
  {
    return a.getInterpolation(paramFloat);
  }
}

/* Location:
 * Qualified Name:     axe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */