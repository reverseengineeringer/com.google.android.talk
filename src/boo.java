import android.widget.ListAdapter;
import android.widget.ListView;

final class boo
  implements Runnable
{
  boo(bng parambng, bfd parambfd, bjb parambjb, String paramString, bkq parambkq) {}
  
  public void run()
  {
    if (aal.a(e.context, "babel_extra_log_scrolling", false))
    {
      boolean bool = e.aF;
      ezi.c("Babel_Scroll", 41 + "sendMessage postDelay autoScrolling:" + bool, new Object[0]);
    }
    if ((e.aF) && (aal.a(e.context, "babel_disable_events_on_auto_scroll", true)))
    {
      ezi.d("Babel_Scroll", "force selection was required.", new Object[0]);
      e.aF = false;
      ((ListView)e.bB).setSelection(((ListView)e.bB).getAdapter().getCount() - 1);
    }
    e.aF = false;
    String str = e.bw.a(a.g(), b.a, c, d, e.f.c(), e.d());
    e.g.a(b.a, str);
  }
}

/* Location:
 * Qualified Name:     boo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */