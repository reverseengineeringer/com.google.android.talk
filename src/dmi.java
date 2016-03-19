import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.apps.hangouts.promo.impl.PromoActivity;

final class dmi
  implements hpw, ilu, ioz
{
  private final Context a;
  private dmj b;
  
  dmi(Context paramContext, iog paramiog)
  {
    a = paramContext;
    paramiog.a(this);
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((dmj)paramilh.a(dmj.class));
    ((hpu)paramilh.a(hpu.class)).a(this);
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      b.a(a);
      if (b.b(a) > 0)
      {
        paramhpv1 = new Intent(a, PromoActivity.class);
        paramhpv1.putExtra("account_id", paramInt2);
        a.startActivity(paramhpv1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dmi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */