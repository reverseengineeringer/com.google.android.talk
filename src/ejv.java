import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class ejv
  implements DialogInterface.OnClickListener
{
  ejv(eju parameju) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.a;
    if (a.a.b().a == null) {
      throw new RuntimeException("gaiaId not provided");
    }
    Intent localIntent = new Intent("com.google.android.gms.people.profile.ACTION_SET_AVATAR");
    localIntent.putExtra("com.google.android.gms.people.profile.EXTRA_ACCOUNT", paramDialogInterface.a());
    if (paramDialogInterface.y()) {
      localIntent.putExtra("com.google.android.gms.people.profile.EXTRA_PAGE_ID", paramDialogInterface.U());
    }
    a.startActivityForResult(localIntent, 1);
  }
}

/* Location:
 * Qualified Name:     ejv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */