import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.TextView;

final class dkt
  implements TextWatcher
{
  dkt(dkr paramdkr) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    a.b.setVisibility(8);
    a.c.setVisibility(0);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     dkt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */