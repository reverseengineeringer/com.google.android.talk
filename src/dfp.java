import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.phone.DebugBitmapsActivity;

public final class dfp
  implements ListAdapter
{
  dfp(DebugBitmapsActivity paramDebugBitmapsActivity) {}
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public int getCount()
  {
    return 13;
  }
  
  public Object getItem(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return bfq.k();
    case 1: 
      return bfq.a(beo.b);
    case 2: 
      return bfq.l();
    case 3: 
      return bfq.h();
    case 4: 
      return bfq.j();
    case 5: 
      return bfq.f();
    case 6: 
      return bfq.f();
    case 7: 
      return bfq.c();
    case 8: 
      return bfq.g();
    case 9: 
      return bfq.i();
    case 10: 
      return bfq.e();
    case 11: 
      return bfq.e();
    }
    return bfq.b();
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
      localView = a.getLayoutInflater().inflate(aal.fu, paramViewGroup, false);
    }
    paramView = (Bitmap)getItem(paramInt);
    TextView localTextView1;
    TextView localTextView2;
    TextView localTextView3;
    ImageView localImageView;
    if (paramView != null)
    {
      paramViewGroup = (TextView)localView.findViewById(aen.gD);
      localTextView1 = (TextView)localView.findViewById(aen.gE);
      localTextView2 = (TextView)localView.findViewById(aen.gF);
      localTextView3 = (TextView)localView.findViewById(aen.gG);
      localImageView = (ImageView)localView.findViewById(aen.aL);
      switch (paramInt)
      {
      }
    }
    for (;;)
    {
      localTextView1.setText("");
      paramInt = paramView.getWidth();
      int i = paramView.getHeight();
      localTextView2.setText(23 + paramInt + "x" + i);
      localTextView3.setText(paramView.toString());
      localImageView.setImageDrawable(new BitmapDrawable(paramView));
      return localView;
      paramViewGroup.setText("DefaultCircleAvatar");
      continue;
      paramViewGroup.setText("MediumDefaultAvatarWithSmsBadge");
      continue;
      paramViewGroup.setText("MissedCallPstnAvatar");
      continue;
      paramViewGroup.setText("RectBusinessAvatar");
      continue;
      paramViewGroup.setText("RectLargeBusinessAvatar");
      continue;
      paramViewGroup.setText("RectLargeDefaultAvatar");
      continue;
      paramViewGroup.setText("RectLargePstnAvatar");
      continue;
      paramViewGroup.setText("RectMediumDefaultAvatar");
      continue;
      paramViewGroup.setText("RoundBusinessAvatar");
      continue;
      paramViewGroup.setText("RoundLargeBusinessAvatar");
      continue;
      paramViewGroup.setText("RoundLargeDefaultAvatar");
      continue;
      paramViewGroup.setText("RoundLargePstnAvatar");
      continue;
      paramViewGroup.setText("RoundMediumDefaultAvatar");
    }
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
 * Qualified Name:     dfp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */