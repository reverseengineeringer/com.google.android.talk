import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;

final class dku
  implements View.OnFocusChangeListener
{
  dku(dkr paramdkr) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)a.getActivity().getSystemService("input_method");
    if (localInputMethodManager != null) {
      localInputMethodManager.showSoftInput(paramView, 1);
    }
  }
}

/* Location:
 * Qualified Name:     dku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */