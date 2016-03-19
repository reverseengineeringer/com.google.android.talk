import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import com.google.android.libraries.social.actionbar.ActionBarSpinner;

public final class hrw
  implements SpinnerAdapter
{
  final SpinnerAdapter a;
  private int c = -1;
  
  public hrw(ActionBarSpinner paramActionBarSpinner, SpinnerAdapter paramSpinnerAdapter)
  {
    a = paramSpinnerAdapter;
  }
  
  public void a()
  {
    c = -1;
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public int getCount()
  {
    return a.getCount();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a.getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt)
  {
    if (c != -1) {
      paramInt = c;
    }
    return a.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    if (c != -1) {
      paramInt = c;
    }
    return a.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    if (c != -1) {
      paramInt = c;
    }
    return a.getItemViewType(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (c != -1) {
      paramInt = c;
    }
    return a.getView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return a.getViewTypeCount();
  }
  
  public boolean hasStableIds()
  {
    return a.hasStableIds();
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    a.registerDataSetObserver(paramDataSetObserver);
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    a.unregisterDataSetObserver(paramDataSetObserver);
  }
}

/* Location:
 * Qualified Name:     hrw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */