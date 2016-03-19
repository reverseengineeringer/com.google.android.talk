import android.os.Build.VERSION;
import android.view.VelocityTracker;

public final class ko
{
  static final kr a = new kp();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new kq();
      return;
    }
  }
  
  public static float a(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.a(paramVelocityTracker, paramInt);
  }
  
  public static float b(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.b(paramVelocityTracker, paramInt);
  }
}

/* Location:
 * Qualified Name:     ko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */