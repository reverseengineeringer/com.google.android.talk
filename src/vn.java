import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.HorizontalScrollView;
import android.widget.Spinner;

public final class vn
  extends HorizontalScrollView
  implements AdapterView.OnItemSelectedListener
{
  private static final Interpolator i = new DecelerateInterpolator();
  Runnable a;
  ys b;
  int c;
  int d;
  int e;
  private Spinner f;
  private boolean g;
  private int h;
  
  private void a(int paramInt)
  {
    h = paramInt;
    int k = b.getChildCount();
    int j = 0;
    if (j < k)
    {
      View localView = b.getChildAt(j);
      if (j == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if (bool)
        {
          localView = b.getChildAt(paramInt);
          if (a != null) {
            removeCallbacks(a);
          }
          a = new vo(this, localView);
          post(a);
        }
        j += 1;
        break;
      }
    }
    if ((f != null) && (paramInt >= 0)) {
      f.setSelection(paramInt);
    }
  }
  
  private boolean a()
  {
    return (f != null) && (f.getParent() == this);
  }
  
  private boolean b()
  {
    if (!a()) {
      return false;
    }
    removeView(f);
    addView(b, new ViewGroup.LayoutParams(-2, -1));
    a(f.getSelectedItemPosition());
    return false;
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      post(a);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    paramConfiguration = ss.a(getContext());
    e = paramConfiguration.e();
    requestLayout();
    d = paramConfiguration.g();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null) {
      removeCallbacks(a);
    }
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {}
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 1;
    int j = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (j == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int k = b.getChildCount();
      if ((k <= 1) || ((j != 1073741824) && (j != Integer.MIN_VALUE))) {
        break label327;
      }
      if (k <= 2) {
        break label314;
      }
      c = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      label68:
      c = Math.min(c, d);
      label83:
      j = View.MeasureSpec.makeMeasureSpec(e, 1073741824);
      if ((bool) || (!g)) {
        break label335;
      }
      label105:
      if (paramInt2 == 0) {
        break label348;
      }
      b.measure(0, j);
      if (b.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1)) {
        break label340;
      }
      if (!a())
      {
        if (f == null)
        {
          xi localxi = new xi(getContext(), null, aen.A);
          localxi.setLayoutParams(new yt(-2, -1));
          localxi.setOnItemSelectedListener(this);
          f = localxi;
        }
        removeView(b);
        addView(f, new ViewGroup.LayoutParams(-2, -1));
        if (f.getAdapter() == null) {
          f.setAdapter(new vp(this));
        }
        if (a != null)
        {
          removeCallbacks(a);
          a = null;
        }
        f.setSelection(h);
      }
    }
    for (;;)
    {
      paramInt2 = getMeasuredWidth();
      super.onMeasure(paramInt1, j);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (paramInt2 != paramInt1)) {
        a(h);
      }
      return;
      bool = false;
      break;
      label314:
      c = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label68;
      label327:
      c = -1;
      break label83;
      label335:
      paramInt2 = 0;
      break label105;
      label340:
      b();
      continue;
      label348:
      b();
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     vn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */