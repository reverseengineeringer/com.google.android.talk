import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import java.util.Collection;
import java.util.List;

public abstract class efo
  implements egs
{
  private static final long serialVersionUID = 1L;
  public String a;
  public czb b;
  public long c;
  
  public efo(String paramString, czb paramczb, long paramLong)
  {
    a = paramString;
    b = paramczb;
    c = paramLong;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(int paramInt, knq<Intent> paramknq)
  {
    Object localObject3 = dvd.e(paramInt);
    Object localObject1 = dvd.e((bfd)localObject3);
    Object localObject2 = new dyy();
    ((dyy)localObject2).a((bfd)localObject3);
    ((dyy)localObject2).b();
    a(new bfz(aal.oJ, paramInt), (dyy)localObject2);
    ((dyy)localObject2).e();
    Object localObject4 = ((dyy)localObject2).c();
    if (!((List)localObject4).isEmpty())
    {
      if (ezi.a("Babel", 3))
      {
        int i = ((List)localObject4).size();
        String str = String.valueOf(getClass().getSimpleName());
        ezi.a("Babel", String.valueOf(str).length() + 66 + "processServerUpdate: sending " + i + " requests from processing " + str, new Object[0]);
      }
      if (localObject1 != null) {
        ((dvm)localObject1).a((Collection)localObject4, 0);
      }
    }
    localObject4 = ((dyy)localObject2).f();
    if (ezi.a("Babel", 3))
    {
      localObject1 = String.valueOf(((dza)localObject4).toString());
      if (((String)localObject1).length() != 0)
      {
        localObject1 = "update should trigger notification? ".concat((String)localObject1);
        ezi.a("Babel", (String)localObject1, new Object[0]);
      }
    }
    else
    {
      if (!(this instanceof egf)) {
        break label520;
      }
      localObject2 = (egf)this;
      localObject1 = ((egf)localObject2).a();
      localObject2 = ((egf)localObject2).j();
    }
    for (;;)
    {
      long l = SystemClock.elapsedRealtime();
      if (localObject4 == dza.b)
      {
        aen.a(paramInt, l, 10, new csn().a(453).c((String)localObject2).a((String)localObject1));
        paramknq = (AlarmManager)aal.oJ.getSystemService("alarm");
        localObject3 = new Intent("com.google.android.apps.hangouts.DEFERRED_NOTIFICATION");
        ((Intent)localObject3).putExtra("op", 2);
        ((Intent)localObject3).putExtra("account_id", paramInt);
        ((Intent)localObject3).putExtra("message_id", (String)localObject2);
        ((Intent)localObject3).putExtra("conversation_id", (String)localObject1);
        paramInt = eyr.a(paramInt, 1, 110, null);
        localObject1 = PendingIntent.getBroadcast(aal.oJ, paramInt, (Intent)localObject3, 134217728);
        paramknq.set(2, SystemClock.elapsedRealtime() + aal.a(aal.oJ, "babel_latenotifdly", 3000L), (PendingIntent)localObject1);
      }
      do
      {
        return;
        localObject1 = new String("update should trigger notification? ");
        break;
        if (localObject4 == dza.e) {
          aen.a(paramInt, l, 10, new csn().a(403).c((String)localObject2).a((String)localObject1));
        }
        ((cyh)ilh.a(aal.oJ, cyh.class)).a(paramInt, (dza)localObject4, true, paramknq);
      } while ((!(this instanceof efr)) || (!((bfd)localObject3).A()) || (b.equals(((bfd)localObject3).b())));
      ((cyh)ilh.a(aal.oJ, cyh.class)).b(paramInt);
      return;
      label520:
      localObject2 = "";
      localObject1 = "";
    }
  }
  
  protected abstract void a(bfz parambfz, dyy paramdyy);
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public czb b()
  {
    return b;
  }
  
  public long c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     efo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */