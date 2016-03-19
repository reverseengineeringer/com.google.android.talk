import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.SimpleExpandableListAdapter;
import com.google.android.apps.hangouts.phone.ViewVCardActivity;
import java.util.List;

public final class djt
  extends Handler
{
  private ViewVCardActivity a;
  
  public djt(ViewVCardActivity paramViewVCardActivity)
  {
    super(Looper.getMainLooper());
    a = paramViewVCardActivity;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    case 1002: 
    default: 
      return;
    case 1001: 
      a.k = true;
      if (a.n.isEmpty()) {
        a.finish();
      }
      a.y_();
      return;
    }
    paramMessage = (aeu)obj;
    a.a(paramMessage, a.n, a.o);
    paramMessage = a;
    ExpandableListView localExpandableListView = p;
    List localList1 = n;
    int i = aal.gS;
    List localList2 = o;
    int j = aal.gT;
    localExpandableListView.setAdapter(new SimpleExpandableListAdapter(paramMessage, localList1, i, new String[] { "data" }, new int[] { 16908308 }, localList2, j, new String[] { "type", "data" }, new int[] { 16908308, 16908309 }));
    p.setFocusable(true);
    p.getEmptyView().setVisibility(8);
    p.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     djt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */