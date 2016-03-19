import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class deq
  implements View.OnClickListener
{
  deq(DebugActivity paramDebugActivity, String paramString, View paramView1, View paramView2, View paramView3) {}
  
  public void onClick(View paramView)
  {
    paramView = e.c.e().a("messages", null, "conversation_id=?", new String[] { a }, "timestamp ASC");
    Object localObject = e.getLayoutInflater().inflate(aal.fA, null);
    e.a((View)localObject, paramView, new der(this));
    b.setVisibility(8);
    c.setVisibility(8);
    d.setVisibility(8);
    localObject = (ListView)((View)localObject).findViewById(16908298);
    ((ListView)localObject).setAdapter(e.a(paramView, new int[] { paramView.getColumnIndex("text") }));
    ((ListView)localObject).setOnItemClickListener(new dev(e, paramView));
  }
}

/* Location:
 * Qualified Name:     deq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */