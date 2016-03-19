import android.text.Editable;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import com.google.android.apps.hangouts.peoplelistv2.impl.DeleteOnEmptyEditText;

public final class dab
  extends InputConnectionWrapper
{
  public dab(DeleteOnEmptyEditText paramDeleteOnEmptyEditText, InputConnection paramInputConnection)
  {
    super(paramInputConnection, true);
  }
  
  public boolean deleteSurroundingText(int paramInt1, int paramInt2)
  {
    if ((a.getText().length() == 0) && (a.a != null)) {
      a.a.a();
    }
    return super.deleteSurroundingText(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     dab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */