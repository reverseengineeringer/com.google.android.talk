import android.view.View;
import android.widget.AbsListView.RecyclerListener;
import com.google.android.apps.hangouts.views.MessageListItemView;

final class bhy
  implements AbsListView.RecyclerListener
{
  bhy(bhx parambhx) {}
  
  public void onMovedToScrapHeap(View paramView)
  {
    if ((paramView instanceof MessageListItemView)) {
      ((MessageListItemView)paramView).m();
    }
  }
}

/* Location:
 * Qualified Name:     bhy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */