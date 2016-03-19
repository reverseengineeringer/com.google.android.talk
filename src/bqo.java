import android.app.Activity;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.google.android.libraries.quantum.snackbar.Snackbar;

public final class bqo
  extends epc
{
  public bqo(av paramav, iog paramiog)
  {
    super(paramav, paramiog);
  }
  
  public bqo a(ilh paramilh)
  {
    super.b(paramilh);
    return this;
  }
  
  protected void a(epa paramepa, boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)c.getParent();
    Snackbar localSnackbar = (Snackbar)b.getLayoutInflater().inflate(aal.fg, localViewGroup, false);
    localViewGroup.addView(localSnackbar);
    a(localSnackbar);
    super.a(paramepa, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     bqo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */