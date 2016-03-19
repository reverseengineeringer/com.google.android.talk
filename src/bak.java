import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.google.android.apps.hangouts.callerid.impl.CallerIdPromoActivity;
import java.util.ArrayList;
import java.util.Iterator;

final class bak
  implements ijh
{
  bak(bah parambah) {}
  
  public boolean a()
  {
    Object localObject1 = a;
    Object localObject2 = ezm.g(a);
    Object localObject3 = new kti();
    Object localObject4 = dvd.e(c);
    aen.a(localObject4);
    localObject4 = ((bfd)localObject4).s().iterator();
    String str1;
    for (;;)
    {
      if (((Iterator)localObject4).hasNext())
      {
        str1 = (String)((Iterator)localObject4).next();
        String str2 = ezm.g(str1);
        if (str2 != null) {
          if (!str2.equals(localObject2)) {
            break;
          }
        }
      }
    }
    for (localObject1 = kth.b(a);; localObject1 = ((kti)localObject3).a())
    {
      if (!((kth)localObject1).isEmpty()) {
        break label144;
      }
      Toast.makeText(a.b, aal.iy, 0).show();
      return true;
      ((kti)localObject3).c(str1);
      break;
    }
    label144:
    if (((kth)localObject1).size() == 1)
    {
      localObject2 = a;
      localObject1 = (String)aal.a((Iterable)localObject1);
      localObject3 = b;
      localObject4 = b;
      int i = c;
      localObject2 = new Intent((Context)localObject4, CallerIdPromoActivity.class);
      ((Intent)localObject2).setAction("android.intent.action.VIEW");
      ((Intent)localObject2).putExtra("account_id", i);
      ((Intent)localObject2).putExtra("callerid_from_promo_flow", false);
      ((Intent)localObject2).putExtra("callerid_current_sim_number", (String)localObject1);
      ((Context)localObject3).startActivity((Intent)localObject2);
      return true;
    }
    a.a((kth)localObject1);
    return true;
  }
}

/* Location:
 * Qualified Name:     bak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */