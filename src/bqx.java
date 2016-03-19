import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;

public final class bqx
  extends ikt
{
  private bra aj;
  
  public static void a(Context paramContext, bg parambg)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramContext.getString(aal.ki));
    localBundle.putString("message", paramContext.getString(aal.kj));
    localBundle.putString("positive", paramContext.getString(aal.kk));
    localBundle.putString("negative", paramContext.getString(aal.kh));
    paramContext = new bqx();
    paramContext.setArguments(localBundle);
    paramContext.a(parambg, "off_the_record_alert");
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    aj = ((bra)an.a(bra.class));
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case -1: 
      ezi.c("Babel_OffTheRecAlertDlg", "OTR status changed dialog: User clicked sent.", new Object[0]);
      aj.a();
      return;
    }
    ezi.c("Babel_OffTheRecAlertDlg", "OTR status changed dialog: User clicked cancel.", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     bqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */