import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.phone.DebugActivity;

final class bmc
  implements Runnable
{
  bmc(bmb parambmb) {}
  
  public void run()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setType("text/plain");
    localIntent.setClassName("com.google.android.gm", "com.google.android.gm.ComposeActivityGmail");
    String str = String.valueOf(a.a.c.a);
    if (str.length() != 0) {}
    for (str = "conversation ".concat(str);; str = new String("conversation "))
    {
      localIntent.putExtra("android.intent.extra.SUBJECT", str);
      localIntent.putExtra("android.intent.extra.TEXT", DebugActivity.a(a.a.b, a.a.c.a));
      a.a.a.startActivity(localIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bmc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */