import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.TabWidget;

final class bms
  implements Runnable
{
  bms(bmp parambmp) {}
  
  public void run()
  {
    bmp localbmp = a;
    if (localbmp.getView() != null)
    {
      c.b();
      FrameLayout localFrameLayout = (FrameLayout)localbmp.getView().findViewById(aal.jK);
      ViewGroup.LayoutParams localLayoutParams = localFrameLayout.getLayoutParams();
      height = d;
      localFrameLayout.setLayoutParams(localLayoutParams);
      localFrameLayout.setVisibility(0);
      localbmp.c(b);
      localbmp.d().setStripEnabled(true);
    }
  }
}

/* Location:
 * Qualified Name:     bms
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */