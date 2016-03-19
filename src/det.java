import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class det
  implements View.OnClickListener
{
  det(DebugActivity paramDebugActivity, String paramString, View paramView1, View paramView2, View paramView3) {}
  
  public void onClick(View paramView)
  {
    paramView = e.c.e().a("conversation_participants_view", null, "conversation_id=?", new String[] { a }, null);
    Object localObject = e.getLayoutInflater().inflate(aal.fA, null);
    e.a((View)localObject, paramView, new deu(this));
    b.setVisibility(8);
    c.setVisibility(8);
    d.setVisibility(8);
    localObject = (ListView)((View)localObject).findViewById(16908298);
    ((ListView)localObject).setAdapter(e.a(paramView, new int[] { paramView.getColumnIndex("full_name") }));
    ((ListView)localObject).setOnItemClickListener(new dew(e, paramView));
  }
}

/* Location:
 * Qualified Name:     det
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */