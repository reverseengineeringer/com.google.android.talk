import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class ays
  implements DialogInterface.OnClickListener
{
  ays(ayq paramayq, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent("android.intent.action.VIEW");
    Activity localActivity = b.a;
    paramInt = a;
    paramDialogInterface.setData(Uri.parse(((hpz)ilh.a(localActivity, hpz.class)).a(paramInt).a("app_upgrade_url", "")));
    b.a.startActivity(paramDialogInterface);
    b.a.finish();
  }
}

/* Location:
 * Qualified Name:     ays
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */