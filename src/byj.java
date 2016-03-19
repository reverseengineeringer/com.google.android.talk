import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;

public final class byj
  implements bym
{
  private ProgressDialog a;
  
  public byj(Context paramContext)
  {
    a = new ProgressDialog(paramContext);
    a.setProgressStyle(0);
  }
  
  public void a()
  {
    if (a != null)
    {
      if (a.isShowing()) {
        a.dismiss();
      }
      a = null;
    }
  }
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a.setOnCancelListener(paramOnCancelListener);
  }
  
  public void a(String paramString)
  {
    a.setMessage(paramString);
    a.show();
  }
  
  public void b(String paramString)
  {
    a.setMessage(paramString);
  }
}

/* Location:
 * Qualified Name:     byj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */