import android.app.ProgressDialog;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;

public final class byk
  implements bym
{
  private byl a;
  private bg b;
  
  public byk(bg parambg)
  {
    b = parambg;
    a = new byl();
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a.a(paramOnCancelListener);
  }
  
  public void a(String paramString)
  {
    if (b != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("message", paramString);
      a.setArguments(localBundle);
      paramString = b.a();
      a.a(paramString, null);
    }
  }
  
  public void b(String paramString)
  {
    ProgressDialog localProgressDialog = (ProgressDialog)a.c();
    if (localProgressDialog != null) {
      localProgressDialog.setMessage(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     byk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */