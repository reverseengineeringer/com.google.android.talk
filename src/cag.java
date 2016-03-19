import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;

public final class cag
  implements View.OnClickListener
{
  public cag(ConversationListFragment paramConversationListFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent();
    paramView.putExtra("opened_from_impression", 2149);
    paramView.putExtra("account_id", a.d.g());
    a.i.a(paramView);
  }
}

/* Location:
 * Qualified Name:     cag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */