import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;

final class elt
  implements ijh
{
  elt(elp paramelp) {}
  
  public boolean a()
  {
    try
    {
      ba localba = a.getActivity();
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.setComponent(new ComponentName("com.android.cellbroadcastreceiver", "com.android.cellbroadcastreceiver.CellBroadcastListActivity"));
      localIntent.setFlags(268435456);
      localba.startActivity(localIntent);
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      for (;;)
      {
        ezi.d("Babel", "Could not set wireless alert prefs", localActivityNotFoundException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     elt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */