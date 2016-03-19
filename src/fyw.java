import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.googlehelp.GoogleHelp;

class fyw<R extends fim>
  extends fir<R, fyx>
{
  private fyw(fic paramfic)
  {
    super(fzj.a, paramfic);
  }
  
  public fyw(fic paramfic, byte paramByte)
  {
    this(paramfic);
  }
  
  fyw(fyu paramfyu, fic paramfic, Intent paramIntent, Bitmap paramBitmap, Activity paramActivity)
  {
    this(paramfic, (byte)0);
  }
  
  protected void a(fzc paramfzc)
  {
    try
    {
      paramfzc.a((GoogleHelp)a.getParcelableExtra("EXTRA_GOOGLE_HELP"), b, new fyv(this));
      return;
    }
    catch (Exception paramfzc)
    {
      Log.e("gH_GoogleHelpApiImpl", "Starting help failed!", paramfzc);
      c(fyu.a);
    }
  }
  
  protected Status d(Status paramStatus)
  {
    return paramStatus;
  }
}

/* Location:
 * Qualified Name:     fyw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */