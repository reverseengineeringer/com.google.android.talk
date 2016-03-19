import android.view.View;
import android.widget.AbsListView.RecyclerListener;
import com.google.android.apps.hangouts.views.MessageListItemView;
import java.util.List;

final class boc
  implements AbsListView.RecyclerListener
{
  boc(bng parambng) {}
  
  public void onMovedToScrapHeap(View paramView)
  {
    if ((paramView instanceof MessageListItemView)) {
      ((MessageListItemView)paramView).A();
    }
    a.bk.remove(paramView);
  }
}

/* Location:
 * Qualified Name:     boc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */