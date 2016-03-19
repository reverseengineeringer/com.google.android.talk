import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.inputmethod.InputMethodManager;

final class dbu
  extends aae
{
  dbu(dbh paramdbh) {}
  
  public void a(RecyclerView paramRecyclerView, int paramInt)
  {
    ((InputMethodManager)paramRecyclerView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramRecyclerView.getWindowToken(), 0);
  }
  
  public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     dbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */