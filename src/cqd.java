import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.invites.offnetwork.impl.OffnetworkInviteActivity;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;

final class cqd
  implements View.OnClickListener
{
  cqd(cqb paramcqb, String paramString) {}
  
  public void onClick(View paramView)
  {
    if (b.c() != null) {
      b.c().dismiss();
    }
    paramView = (awo)b.an.a(awo.class);
    int i = b.aj.a();
    if (paramView.d(i)) {}
    for (paramView = BabelGatewayActivity.a(i, null, a, "", false, null);; paramView = OffnetworkInviteActivity.a(b.getContext(), "", a))
    {
      b.getContext().startActivity(paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */