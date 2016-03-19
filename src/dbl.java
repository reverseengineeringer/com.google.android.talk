import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.google.android.apps.hangouts.hangout.StressMode;

final class dbl
  implements View.OnCreateContextMenuListener
{
  dbl(dbh paramdbh) {}
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if ((paramView instanceof fce))
    {
      paramContextMenu.add(0, 201, 0, StressMode.fF);
      paramView = ((fce)paramView).a();
      a.al = paramView;
      if (paramView.o())
      {
        paramContextMenu.add(0, 200, 0, StressMode.fn);
        paramContextMenu.setHeaderTitle(StressMode.fj);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dbl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */