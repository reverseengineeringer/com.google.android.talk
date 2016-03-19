import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class hrx
  implements inf, ing, inh, ioz
{
  List<a> a = new ArrayList();
  private boolean b;
  
  public hrx(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public void a()
  {
    b = true;
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    if ((b) && (paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1))
    {
      paramKeyEvent = a.iterator();
      while (paramKeyEvent.hasNext()) {
        if (((a)paramKeyEvent.next()).r()) {
          return true;
        }
      }
    }
    return false;
  }
  
  public void b()
  {
    b = false;
  }
}

/* Location:
 * Qualified Name:     hrx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */