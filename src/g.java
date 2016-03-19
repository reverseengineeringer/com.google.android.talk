import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;

public class g
  implements da
{
  private static final String a = g.class.getSimpleName();
  private Bitmap b;
  private eal c;
  private int d = 0;
  
  public cy a(cy paramcy)
  {
    if (Build.VERSION.SDK_INT < 21) {
      return paramcy;
    }
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("large_icon", b);
    localBundle.putInt("app_color", d);
    localBundle.putBundle("car_conversation", eal.a(c));
    paramcy.f().putBundle("android.car.EXTENSIONS", localBundle);
    return paramcy;
  }
  
  public g a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public g a(eal parameal)
  {
    c = parameal;
    return this;
  }
}

/* Location:
 * Qualified Name:     g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */