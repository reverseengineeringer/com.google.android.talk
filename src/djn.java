import android.content.Context;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.provider.Telephony.Sms;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class djn
  implements Runnable
{
  private final ezv a = ezv.a("StartupLogger");
  private final Context b;
  
  public djn(Context paramContext)
  {
    b = paramContext;
  }
  
  public void run()
  {
    String str = a.b("Stats");
    hpz localhpz = (hpz)ilh.a(b, hpz.class);
    Object localObject1 = (eot)ilh.a(b, eot.class);
    Object localObject2 = localhpz.a().iterator();
    Object localObject3;
    do
    {
      if (!((Iterator)localObject2).hasNext()) {
        break;
      }
      localObject3 = (Integer)((Iterator)localObject2).next();
    } while (((eot)localObject1).a(aal.a((Integer)localObject3, 0)));
    for (int i = aal.a((Integer)localObject3, 0);; i = -1)
    {
      localObject3 = ((hba)ilh.a(b, hba.class)).a(i);
      localObject2 = new kky();
      localObject1 = dvd.d;
      boolean bool;
      int j;
      if (dvi.a())
      {
        a = Integer.valueOf(1);
        ((haw)localObject3).a(2811).a(TimeUnit.DAYS);
        bool = ((eot)ilh.a(b, eot.class)).d();
        if (!bool) {
          break label405;
        }
        j = 2814;
        label191:
        ((haw)localObject3).a(j).a(TimeUnit.DAYS);
        b = Boolean.valueOf(bool);
        localObject1 = dvd.d;
        bool = dvi.a();
        j = localhpz.a().size();
        c = Integer.valueOf(3);
        if (j != 1) {
          break label412;
        }
        if (!bool) {}
      }
      for (c = Integer.valueOf(1);; c = Integer.valueOf(2)) {
        label405:
        label412:
        do
        {
          localObject1 = new csn().a((kky)localObject2).a(2001);
          aen.a(i, SystemClock.elapsedRealtime(), 10, (csn)localObject1);
          a.c(str);
          return;
          localObject1 = "";
          if (Build.VERSION.SDK_INT >= 19) {
            localObject1 = Telephony.Sms.getDefaultSmsPackage(b);
          }
          if (TextUtils.isEmpty((CharSequence)localObject1)) {
            break;
          }
          if (((String)localObject1).contains("com.google.android.apps.messaging"))
          {
            a = Integer.valueOf(2);
            ((haw)localObject3).a(2812).a(TimeUnit.DAYS);
            break;
          }
          a = Integer.valueOf(3);
          ((haw)localObject3).a(2813).a(TimeUnit.DAYS);
          break;
          j = 2815;
          break label191;
        } while ((j <= 1) || (!bool));
      }
    }
  }
}

/* Location:
 * Qualified Name:     djn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */