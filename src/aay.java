import android.support.v7.widget.SwitchCompat;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public final class aay
  extends Animation
{
  final float a;
  final float b;
  final float c;
  
  public aay(SwitchCompat paramSwitchCompat, float paramFloat1, float paramFloat2)
  {
    a = paramFloat1;
    b = paramFloat2;
    c = (paramFloat2 - paramFloat1);
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    d.a(a + c * paramFloat);
  }
}

/* Location:
 * Qualified Name:     aay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */