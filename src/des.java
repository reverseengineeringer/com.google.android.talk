import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class des
  implements View.OnClickListener
{
  des(DebugActivity paramDebugActivity, String paramString) {}
  
  public void onClick(View paramView)
  {
    paramView = b;
    String str = a;
    Cursor localCursor = c.e().a("conversations_view", null, "conversation_id=?", new String[] { str }, "sort_timestamp DESC");
    View localView = paramView.getLayoutInflater().inflate(aal.fA, null);
    Button localButton1 = (Button)localView.findViewById(aen.gd);
    Button localButton2 = (Button)localView.findViewById(aen.gf);
    Button localButton3 = (Button)localView.findViewById(aen.ge);
    if ("conversations_view".equals("conversations_view"))
    {
      localButton1.setText("switch to conversation view");
      localButton1.setVisibility(0);
      localButton1.setOnClickListener(new des(paramView, str));
    }
    localButton2.setText("show participants");
    localButton2.setVisibility(0);
    localButton2.setOnClickListener(new det(paramView, str, localButton3, localButton2, localButton1));
    localButton3.setText("show messages");
    localButton3.setVisibility(0);
    localButton3.setOnClickListener(new deq(paramView, str, localButton3, localButton2, localButton1));
    ((ListView)localView.findViewById(16908298)).setAdapter(paramView.a(localCursor));
    paramView.a(localView, localCursor, null);
  }
}

/* Location:
 * Qualified Name:     des
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */