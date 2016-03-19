import android.content.Context;
import android.view.MenuItem;
import android.view.View;

public final class wf
  extends tx
{
  private ue g;
  
  public wf(we paramwe, Context paramContext, ue paramue)
  {
    super(paramContext, paramue, null, false, aen.F);
    g = paramue;
    int j;
    int i;
    if (!((tp)paramue.getItem()).i())
    {
      if (g == null)
      {
        paramContext = (View)f;
        a(paramContext);
      }
    }
    else
    {
      a(k);
      j = paramue.size();
      i = 0;
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        paramwe = paramue.getItem(i);
        if ((paramwe.isVisible()) && (paramwe.getIcon() != null)) {
          bool1 = true;
        }
      }
      else
      {
        a(bool1);
        return;
        paramContext = g;
        break;
      }
      i += 1;
    }
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    f.i = null;
    f.l = 0;
  }
}

/* Location:
 * Qualified Name:     wf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */