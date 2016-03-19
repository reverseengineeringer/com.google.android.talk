import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;

public final class ccx
  extends dhp
{
  private final boolean j;
  private final bfd k;
  private final cyx l;
  private final fch m;
  
  public ccx(Context paramContext, bfd parambfd, cyx paramcyx, boolean paramBoolean, fch paramfch)
  {
    super(paramContext, null);
    k = parambfd;
    l = paramcyx;
    j = paramBoolean;
    m = paramfch;
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = new fce(paramContext, k);
    paramContext.a(m);
    return paramContext;
  }
  
  public void a(View paramView, Cursor paramCursor)
  {
    if (l != null)
    {
      paramCursor = l;
      paramView = (fce)paramView;
      paramView.k();
      if (j) {
        break label58;
      }
    }
    label58:
    for (boolean bool = true;; bool = false)
    {
      paramView.a(bea.a(paramCursor, null, bool), null, false, fcj.f);
      return;
      paramCursor = beu.a(k, paramCursor);
      break;
    }
  }
  
  public int getCount()
  {
    int n = super.getCount();
    int i = n;
    if (l != null) {
      i = Math.max(1, n);
    }
    return i;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView != null)
    {
      localView = paramView;
      if (!(paramView instanceof fce)) {
        localView = null;
      }
    }
    return super.getView(paramInt, localView, paramViewGroup);
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     ccx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */