import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.HangoutUtils.JoinedHangoutReceiver;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cgr
{
  private final cgw a;
  private final Context b;
  
  public cgr(Context paramContext, cgw paramcgw)
  {
    hbs.b("Expected non-null", paramcgw);
    a = paramcgw;
    b = paramContext;
  }
  
  private boolean b()
  {
    return a.J() == 1;
  }
  
  public Notification a()
  {
    long l = System.currentTimeMillis();
    Object localObject2 = a.m();
    Resources localResources = b.getResources();
    Object localObject1 = b;
    int i = eyr.a(4);
    Object localObject3 = new Intent("com.google.android.apps.hangouts.hangout.joined");
    ((Intent)localObject3).setComponent(new ComponentName(aal.oJ, HangoutUtils.JoinedHangoutReceiver.class));
    ((Intent)localObject3).setFlags(268435456);
    ((Intent)localObject3).putExtra("session", (String)localObject2);
    localObject1 = PendingIntent.getBroadcast((Context)localObject1, i, (Intent)localObject3, 134217728);
    localObject3 = b;
    i = eyr.a(101);
    Intent localIntent = new Intent("com.google.android.apps.hangouts.hangout.exit");
    localIntent.setComponent(new ComponentName(aal.oJ, HangoutUtils.JoinedHangoutReceiver.class));
    localIntent.putExtra("session", (String)localObject2);
    localObject2 = PendingIntent.getBroadcast((Context)localObject3, i, localIntent, 134217728);
    localObject3 = new cy(b).a(l);
    label212:
    label236:
    int j;
    if ((b()) || (a.K()))
    {
      i = R.drawable.cn;
      localObject3 = ((cy)localObject3).a(i);
      if (!b()) {
        break label301;
      }
      i = StressMode.sP;
      localObject3 = ((cy)localObject3).a(localResources.getString(i));
      if (!b()) {
        break label325;
      }
      i = StressMode.sO;
      localObject1 = ((cy)localObject3).b(localResources.getString(i)).b().a((PendingIntent)localObject1).d(2);
      j = R.drawable.aZ;
      if (!b()) {
        break label332;
      }
    }
    label301:
    label325:
    label332:
    for (i = StressMode.sN;; i = StressMode.cF)
    {
      return ((cy)localObject1).a(j, localResources.getString(i), (PendingIntent)localObject2).g();
      i = R.drawable.cj;
      break;
      if (a.K())
      {
        i = StressMode.td;
        break label212;
      }
      i = StressMode.dB;
      break label212;
      i = StressMode.dA;
      break label236;
    }
  }
}

/* Location:
 * Qualified Name:     cgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */