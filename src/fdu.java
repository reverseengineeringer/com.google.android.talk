import android.view.View;
import com.google.android.apps.hangouts.views.MultiLineLayout;

public class fdu
{
  fdu(MultiLineLayout paramMultiLineLayout) {}
  
  public void a(int paramInt)
  {
    b.getRootView();
    boolean bool = ezc.c();
    int k;
    int m;
    int i;
    label67:
    label144:
    label154:
    int n;
    if (bool)
    {
      k = b.getPaddingRight();
      int j = b.getPaddingTop();
      int i1 = b.getPaddingLeft();
      int i2 = b.getPaddingRight();
      int i3 = b.getChildCount();
      m = 0;
      i = 0;
      if (m >= i3) {
        break label243;
      }
      View localView = b.getChildAt(m);
      if (localView.getVisibility() == 8) {
        break label257;
      }
      a(localView);
      int i5 = localView.getMeasuredWidth();
      int i4 = localView.getMeasuredHeight();
      if (k + i5 <= paramInt - i1 - i2) {
        break label244;
      }
      if (!bool) {
        break label225;
      }
      k = b.getPaddingRight();
      j += i;
      i = k;
      k = 0;
      if (!bool) {
        break label237;
      }
      n = b.getWidth() - i - i5;
      label173:
      a(localView, n, j, i5, i4);
      n = i + i5;
      i = Math.max(k, i4);
      k = n;
    }
    label225:
    label237:
    label243:
    label244:
    label257:
    for (;;)
    {
      m += 1;
      break label67;
      k = b.getPaddingLeft();
      break;
      k = b.getPaddingLeft();
      break label144;
      n = i;
      break label173;
      return;
      n = i;
      i = k;
      k = n;
      break label154;
    }
  }
  
  protected void a(View paramView) {}
  
  protected void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
}

/* Location:
 * Qualified Name:     fdu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */