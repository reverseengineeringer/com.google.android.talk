import android.animation.Keyframe;

final class htm
  extends hth
  implements htn
{
  private float i;
  private float j;
  
  public htm(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public void a(Keyframe paramKeyframe1, Keyframe paramKeyframe2)
  {
    i = paramKeyframe1.getFraction();
    j = (paramKeyframe2.getFraction() - i);
  }
  
  public float getInterpolation(float paramFloat)
  {
    return i + j * super.getInterpolation((paramFloat - i) / j);
  }
}

/* Location:
 * Qualified Name:     htm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */