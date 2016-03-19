import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.phone.DebugBitmapsActivity;

public final class dfo
  implements ExpandableListAdapter
{
  private exc b;
  private exh c;
  private dfp d;
  
  public dfo(DebugBitmapsActivity paramDebugBitmapsActivity)
  {
    b = new exc(paramDebugBitmapsActivity.getLayoutInflater());
    if (exd.a(paramDebugBitmapsActivity)) {
      c = new exh(paramDebugBitmapsActivity.getLayoutInflater());
    }
    d = new dfp(paramDebugBitmapsActivity);
  }
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public Object getChild(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
    case 0: 
    case 1: 
      do
      {
        return null;
        return b.getItem(paramInt2);
      } while (c == null);
      return c.getItem(paramInt2);
    }
    return d.getItem(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    switch (paramInt1)
    {
    default: 
    case 0: 
    case 1: 
      do
      {
        return null;
        return b.getView(paramInt2, paramView, paramViewGroup);
      } while (c == null);
      return c.getView(paramInt2, paramView, paramViewGroup);
    }
    return d.getView(paramInt2, paramView, paramViewGroup);
  }
  
  public int getChildrenCount(int paramInt)
  {
    switch (paramInt)
    {
    default: 
    case 0: 
    case 1: 
      do
      {
        return 0;
        return b.getCount();
      } while (c == null);
      return c.getCount();
    }
    return d.getCount();
  }
  
  public long getCombinedChildId(long paramLong1, long paramLong2)
  {
    return 1000L * paramLong1 + paramLong2;
  }
  
  public long getCombinedGroupId(long paramLong)
  {
    return paramLong;
  }
  
  public Object getGroup(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return b;
    case 1: 
      return c;
    }
    return d;
  }
  
  public int getGroupCount()
  {
    return 3;
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = (TextView)paramView;
    paramView = paramViewGroup;
    if (paramViewGroup == null)
    {
      paramView = new TextView(a);
      paramView.setTextSize(2, 36.0F);
    }
    switch (paramInt)
    {
    default: 
      return paramView;
    case 0: 
      paramView.setText("   Cached Bitmaps");
      return paramView;
    case 1: 
      paramView.setText("   Pooled Bitmaps");
      return paramView;
    }
    paramView.setText("   Default Bitmaps");
    return paramView;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  public boolean isEmpty()
  {
    return false;
  }
  
  public void onGroupCollapsed(int paramInt) {}
  
  public void onGroupExpanded(int paramInt) {}
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) {}
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver) {}
}

/* Location:
 * Qualified Name:     dfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */