import android.view.View;
import java.lang.ref.WeakReference;

final class me
  implements Runnable
{
  WeakReference<View> a;
  md b;
  
  me(mj parammj, md parammd, View paramView)
  {
    a = new WeakReference(paramView);
    b = parammd;
  }
  
  public void run()
  {
    View localView = (View)a.get();
    if (localView != null) {
      c.c(b, localView);
    }
  }
}

/* Location:
 * Qualified Name:     me
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */