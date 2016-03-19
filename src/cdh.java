import android.app.AlertDialog;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

final class cdh
  implements TextWatcher
{
  cdh(cde paramcde, AlertDialog paramAlertDialog) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    a.getButton(-1).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     cdh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */