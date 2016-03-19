import android.app.AlertDialog.Builder;
import android.content.SharedPreferences;
import android.text.Html;

final class dhd
  extends dgz
{
  final SharedPreferences a;
  private final boolean c;
  
  public dhd(dfq paramdfq, SharedPreferences paramSharedPreferences)
  {
    super("Use desktop to debug all my backend requests");
    a = paramSharedPreferences;
    c = paramSharedPreferences.getBoolean("use_staging_servers", false);
  }
  
  public void a()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(b.a);
    boolean bool = c;
    localBuilder.setTitle(22 + "Current setting: " + bool);
    localBuilder.setMessage(Html.fromHtml("Enabling this mode makes the app talk to staging servers where all requests can be logged using xsds.<br/><b>A restart of the app might be required.</b><br/>\n\nAfter enabling this: Visit xsds.corp.google.com and click 'Unlock'"));
    localBuilder.setPositiveButton("Enable it!", new dhe(this));
    localBuilder.setNegativeButton("Disable it!", new dhf(this));
    localBuilder.show();
  }
}

/* Location:
 * Qualified Name:     dhd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */