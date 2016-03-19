import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;

final class chy
  extends Animation
{
  chy(chu paramchu, ViewGroup.LayoutParams paramLayoutParams, int paramInt1, int paramInt2, LinearLayout paramLinearLayout, boolean paramBoolean) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    paramTransformation = (FrameLayout.LayoutParams)a;
    bottomMargin = (b + (int)(c * paramFloat));
    d.setLayoutParams(paramTransformation);
    if (e) {
      d.setAlpha(paramFloat);
    }
    for (;;)
    {
      if (paramFloat == 1.0F) {
        f.d();
      }
      return;
      d.setAlpha(1.0F - paramFloat);
    }
  }
}

/* Location:
 * Qualified Name:     chy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */