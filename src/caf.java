import android.os.Handler;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import java.util.concurrent.TimeUnit;

public final class caf
  implements Runnable
{
  public caf(ConversationListFragment paramConversationListFragment) {}
  
  public void run()
  {
    if (a.al == null) {
      ((cam)a.bA).notifyDataSetChanged();
    }
    a.am.postDelayed(a.an, TimeUnit.SECONDS.toMillis(60L));
  }
}

/* Location:
 * Qualified Name:     caf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */