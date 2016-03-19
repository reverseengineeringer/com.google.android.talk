import android.view.View;
import android.widget.AbsListView;

final class bof
  implements Runnable
{
  bof(boe paramboe) {}
  
  public void run()
  {
    int i;
    if ((!a.c.ar) && (a.c.getActivity() != null) && (!a.c.getActivity().isFinishing()))
    {
      View localView = a.a.getChildAt(a.a.getChildCount() - 1);
      if ((localView == null) || (localView.getBottom() <= a.a.getBottom())) {
        break label127;
      }
      i = 1;
      if (a.a.getLastVisiblePosition() >= a.a.getCount() - 1) {
        break label132;
      }
      aal.a(a.b, 2947);
    }
    label127:
    label132:
    while (i == 0)
    {
      return;
      i = 0;
      break;
    }
    aal.a(a.b, 2953);
  }
}

/* Location:
 * Qualified Name:     bof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */