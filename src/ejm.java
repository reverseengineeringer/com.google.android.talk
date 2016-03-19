import android.content.Intent;
import com.google.android.apps.hangouts.phone.HiddenContactsActivity;

final class ejm
  implements ijh
{
  ejm(ejl paramejl) {}
  
  public boolean a()
  {
    ba localba = a.getActivity();
    bfd localbfd = a.b;
    Intent localIntent = new Intent(aal.oJ, HiddenContactsActivity.class);
    if (localbfd != null) {
      localIntent.putExtra("account_id", localbfd.g());
    }
    localba.startActivity(localIntent);
    return true;
  }
}

/* Location:
 * Qualified Name:     ejm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */