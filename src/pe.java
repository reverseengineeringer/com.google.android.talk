import android.view.View;
import android.widget.ListView;

public final class pe
  extends nx
{
  private final ListView f;
  
  public pe(ListView paramListView)
  {
    super(paramListView);
    f = paramListView;
  }
  
  public void b(int paramInt)
  {
    ListView localListView = f;
    int i = localListView.getFirstVisiblePosition();
    if (i == -1) {}
    View localView;
    do
    {
      return;
      localView = localListView.getChildAt(0);
    } while (localView == null);
    localListView.setSelectionFromTop(i, localView.getTop() - paramInt);
  }
  
  public boolean c(int paramInt)
  {
    ListView localListView = f;
    int i = localListView.getCount();
    if (i == 0) {}
    int j;
    int k;
    do
    {
      return false;
      j = localListView.getChildCount();
      k = localListView.getFirstVisiblePosition();
      if (paramInt <= 0) {
        break;
      }
    } while ((k + j >= i) && (localListView.getChildAt(j - 1).getBottom() <= localListView.getHeight()));
    do
    {
      return true;
      if (paramInt >= 0) {
        break;
      }
    } while ((k > 0) || (localListView.getChildAt(0).getTop() < 0));
    return false;
  }
}

/* Location:
 * Qualified Name:     pe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */