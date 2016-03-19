import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView;

public final class dao
  implements TextWatcher
{
  public dao(EditParticipantsView paramEditParticipantsView) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    a.b.a(paramEditable.toString());
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     dao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */