import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.apps.hangouts.fragments.CallContactPickerFragment;

public final class byy
  implements TextWatcher
{
  public byy(CallContactPickerFragment paramCallContactPickerFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    aal.a(paramEditable);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    a.a.a(paramCharSequence);
    if (paramCharSequence.length() == 0)
    {
      if (a.e == 0) {
        a.a(0);
      }
    }
    else {
      return;
    }
    a.a(2);
  }
}

/* Location:
 * Qualified Name:     byy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */