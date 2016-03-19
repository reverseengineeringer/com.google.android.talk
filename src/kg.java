import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public final class kg
{
  public kg(ri paramri) {}
  
  public mq a(View paramView, mq parammq)
  {
    int k = 1;
    int i1 = 0;
    int i = parammq.b();
    Object localObject1 = a;
    ViewGroup.MarginLayoutParams localMarginLayoutParams;
    Object localObject2;
    label230:
    label238:
    int m;
    if ((s != null) && ((s.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)))
    {
      localMarginLayoutParams = (ViewGroup.MarginLayoutParams)s.getLayoutParams();
      if (s.isShown())
      {
        if (L == null)
        {
          L = new Rect();
          M = new Rect();
        }
        localObject2 = L;
        Rect localRect = M;
        ((Rect)localObject2).set(0, i, 0, 0);
        vz.a(y, (Rect)localObject2, localRect);
        if (top == 0)
        {
          j = i;
          if (topMargin == j) {
            break label467;
          }
          topMargin = i;
          if (A != null) {
            break label369;
          }
          A = new View(a);
          A.setBackgroundColor(a.getResources().getColor(aal.B));
          y.addView(A, -1, new ViewGroup.LayoutParams(-1, i));
          j = 1;
          if (A == null) {
            break label410;
          }
          if ((j) || (k == 0)) {
            break label461;
          }
          m = 0;
          label254:
          int n = k;
          k = m;
          m = j;
          j = n;
          label270:
          if (m != 0) {
            s.setLayoutParams(localMarginLayoutParams);
          }
          m = j;
        }
      }
    }
    for (int j = k;; j = i)
    {
      if (A != null)
      {
        localObject1 = A;
        if (m == 0) {
          break label442;
        }
      }
      label369:
      label410:
      label442:
      for (k = i1;; k = 8)
      {
        ((View)localObject1).setVisibility(k);
        localObject1 = parammq;
        if (i != j) {
          localObject1 = parammq.a(parammq.a(), j, parammq.c(), parammq.d());
        }
        return ks.a.a(paramView, (mq)localObject1);
        j = 0;
        break;
        localObject2 = A.getLayoutParams();
        if (height != i)
        {
          height = i;
          A.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        j = 1;
        break label230;
        k = 0;
        break label238;
        if (topMargin == 0) {
          break label449;
        }
        topMargin = 0;
        m = 1;
        j = 0;
        k = i;
        break label270;
      }
      label449:
      m = 0;
      j = 0;
      k = i;
      break label270;
      label461:
      m = i;
      break label254;
      label467:
      j = 0;
      break label230;
      m = 0;
    }
  }
}

/* Location:
 * Qualified Name:     kg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */