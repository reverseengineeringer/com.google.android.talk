import android.os.Build.VERSION;
import android.view.View.OnSystemUiVisibilityChangeListener;

final class abu
  implements View.OnSystemUiVisibilityChangeListener
{
  abu(abn paramabn) {}
  
  public void onSystemUiVisibilityChange(int paramInt)
  {
    if ((Build.VERSION.SDK_INT >= 19) && (paramInt == 0) && (a.d == 3846)) {
      a.a(false, true);
    }
  }
}

/* Location:
 * Qualified Name:     abu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */