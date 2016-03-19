import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.ContextThemeWrapper;

public final class ice
  extends ime
{
  private iad aj;
  
  public static void a(bg parambg)
  {
    parambg = (au)parambg.a("login.progress");
    if (parambg != null) {}
    try
    {
      parambg.a();
      return;
    }
    catch (Exception parambg) {}
  }
  
  public static void a(bg parambg, String paramString, boolean paramBoolean)
  {
    if (b(parambg)) {
      throw new IllegalStateException("Progress dialog is already showing");
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString);
    localBundle.putBoolean("cancelable", paramBoolean);
    paramString = new ice();
    paramString.setArguments(localBundle);
    paramString.a(parambg, "login.progress");
  }
  
  public static boolean b(bg parambg)
  {
    return parambg.a("login.progress") != null;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    paramBundle = new ProgressDialog(new ContextThemeWrapper(getActivity(), aen.kq));
    paramBundle.setMessage(getArguments().getString("message"));
    paramBundle.setProgressStyle(0);
    paramBundle.setCancelable(getArguments().getBoolean("cancelable"));
    return paramBundle;
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    aj = ((iad)an.a(iad.class));
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    aj.c();
  }
}

/* Location:
 * Qualified Name:     ice
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */