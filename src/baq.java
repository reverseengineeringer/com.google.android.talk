import android.content.IntentFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;

final class baq
  implements View.OnClickListener
{
  baq(bap parambap) {}
  
  public void onClick(View paramView)
  {
    paramView = a;
    i.a(2247);
    e.getIndeterminateDrawable().setColorFilter(ey.b(paramView.getContext(), aen.ht), PorterDuff.Mode.SRC_IN);
    e.bringToFront();
    e.setVisibility(0);
    h = new bar(paramView);
    fi.a(context).a(h, new IntentFilter("set_callerid_outcome"));
    ((azk)binder.b(azk.class)).a(c, true, d);
  }
}

/* Location:
 * Qualified Name:     baq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */