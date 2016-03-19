import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;

final class bmz
  implements TextWatcher
{
  bmz(bmx parambmx, Context paramContext) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    fbt.a(a).a(paramEditable, b.b);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    bnd localbnd = b.k;
    aal.y().removeCallbacks(localbnd);
    b.k.a(paramCharSequence, paramInt2, paramInt3);
    aal.a(b.k);
  }
}

/* Location:
 * Qualified Name:     bmz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */