import android.content.Context;
import android.view.View;

final class wj
  extends tx
{
  public wj(we paramwe, Context paramContext, tl paramtl, View paramView)
  {
    super(paramContext, paramtl, paramView, true, aen.F);
    a();
    a(k);
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    if (f.c != null) {
      f.c.close();
    }
    f.h = null;
  }
}

/* Location:
 * Qualified Name:     wj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */