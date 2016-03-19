import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

final class vq
  extends ys
  implements View.OnLongClickListener
{
  private final int[] b = { 16842964 };
  private qh c;
  private TextView d;
  private ImageView e;
  private View f;
  
  public vq(vn paramvn, Context paramContext, qh paramqh, boolean paramBoolean)
  {
    super(paramContext, null, aen.w);
    c = paramqh;
    paramvn = vw.a(paramContext, null, b, aen.w);
    if (paramvn.g(0)) {
      setBackgroundDrawable(paramvn.a(0));
    }
    paramvn.a();
    f(8388627);
    b();
  }
  
  private void b()
  {
    Object localObject1 = c;
    Object localObject2 = ((qh)localObject1).c();
    if (localObject2 != null)
    {
      localObject1 = ((View)localObject2).getParent();
      if (localObject1 != this)
      {
        if (localObject1 != null) {
          ((ViewGroup)localObject1).removeView((View)localObject2);
        }
        addView((View)localObject2);
      }
      f = ((View)localObject2);
      if (d != null) {
        d.setVisibility(8);
      }
      if (e != null)
      {
        e.setVisibility(8);
        e.setImageDrawable(null);
      }
      return;
    }
    if (f != null)
    {
      removeView(f);
      f = null;
    }
    Object localObject3 = ((qh)localObject1).a();
    localObject2 = ((qh)localObject1).b();
    int i;
    if (localObject3 != null)
    {
      Object localObject4;
      if (e == null)
      {
        localObject4 = new ImageView(getContext());
        yt localyt = new yt(-2, -2);
        h = 16;
        ((ImageView)localObject4).setLayoutParams(localyt);
        addView((View)localObject4, 0);
        e = ((ImageView)localObject4);
      }
      e.setImageDrawable((Drawable)localObject3);
      e.setVisibility(0);
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        break label365;
      }
      i = 1;
      label209:
      if (i == 0) {
        break label370;
      }
      if (d == null)
      {
        localObject3 = new xr(getContext(), null, aen.x);
        ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
        localObject4 = new yt(-2, -2);
        h = 16;
        ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
        addView((View)localObject3);
        d = ((TextView)localObject3);
      }
      d.setText((CharSequence)localObject2);
      d.setVisibility(0);
    }
    for (;;)
    {
      if (e != null) {
        e.setContentDescription(((qh)localObject1).d());
      }
      if ((i != 0) || (TextUtils.isEmpty(((qh)localObject1).d()))) {
        break label397;
      }
      setOnLongClickListener(this);
      return;
      if (e == null) {
        break;
      }
      e.setVisibility(8);
      e.setImageDrawable(null);
      break;
      label365:
      i = 0;
      break label209;
      label370:
      if (d != null)
      {
        d.setVisibility(8);
        d.setText(null);
      }
    }
    label397:
    setOnLongClickListener(null);
    setLongClickable(false);
  }
  
  public qh a()
  {
    return c;
  }
  
  public void a(qh paramqh)
  {
    c = paramqh;
    b();
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(qh.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (Build.VERSION.SDK_INT >= 14) {
      paramAccessibilityNodeInfo.setClassName(qh.class.getName());
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = getResourcesgetDisplayMetricswidthPixels;
    localObject = Toast.makeText((Context)localObject, c.d(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((a.c > 0) && (getMeasuredWidth() > a.c)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(a.c, 1073741824), paramInt2);
    }
  }
  
  public void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean)) {
        sendAccessibilityEvent(4);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     vq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */