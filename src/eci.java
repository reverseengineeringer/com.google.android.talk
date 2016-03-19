import android.app.Activity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class eci
  extends axv
{
  public static eci a;
  public static boolean b = false;
  private static final boolean c;
  
  static
  {
    imx localimx = ezi.o;
    c = false;
  }
  
  protected void b()
  {
    b = false;
    int[] arrayOfInt = dvd.g();
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      eck.a(dvd.e(arrayOfInt[i]), false);
      i += 1;
    }
  }
  
  public void b(Activity paramActivity)
  {
    int j = 0;
    int i;
    if (new exk(paramActivity, "com.google.android.apps.hangouts.phone.notify_set_active", "com.google.android.apps.hangouts.phone.force_set_active").a()) {
      i = 1;
    }
    while (i != 0)
    {
      b = true;
      paramActivity = dvd.g();
      int k = paramActivity.length;
      i = j;
      while (i < k)
      {
        bfd localbfd = dvd.e(paramActivity[i]);
        if (localbfd != null)
        {
          eck.a(localbfd, true);
          RealTimeChatService.c(localbfd);
        }
        i += 1;
      }
      if ((!new exk(paramActivity, "com.google.android.apps.hangouts.phone.notify_set_active", "com.google.android.apps.hangouts.phone.block_set_active").a()) && (!b) && ((paramActivity instanceof ecj)) && (!aal.v(paramActivity.getApplicationContext()))) {
        i = 1;
      } else {
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     eci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */