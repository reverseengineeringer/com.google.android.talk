import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.phone.BabelHomeActivity;
import com.google.android.apps.hangouts.phone.ConversationActivity;
import com.google.android.apps.hangouts.phone.HangoutUrlHandlerActivity;
import com.google.android.apps.hangouts.phone.ShareIntentActivity;
import com.google.android.apps.hangouts.phone.ShowDialerActivity;
import java.util.concurrent.TimeUnit;

public final class dux
  extends axv
{
  private static dux b = null;
  private final Context a;
  private boolean c;
  private hba d;
  
  public dux(Context paramContext)
  {
    a = paramContext;
    d = ((hba)ilh.a(paramContext, hba.class));
  }
  
  protected void a(Activity paramActivity)
  {
    int i;
    if ((paramActivity instanceof BabelHomeActivity)) {
      if (c)
      {
        i = 2266;
        aal.a(null, i);
        paramActivity = dvd.a(a);
        if (paramActivity == null) {
          break label290;
        }
        i = paramActivity.g();
        label40:
        paramActivity = dvd.d;
        if (!dvi.a()) {
          break label295;
        }
      }
    }
    label290:
    label295:
    for (int j = 2752;; j = 2753)
    {
      d.a(i).a(j).a(TimeUnit.DAYS);
      c = false;
      return;
      i = 2269;
      break;
      if ((paramActivity instanceof HangoutUrlHandlerActivity))
      {
        if (c)
        {
          i = 1962;
          break;
        }
        i = 1971;
        break;
      }
      if ((paramActivity instanceof ShareIntentActivity))
      {
        if (c)
        {
          i = 1966;
          break;
        }
        i = 1975;
        break;
      }
      if ((paramActivity instanceof ShowDialerActivity))
      {
        if (c)
        {
          i = 2267;
          break;
        }
        i = 2270;
        break;
      }
      if ((paramActivity instanceof HangoutActivity))
      {
        if (c)
        {
          i = 2268;
          break;
        }
        i = 2271;
        break;
      }
      if ((paramActivity instanceof ConversationActivity))
      {
        paramActivity = paramActivity.getIntent();
        if ((paramActivity != null) && (paramActivity.getBooleanExtra("is_chat_notification", false)) && (c))
        {
          ((cqs)ilh.a(a, cqs.class)).a(17).a("hangout_launch_remote_notification");
          i = 1963;
          break;
        }
      }
      if (c)
      {
        i = 1967;
        break;
      }
      i = 1976;
      break;
      i = -1;
      break label40;
    }
  }
  
  protected void b()
  {
    aal.a(null, 2272);
  }
  
  protected void j_()
  {
    c = true;
  }
}

/* Location:
 * Qualified Name:     dux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */