import android.view.View;
import com.google.android.apps.hangouts.views.MultiLineLayout;

public final class fdt
  extends fdu
{
  private int c;
  private int d;
  private int e;
  private int f;
  
  public fdt(MultiLineLayout paramMultiLineLayout)
  {
    super(paramMultiLineLayout);
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    c += a.getPaddingRight();
    d += a.getPaddingBottom();
    MultiLineLayout.a(a, View.resolveSize(c, e), View.resolveSize(d, f));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c = 0;
    d = 0;
    e = paramInt1;
    f = paramInt2;
  }
  
  protected void a(View paramView)
  {
    MultiLineLayout.a(a, paramView, e, f);
  }
  
  protected void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c = Math.max(c, paramInt1 + paramInt3);
    d = Math.max(d, paramInt2 + paramInt4);
  }
}

/* Location:
 * Qualified Name:     fdt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */