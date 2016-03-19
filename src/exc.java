import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class exc
  implements ListAdapter
{
  private exb a = eye.a();
  private LayoutInflater b;
  
  public exc(LayoutInflater paramLayoutInflater)
  {
    b = paramLayoutInflater;
  }
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public int getCount()
  {
    return a.a().size();
  }
  
  public Object getItem(int paramInt)
  {
    Iterator localIterator = a.a().entrySet().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramInt == i) {
        return localEntry;
      }
      i += 1;
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = b.inflate(aal.fu, paramViewGroup, false);
    }
    Object localObject = (Map.Entry)getItem(paramInt);
    if (localObject != null)
    {
      TextView localTextView1 = (TextView)localView.findViewById(aen.gD);
      TextView localTextView2 = (TextView)localView.findViewById(aen.gE);
      paramView = (TextView)localView.findViewById(aen.gF);
      paramViewGroup = (TextView)localView.findViewById(aen.gG);
      ImageView localImageView = (ImageView)localView.findViewById(aen.aL);
      localTextView1.setText((CharSequence)((Map.Entry)localObject).getKey());
      paramInt = ((eys)((Map.Entry)localObject).getValue()).i();
      localTextView2.setText(21 + "refcount: " + paramInt);
      localObject = ((eys)((Map.Entry)localObject).getValue()).f();
      paramInt = ((Bitmap)localObject).getWidth();
      int i = ((Bitmap)localObject).getHeight();
      paramView.setText(23 + paramInt + "x" + i);
      paramViewGroup.setText(localObject.toString());
      localImageView.setImageDrawable(new BitmapDrawable((Bitmap)localObject));
    }
    return localView;
  }
  
  public int getViewTypeCount()
  {
    return 1;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isEmpty()
  {
    return getCount() != 0;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return true;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) {}
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver) {}
}

/* Location:
 * Qualified Name:     exc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */