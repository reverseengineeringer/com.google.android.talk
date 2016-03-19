import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.util.Base64;

public final class fyo
  extends fu
{
  private static String a = "gcm.googleapis.com/refresh";
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent.setComponent(null);
    paramIntent.setPackage(paramContext.getPackageName());
    if (Build.VERSION.SDK_INT <= 18) {
      paramIntent.removeCategory(paramContext.getPackageName());
    }
    String str = paramIntent.getStringExtra("from");
    if (("com.google.android.c2dm.intent.REGISTRATION".equals(paramIntent.getAction())) || ("google.com/iid".equals(str)) || (a.equals(str))) {
      paramIntent.setAction("com.google.android.gms.iid.InstanceID");
    }
    str = paramIntent.getStringExtra("gcm.rawData64");
    if (str != null)
    {
      paramIntent.putExtra("rawData", Base64.decode(str, 0));
      paramIntent.removeExtra("gcm.rawData64");
    }
    if ("com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) {
      a(paramContext, paramIntent);
    }
    for (;;)
    {
      if (isOrderedBroadcast()) {
        setResultCode(-1);
      }
      return;
      a(paramContext, paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     fyo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */