import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.google.android.apps.hangouts.callerid.impl.CallerIdPromoActivity;

final class bal
  implements DialogInterface.OnClickListener
{
  bal(bah parambah, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = b;
    paramDialogInterface = ezm.g(a[paramInt]);
    Context localContext1 = b;
    Context localContext2 = b;
    paramInt = c;
    localObject = new Intent(localContext2, CallerIdPromoActivity.class);
    ((Intent)localObject).setAction("android.intent.action.VIEW");
    ((Intent)localObject).putExtra("account_id", paramInt);
    ((Intent)localObject).putExtra("callerid_from_promo_flow", false);
    ((Intent)localObject).putExtra("callerid_current_sim_number", paramDialogInterface);
    localContext1.startActivity((Intent)localObject);
  }
}

/* Location:
 * Qualified Name:     bal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */