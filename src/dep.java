import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.phone.DebugActivity;
import com.google.android.apps.hangouts.phone.DebugActivity.RecordingService;

public final class dep
  extends BaseAdapter
{
  public dep(DebugActivity paramDebugActivity, Cursor paramCursor, int[] paramArrayOfInt) {}
  
  public int getCount()
  {
    return a.getCount();
  }
  
  public Object getItem(int paramInt)
  {
    a.moveToPosition(paramInt);
    return a;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = c.getLayoutInflater().inflate(aal.gl, paramViewGroup, false);
    }
    TextView localTextView1 = (TextView)localView.findViewById(aen.dL);
    TextView localTextView2 = (TextView)localView.findViewById(aen.he);
    a.moveToPosition(paramInt);
    int[] arrayOfInt = b;
    int j = arrayOfInt.length;
    paramView = "";
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label181;
      }
      int k = arrayOfInt[i];
      try
      {
        paramViewGroup = String.valueOf(paramView);
        String str = String.valueOf(a.getString(k));
        paramViewGroup = String.valueOf(paramViewGroup).length() + 2 + String.valueOf(str).length() + paramViewGroup + str + ", ";
        paramView = paramViewGroup;
      }
      catch (SQLiteException paramViewGroup)
      {
        for (;;)
        {
          paramView = String.valueOf(paramView).concat("???, ");
        }
      }
      i += 1;
    }
    label181:
    localTextView1.setText(13 + "@ " + paramInt);
    localTextView2.setText(paramView);
    localView.setBackgroundColor(-1);
    if ((c.e != null) && (c.e.e != null))
    {
      paramInt = a.getColumnIndex("conversation_id");
      if ((paramInt >= 0) && (TextUtils.equals(a.getString(paramInt), c.e.e))) {
        localView.setBackgroundColor(-536809248);
      }
    }
    return localView;
  }
}

/* Location:
 * Qualified Name:     dep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */