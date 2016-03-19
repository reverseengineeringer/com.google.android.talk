import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

public final class ld
  implements View.OnApplyWindowInsetsListener
{
  public ld(kg paramkg) {}
  
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    paramWindowInsets = new mr(paramWindowInsets);
    return ((mr)a.a(paramView, paramWindowInsets)).e();
  }
}

/* Location:
 * Qualified Name:     ld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */