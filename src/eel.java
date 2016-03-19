import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import java.util.concurrent.ConcurrentHashMap;

public final class eel
  implements eec
{
  eze<Integer> a = new eze();
  ConcurrentHashMap<Integer, knr<Intent, Long>> b = new ConcurrentHashMap();
  
  private void a(Intent paramIntent, boolean paramBoolean)
  {
    int i;
    if (ezc.a())
    {
      i = paramIntent.getIntExtra("android.support.content.wakelockid", -1);
      if (paramBoolean) {
        b.putIfAbsent(Integer.valueOf(i), knr.a(paramIntent, Long.valueOf(SystemClock.elapsedRealtime())));
      }
    }
    else
    {
      return;
    }
    b.remove(Integer.valueOf(i));
  }
  
  private void a(knq<Intent> paramknq)
  {
    if ((paramknq.a()) && (a.c(Integer.valueOf(((Intent)paramknq.b()).getIntExtra("android.support.content.wakelockid", -1)))))
    {
      fu.a((Intent)paramknq.b());
      a((Intent)paramknq.b(), false);
    }
  }
  
  public ComponentName a(Context paramContext, Intent paramIntent, knq<Intent> paramknq)
  {
    if (paramknq.a())
    {
      paramknq = (Intent)paramknq.b();
      fii.a(paramknq.hasExtra("android.support.content.wakelockid"));
      if (paramknq.hasExtra("EXTRA_INTENT_HOLDING_WAKELOCK")) {
        break label78;
      }
    }
    label78:
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      paramIntent.putExtra("EXTRA_INTENT_HOLDING_WAKELOCK", paramknq);
      a.a(Integer.valueOf(paramknq.getIntExtra("android.support.content.wakelockid", -1)));
      a(paramknq, true);
      return paramContext.startService(paramIntent);
    }
  }
  
  public void a(eeb parameeb, Intent paramIntent)
  {
    boolean bool = true;
    if (paramIntent == null)
    {
      parameeb.a(null, kmm.a);
      return;
    }
    if (paramIntent.hasExtra("android.support.content.wakelockid")) {
      if (!paramIntent.hasExtra("EXTRA_INTENT_HOLDING_WAKELOCK"))
      {
        fii.a(bool, "Intent was both holding a wakelock and contained an extra intent holding a wakelock");
        localObject = knq.b(paramIntent);
      }
    }
    for (;;)
    {
      try
      {
        if (((knq)localObject).a())
        {
          a.b(Integer.valueOf(((Intent)((knq)localObject).b()).getIntExtra("android.support.content.wakelockid", -1)));
          a((Intent)((knq)localObject).b(), true);
        }
        paramIntent.removeExtra("EXTRA_INTENT_HOLDING_WAKELOCK");
        parameeb.a(paramIntent, (knq)localObject);
        return;
      }
      finally
      {
        a((knq)localObject);
      }
      bool = false;
      break;
      if (paramIntent.hasExtra("EXTRA_INTENT_HOLDING_WAKELOCK")) {
        localObject = knq.b(paramIntent.getParcelableExtra("EXTRA_INTENT_HOLDING_WAKELOCK"));
      } else {
        localObject = kmm.a;
      }
    }
  }
}

/* Location:
 * Qualified Name:     eel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */