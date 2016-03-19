import android.os.Build.VERSION;
import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.apps.hangouts.fragments.dialpad.DigitsEditText;

public final class cea
  implements TextWatcher
{
  public cea(DigitsEditText paramDigitsEditText) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      aal.a(paramEditable);
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     cea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */