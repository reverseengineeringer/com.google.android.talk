import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

public class cbo<ListViewType extends AbsListView, AdapterType extends dhp>
  extends cbu<ListViewType>
  implements AbsListView.OnScrollListener
{
  public AdapterType bA;
  
  public boolean isEmpty()
  {
    return (bA == null) || (bA.a() == null) || (bA.getCount() == 0);
  }
  
  public void onDetach()
  {
    if (bA != null) {
      bA.b(null);
    }
    super.onDetach();
  }
  
  public void onPause()
  {
    super.onPause();
    if ((bA != null) && (bA.a() != null)) {
      bA.c();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if ((bA != null) && (bA.a() != null)) {
      bA.d();
    }
  }
}

/* Location:
 * Qualified Name:     cbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */