import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class dfh
  implements Runnable
{
  public dfh(DebugActivity paramDebugActivity, String paramString) {}
  
  public void run()
  {
    DebugActivity localDebugActivity = b;
    String str = a;
    Cursor localCursor = c.e().a("conversations", null, "conversation_id=?", new String[] { str }, "sort_timestamp DESC");
    View localView = localDebugActivity.getLayoutInflater().inflate(aal.fA, null);
    Button localButton1 = (Button)localView.findViewById(aen.gd);
    Button localButton2 = (Button)localView.findViewById(aen.gf);
    Button localButton3 = (Button)localView.findViewById(aen.ge);
    if ("conversations_view".equals("conversations"))
    {
      localButton1.setText("switch to conversation view");
      localButton1.setVisibility(0);
      localButton1.setOnClickListener(new des(localDebugActivity, str));
    }
    localButton2.setText("show participants");
    localButton2.setVisibility(0);
    localButton2.setOnClickListener(new det(localDebugActivity, str, localButton3, localButton2, localButton1));
    localButton3.setText("show messages");
    localButton3.setVisibility(0);
    localButton3.setOnClickListener(new deq(localDebugActivity, str, localButton3, localButton2, localButton1));
    ((ListView)localView.findViewById(16908298)).setAdapter(localDebugActivity.a(localCursor));
    localDebugActivity.a(localView, localCursor, null);
  }
}

/* Location:
 * Qualified Name:     dfh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */