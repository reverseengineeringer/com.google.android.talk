import android.app.Activity;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;

public final class aj
  extends ey
{
  public static void a(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramActivity.finishAffinity();
      return;
    }
    paramActivity.finish();
  }
  
  public static void a(Activity paramActivity, String[] paramArrayOfString, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      if ((paramActivity instanceof am)) {
        ((am)paramActivity).a_(paramInt);
      }
      paramActivity.requestPermissions(paramArrayOfString, paramInt);
    }
    while (!(paramActivity instanceof al)) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new ak(paramArrayOfString, paramActivity, paramInt));
  }
}

/* Location:
 * Qualified Name:     aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */