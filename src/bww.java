import android.app.Dialog;
import android.content.Context;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.google.android.apps.hangouts.floatingactionbutton.impl.FloatingActionButton;
import com.google.android.apps.hangouts.floatingactionbutton.impl.QuickButtonContainer;
import java.util.Iterator;
import java.util.List;

public final class bww
{
  bww(bwy parambwy) {}
  
  public void a(int paramInt)
  {
    Object localObject;
    if (paramInt == bwy.a)
    {
      aal.a(a.l(), 2497);
      a.i.setBackgroundResource(aen.hZ);
      a.m.setVisibility(4);
      if ((a.n instanceof czm))
      {
        paramInt = bwy.b;
        a.m.setVisibility(0);
        a.g.a(paramInt, bwy.b(paramInt), bwx.a);
        a.l.show();
        localObject = a;
        if (bwy.j())
        {
          ((bwy)localObject).a(0, 255);
          ((bwy)localObject).a(new bxo());
        }
      }
    }
    label305:
    do
    {
      for (;;)
      {
        return;
        if ((a.n instanceof czo))
        {
          paramInt = bwy.c;
          break;
        }
        localObject = String.valueOf(a.n);
        throw new AssertionError(String.valueOf(localObject).length() + 32 + "Unexpected primary action type: " + (String)localObject);
        if ((paramInt == bwy.b) || (paramInt == bwy.c))
        {
          localObject = a.m.getContext();
          a.n.a((Context)localObject);
          return;
        }
        if (paramInt != bwy.d) {
          break label305;
        }
        aal.a(a.l(), 2498);
        localObject = a.y.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((View.OnClickListener)((Iterator)localObject).next()).onClick(a.g);
        }
      }
    } while ((paramInt != bwy.e) || (a.z == null));
    aal.a(a.l(), 2499);
    a.z.onClick(a.g);
  }
}

/* Location:
 * Qualified Name:     bww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */