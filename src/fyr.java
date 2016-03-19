import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.google.android.gms.googlehelp.GoogleHelp;
import java.util.List;

public final class fyr
{
  public final Activity a;
  final fic b;
  
  public fyr(Activity paramActivity)
  {
    this(paramActivity, new fid(paramActivity).a(fzj.c).b());
  }
  
  private fyr(Activity paramActivity, fic paramfic)
  {
    a = paramActivity;
    b = paramfic;
  }
  
  public void a(Intent paramIntent)
  {
    if ((!paramIntent.getAction().equals("com.google.android.gms.googlehelp.HELP")) || (!paramIntent.hasExtra("EXTRA_GOOGLE_HELP"))) {
      throw new IllegalArgumentException("The intent you are trying to launch is not GoogleHelp intent! This class only supports GoogleHelp intents.");
    }
    int j = fhr.a(a);
    if (j == 0)
    {
      fzj.a(b, new fys(this, paramIntent));
      return;
    }
    paramIntent = (GoogleHelp)paramIntent.getParcelableExtra("EXTRA_GOOGLE_HELP");
    paramIntent = new Intent("android.intent.action.VIEW").setData(paramIntent.b());
    if (j != 7)
    {
      if (a.getPackageManager().queryIntentActivities(paramIntent, 0).size() > 0) {}
      for (int i = 1; i != 0; i = 0)
      {
        a.startActivity(paramIntent);
        return;
      }
    }
    fhr.a(j, a);
  }
}

/* Location:
 * Qualified Name:     fyr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */