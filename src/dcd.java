import android.content.Context;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;

final class dcd
  implements View.OnFocusChangeListener
{
  dcd(dcc paramdcc) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean) {
      ((InputMethodManager)a.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    }
  }
}

/* Location:
 * Qualified Name:     dcd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */