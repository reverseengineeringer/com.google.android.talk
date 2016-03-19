import android.widget.AbsListView;
import android.widget.ListView;

final class boe
  implements Runnable
{
  boe(bng parambng, AbsListView paramAbsListView, bfd parambfd) {}
  
  public void run()
  {
    if ((!c.ar) && (c.getActivity() != null) && (!c.getActivity().isFinishing()))
    {
      ((ListView)c.bB).setSelection(((bhx)c.bA).getCount() - 1);
      aal.a(new bof(this), 200L);
    }
  }
}

/* Location:
 * Qualified Name:     boe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */