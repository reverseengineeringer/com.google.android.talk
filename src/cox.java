import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteItemView;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteListFragment;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class cox
  implements View.OnClickListener
{
  public cox(InviteItemView paramInviteItemView, InviteListFragment paramInviteListFragment) {}
  
  public void onClick(View paramView)
  {
    RealTimeChatService.a(b.f, b.a, true, false, false);
    a.d.a(b.a);
    a.a(1551);
  }
}

/* Location:
 * Qualified Name:     cox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */