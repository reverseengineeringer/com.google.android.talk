import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.google.android.apps.hangouts.phone.ViewVCardActivity;

public final class djr
  implements Runnable
{
  public djr(ViewVCardActivity paramViewVCardActivity, Uri paramUri) {}
  
  public void run()
  {
    afo localafo = new afo();
    afy localafy = new afy();
    try
    {
      bool = ViewVCardActivity.a(b, a, 0, localafy, true);
      if (!bool)
      {
        b.q.post(new djs(this));
        return;
      }
    }
    catch (age localage2)
    {
      for (;;)
      {
        try
        {
          int i = localafy.c();
          bool = ViewVCardActivity.a(b, a, i, localafo, false);
        }
        catch (age localage1)
        {
          String str = String.valueOf(localage1);
          Log.e("Babel", String.valueOf(str).length() + 21 + "Must not reach here. " + str);
          boolean bool = false;
        }
      }
      b.a(a, localafy);
    }
  }
}

/* Location:
 * Qualified Name:     djr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */