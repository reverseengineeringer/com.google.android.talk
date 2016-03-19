import android.animation.ObjectAnimator;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import com.google.android.gms.people.accountswitcherview.ExpanderView;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;
import com.google.android.gms.people.accountswitcherview.ShrinkingItem;
import java.util.List;

public final class gmd
  extends FrameLayout
  implements View.OnClickListener, AdapterView.OnItemClickListener, gna, gnc
{
  public gms a;
  private a b;
  private a c;
  private gpt d;
  private List<gpt> e;
  private FrameLayout f;
  private SelectedAccountNavigationView g;
  private gmn h;
  private ShrinkingItem i;
  private boolean j;
  private ViewGroup k;
  private ExpanderView l;
  private a m;
  private boolean n;
  private int o;
  private int p;
  private boolean q;
  private View r;
  
  private void a(View paramView, int paramInt)
  {
    paramView.offsetTopAndBottom(paramInt);
    o = paramView.getTop();
  }
  
  private void a(gpt paramgpt, boolean paramBoolean)
  {
    gpt localgpt = d;
    d = paramgpt;
    if (e != null)
    {
      e = gmn.a(e, localgpt, d);
      if (!paramBoolean) {
        g.a(d);
      }
      h.a(e);
      return;
    }
    g.a(null);
  }
  
  private void a(boolean paramBoolean, Interpolator paramInterpolator)
  {
    int i1;
    if (paramBoolean) {
      i1 = 1;
    }
    for (int i2 = 0; a(11); i2 = 1)
    {
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(i, "animatedHeightFraction", new float[] { i2, i1 });
      localObjectAnimator.setDuration(200L);
      localObjectAnimator.setInterpolator(paramInterpolator);
      localObjectAnimator.start();
      return;
      i1 = 0;
    }
    i.a(i1);
  }
  
  public static boolean a(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }
  
  private void b(int paramInt)
  {
    f.offsetTopAndBottom(paramInt);
    p = f.getTop();
  }
  
  private void c(int paramInt)
  {
    k.setPadding(k.getPaddingLeft(), paramInt, k.getPaddingRight(), k.getPaddingBottom());
    a.a(paramInt);
    g.a(paramInt);
  }
  
  public void a(SelectedAccountNavigationView paramSelectedAccountNavigationView)
  {
    switch (g.b())
    {
    default: 
      return;
    case 0: 
      paramSelectedAccountNavigationView = new AlphaAnimation(0.0F, 1.0F);
      paramSelectedAccountNavigationView.setDuration(200L);
      f.setAnimation(paramSelectedAccountNavigationView);
      a(false, new AccelerateInterpolator(0.8F));
      f.setVisibility(0);
      i.setVisibility(8);
      return;
    }
    paramSelectedAccountNavigationView = new AlphaAnimation(1.0F, 0.0F);
    paramSelectedAccountNavigationView.setDuration(200L);
    paramSelectedAccountNavigationView.setStartOffset(133L);
    a(true, new DecelerateInterpolator(0.8F));
    f.setVisibility(8);
    i.setVisibility(0);
  }
  
  public void a(gpt paramgpt)
  {
    a(paramgpt, true);
  }
  
  public int getNestedScrollAxes()
  {
    return 2;
  }
  
  public void onClick(View paramView)
  {
    boolean bool = true;
    if (paramView == k) {
      if (m == null) {}
    }
    while (paramView != l) {
      return;
    }
    int i1;
    if (g.b() == 1)
    {
      i1 = 0;
      g.c(i1);
      paramView = l;
      if (g.b() != 1) {
        break label82;
      }
    }
    for (;;)
    {
      paramView.a(bool);
      a(g);
      return;
      i1 = 1;
      break;
      label82:
      bool = false;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (r != null)
    {
      r.setOnApplyWindowInsetsListener(null);
      r = null;
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (h.getItemViewType(paramInt) == 0)
    {
      a(h.a(paramInt), false);
      if (b == null) {}
    }
    do
    {
      return;
      if (h.getItemViewType(paramInt) != 1) {
        break;
      }
    } while (c == null);
    return;
    h.getItemViewType(paramInt);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (j) {}
    for (Object localObject = k;; localObject = g)
    {
      if (o != ((View)localObject).getTop()) {
        ((View)localObject).offsetTopAndBottom(o - ((View)localObject).getTop());
      }
      if (p != f.getTop()) {
        f.offsetTopAndBottom(p - f.getTop());
      }
      return;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt2 = 0;
    for (;;)
    {
      if (paramInt2 < getChildCount())
      {
        if (!getChildAt(paramInt2).equals(f)) {
          break label119;
        }
        if (!j) {
          break label103;
        }
        paramInt2 = k.getMeasuredHeight();
        f.setPadding(f.getPaddingLeft(), paramInt2, f.getPaddingRight(), f.getPaddingBottom());
        if (!n) {
          break label114;
        }
      }
      for (;;)
      {
        f.measure(paramInt1, paramInt2 + View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        return;
        label103:
        paramInt2 = g.getMeasuredHeight();
        break;
        label114:
        paramInt2 = 0;
      }
      label119:
      paramInt2 += 1;
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (j) {}
    for (paramView = k; (!paramBoolean) && (paramFloat2 < 0.0F) && (paramView.getBottom() < 0); paramView = g)
    {
      a(paramView, -paramView.getTop());
      b(-paramView.getTop());
      return true;
    }
    if ((paramBoolean) && (paramFloat2 > 0.0F))
    {
      if (paramView.getTop() > -paramView.getMeasuredHeight()) {
        a(paramView, -paramView.getMeasuredHeight() - paramView.getTop());
      }
      if (f.getTop() > -paramView.getMeasuredHeight()) {
        b(-paramView.getMeasuredHeight() - f.getTop());
      }
    }
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if (j)
    {
      paramView = k;
      if (g.b() != 1) {
        break label32;
      }
    }
    for (;;)
    {
      return;
      paramView = g;
      break;
      label32:
      if ((paramInt2 > 0) && (paramView.getBottom() > 0)) {
        if (paramView.getBottom() > paramInt2) {
          paramInt1 = -paramInt2;
        }
      }
      while (paramInt1 != 0)
      {
        if (paramView.getTop() + paramInt1 < -paramView.getMeasuredHeight())
        {
          a(paramView, -paramView.getMeasuredHeight() - paramView.getTop());
          label87:
          if (f.getTop() + paramInt1 >= -paramView.getMeasuredHeight()) {
            break label150;
          }
          b(-paramView.getMeasuredHeight() - f.getTop());
        }
        for (;;)
        {
          paramArrayOfInt[0] = 0;
          paramArrayOfInt[1] = paramInt1;
          return;
          paramInt1 = -paramView.getBottom();
          break;
          a(paramView, paramInt1);
          break label87;
          label150:
          b(paramInt1);
        }
        paramInt1 = 0;
      }
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (j)
    {
      paramView = k;
      if ((paramInt4 >= 0) || (paramView.getTop() >= 0)) {
        break label122;
      }
      paramInt1 = paramInt4;
      if (paramInt4 > paramView.getTop()) {}
    }
    label105:
    label115:
    label122:
    for (paramInt1 = paramView.getTop();; paramInt1 = 0)
    {
      if (paramInt1 != 0)
      {
        if (paramView.getTop() - paramInt1 <= 0) {
          break label105;
        }
        a(paramView, -paramView.getTop());
      }
      for (;;)
      {
        if (f.getTop() - paramInt1 <= paramView.getMeasuredHeight()) {
          break label115;
        }
        b(paramView.getMeasuredHeight() - f.getTop());
        return;
        paramView = g;
        break;
        a(paramView, -paramInt1);
      }
      b(-paramInt1);
      return;
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return n;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt2;
    if (q)
    {
      c(paramInt2);
      i1 = 0;
    }
    super.setPadding(paramInt1, i1, paramInt3, paramInt4);
  }
  
  public void setPaddingRelative(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt2;
    if (q)
    {
      c(paramInt2);
      i1 = 0;
    }
    super.setPaddingRelative(paramInt1, i1, paramInt3, paramInt4);
  }
}

/* Location:
 * Qualified Name:     gmd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */