import android.view.View;
import android.view.inputmethod.InputMethodManager;

public final class exm
  implements ios, ioz
{
  private final av a;
  
  public exm(av paramav, iog paramiog)
  {
    a = paramav;
    paramiog.a(this);
  }
  
  public void a()
  {
    ((InputMethodManager)a.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
  }
}

/* Location:
 * Qualified Name:     exm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */