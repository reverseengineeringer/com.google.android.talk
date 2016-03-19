import android.os.Handler;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteListFragment;
import java.util.concurrent.TimeUnit;

public final class cpd
  implements Runnable
{
  public cpd(InviteListFragment paramInviteListFragment) {}
  
  public void run()
  {
    ((cpa)a.bA).notifyDataSetChanged();
    a.e.postDelayed(a.f, TimeUnit.SECONDS.toMillis(60L));
  }
}

/* Location:
 * Qualified Name:     cpd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */