import android.view.View;
import com.google.android.apps.hangouts.views.MultiLineLayout;

public final class fds
  extends fdu
{
  public fds(MultiLineLayout paramMultiLineLayout)
  {
    super(paramMultiLineLayout);
  }
  
  protected void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }
}

/* Location:
 * Qualified Name:     fds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */