import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.callmemaybe.NewPlusAccountService;

public class bbu
  implements iaw
{
  private final Context a;
  private final hpz b;
  
  public bbu(Context paramContext, ilh paramilh)
  {
    a = paramContext;
    b = ((hpz)paramilh.a(hpz.class));
  }
  
  public void a(int paramInt)
  {
    if (!b.c(paramInt)) {}
    int i;
    do
    {
      do
      {
        return;
        localObject1 = b.a(paramInt);
        i = ((hqb)localObject1).a("PAGE_NOTIFICATION_COUNT", 0);
      } while ((((hqb)localObject1).b("effective_gaia_id") == null) || (!((hqb)localObject1).d("is_business_features_eligible")) || (((hqb)localObject1).d("business_features_promo_shown")) || (i >= 3));
      new bbv(a, paramInt).a(true);
      i += 1;
      b.b(paramInt).b("PAGE_NOTIFICATION_COUNT", i).d();
    } while (i >= 3);
    Object localObject1 = a;
    Object localObject2 = dvd.e(paramInt);
    Intent localIntent = new Intent((Context)localObject1, NewPlusAccountService.class);
    localIntent.putExtra("account_id", ((bfd)localObject2).g());
    localObject2 = PendingIntent.getService((Context)localObject1, 0, localIntent, 0);
    ((AlarmManager)((Context)localObject1).getSystemService("alarm")).set(1, 604800000L, (PendingIntent)localObject2);
  }
}

/* Location:
 * Qualified Name:     bbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */