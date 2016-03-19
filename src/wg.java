import android.view.View;

final class wg
  implements Runnable
{
  private wj b;
  
  public wg(we paramwe, wj paramwj)
  {
    b = paramwj;
  }
  
  public void run()
  {
    a.c.f();
    View localView = (View)a.f;
    if ((localView != null) && (localView.getWindowToken() != null) && (b.e())) {
      a.h = b;
    }
    a.j = null;
  }
}

/* Location:
 * Qualified Name:     wg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */