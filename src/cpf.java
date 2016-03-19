import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteListFragment;

public final class cpf
  implements AbsListView.OnScrollListener
{
  public cpf(InviteListFragment paramInviteListFragment) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (InviteListFragment.a)
    {
      boolean bool1 = a.bA).p;
      boolean bool2 = ((cpa)a.bA).l();
      boolean bool3 = ((cpa)a.bA).n();
      new StringBuilder(103).append("onScroll initialLoadFinished=").append(bool1).append(" mExhaustedConversationsToLoad=").append(bool2).append(" mLoadingOlderConversations=").append(bool3);
    }
    if ((a.bA).p) && (paramInt1 + paramInt2 == paramInt3))
    {
      ezi.a("Babel_InviteListFrag", "Checking for more conversations", new Object[0]);
      if (((cpa)a.bA).k()) {
        a.a(a.getView());
      }
    }
    ((cpa)a.bA).m();
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     cpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */