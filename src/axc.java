import android.animation.TimeInterpolator;

public final class axc
  implements TimeInterpolator
{
  private final float a = 0.85F;
  private final float b = 0.6F;
  
  public axc() {}
  
  public axc(byte paramByte) {}
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramFloat1 = paramFloat1 * 2.0F - 1.0F;
    if (paramFloat1 < 0.0F) {
      return ((float)-Math.pow(-paramFloat1, paramFloat2) + 1.0F) / 2.0F;
    }
    return ((float)Math.pow(paramFloat1, paramFloat3) + 1.0F) / 2.0F;
  }
  
  public float getInterpolation(float paramFloat)
  {
    return a(paramFloat, a, b);
  }
}

/* Location:
 * Qualified Name:     axc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */