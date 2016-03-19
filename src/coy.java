import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewParent;
import android.widget.TextView;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteItemView;

public final class coy
  implements View.OnClickListener
{
  public coy(InviteItemView paramInviteItemView, bg parambg) {}
  
  public void onClick(View paramView)
  {
    paramView = ((TextView)((View)paramView.getParent().getParent().getParent()).findViewById(aal.mD)).getText().toString();
    caa localcaa = caa.a(b.f, paramView);
    localcaa.a(new coz(this, paramView));
    localcaa.a(a, null);
  }
}

/* Location:
 * Qualified Name:     coy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */