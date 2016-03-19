import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ListView;

final class cdd
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private int b;
  private boolean c;
  private boolean d = true;
  
  cdd(cdb paramcdb) {}
  
  public void onGlobalLayout()
  {
    hbs.b("Expected non-null", a.f.findViewById(aen.ev));
    if (!c)
    {
      b = a.f.getMeasuredHeight();
      c = true;
    }
    if (a.b().getMeasuredHeight() > b) {
      if (!d)
      {
        d = true;
        a.f.findViewById(aen.ev).setVisibility(8);
      }
    }
    while (!d) {
      return;
    }
    d = false;
    a.f.findViewById(aen.ev).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     cdd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */