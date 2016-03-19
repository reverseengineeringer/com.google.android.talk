import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class bxi
  extends Animation
{
  int a;
  int b;
  View c;
  
  public bxi(View paramView, int paramInt)
  {
    c = paramView;
    a = getLayoutParamsheight;
    b = (paramInt - a);
    setDuration(new ValueAnimator().getDuration());
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    c.getLayoutParams().height = ((int)(a + b * paramFloat));
    c.requestLayout();
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     bxi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */