import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;

public final class cah
  implements AbsListView.OnScrollListener
{
  public cah(ConversationListFragment paramConversationListFragment) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (ConversationListFragment.a)
    {
      boolean bool1 = a.g;
      boolean bool2 = a.u();
      boolean bool3 = a.t();
      new StringBuilder(103).append("onScroll initialLoadFinished=").append(bool1).append(" mExhaustedConversationsToLoad=").append(bool2).append(" mLoadingOlderConversations=").append(bool3);
    }
    if ((a.g) && (paramInt1 + paramInt2 == paramInt3))
    {
      ezi.a("Babel_ConvListFragment", "Checking for more conversations", new Object[0]);
      if (a.q()) {
        a.a(a.getView());
      }
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     cah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */