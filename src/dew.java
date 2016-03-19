import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class dew
  implements AdapterView.OnItemClickListener
{
  dew(DebugActivity paramDebugActivity, Cursor paramCursor) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.moveToPosition(paramInt);
    paramAdapterView = a.getString(a.getColumnIndex("_id"));
    paramAdapterView = b.c.e().a("conversation_participants_view", null, "_id=?", new String[] { paramAdapterView }, null);
    paramView = b.getLayoutInflater().inflate(aal.fA, null);
    ((ListView)paramView.findViewById(16908298)).setAdapter(b.a(paramAdapterView));
    b.a(paramView, paramAdapterView, null);
  }
}

/* Location:
 * Qualified Name:     dew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */