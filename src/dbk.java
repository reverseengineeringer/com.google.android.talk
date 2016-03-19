import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.List;

final class dbk
  implements View.OnClickListener
{
  dbk(dbh paramdbh, View paramView) {}
  
  public void onClick(View paramView)
  {
    a.setVisibility(8);
    paramView = (dck)b.binder.a(dck.class);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("android.permission.READ_CONTACTS");
    localArrayList.add("android.permission.WRITE_CONTACTS");
    paramView.a(new dco(StressMode.tW, 2653), localArrayList);
  }
}

/* Location:
 * Qualified Name:     dbk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */