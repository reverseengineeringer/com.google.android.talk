import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class fej
  extends Animation
{
  private final boolean b;
  private final int c;
  
  fej(feh paramfeh, int paramInt, boolean paramBoolean)
  {
    b = paramBoolean;
    c = paramInt;
    b.setVisibility(0);
    if (paramBoolean) {
      paramInt = 1;
    }
    paramfeh.a(paramInt);
  }
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    int i;
    if (paramFloat == 1.0F) {
      i = c;
    }
    for (;;)
    {
      a.a(i);
      return;
      float f = paramFloat;
      if (!b) {
        f = 1.0F - paramFloat;
      }
      int j = (int)(c * f);
      i = j;
      if (j <= 0) {
        i = 1;
      }
    }
  }
  
  public boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     fej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */