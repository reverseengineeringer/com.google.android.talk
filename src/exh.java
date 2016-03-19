import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;

public final class exh
  implements ListAdapter
{
  private exf a;
  private LayoutInflater b;
  
  public exh(LayoutInflater paramLayoutInflater)
  {
    exd localexd = eye.a().b();
    if ((localexd instanceof exf))
    {
      a = ((exf)localexd);
      b = paramLayoutInflater;
      return;
    }
    throw new IllegalStateException("Can't make an ICS adapter when lower than ICS");
  }
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public int getCount()
  {
    int i = 0;
    int j = 0;
    while (i < a.b().size())
    {
      int k = a.b().keyAt(i);
      j += a.b().get(k)).a;
      i += 1;
    }
    return j;
  }
  
  public Object getItem(int paramInt)
  {
    SparseArray localSparseArray = a.b();
    int i = 0;
    int j = 0;
    while (i < localSparseArray.size())
    {
      exg localexg = (exg)localSparseArray.get(localSparseArray.keyAt(i));
      if (a + j > paramInt) {
        return b[(paramInt - j)];
      }
      j += 1;
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
    paramView = (Bitmap)getItem(paramInt);
    if (paramView != null)
    {
      paramViewGroup = (TextView)localView.findViewById(aen.gD);
      TextView localTextView1 = (TextView)localView.findViewById(aen.gE);
      TextView localTextView2 = (TextView)localView.findViewById(aen.gF);
      TextView localTextView3 = (TextView)localView.findViewById(aen.gG);
      ImageView localImageView = (ImageView)localView.findViewById(aen.aL);
      paramViewGroup.setText("");
      localTextView1.setText("");
      paramInt = paramView.getWidth();
      int i = paramView.getHeight();
      localTextView2.setText(23 + paramInt + "x" + i);
      localTextView3.setText(paramView.toString());
      localImageView.setImageDrawable(new BitmapDrawable(paramView));
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
 * Qualified Name:     exh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */