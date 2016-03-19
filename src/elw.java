import android.app.AlertDialog.Builder;
import android.content.Context;

public final class elw
  extends iiv
{
  private CharSequence[] c;
  
  public elw(Context paramContext)
  {
    super(paramContext, null);
  }
  
  protected void a(AlertDialog.Builder paramBuilder)
  {
    paramBuilder.setAdapter(new elx(this, y(), aal.gQ, f(), c), this);
    paramBuilder.setNegativeButton(null, null);
    super.a(paramBuilder);
  }
  
  public void a(CharSequence[] paramArrayOfCharSequence)
  {
    c = paramArrayOfCharSequence;
  }
}

/* Location:
 * Qualified Name:     elw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */