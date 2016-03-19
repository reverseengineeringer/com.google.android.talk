package android.support.v7.internal.view.menu;

import aal;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;
import sb;
import tp;
import uc;

public class ListMenuItemView
  extends LinearLayout
  implements uc
{
  private tp a;
  private ImageView b;
  private RadioButton c;
  private TextView d;
  private CheckBox e;
  private TextView f;
  private Drawable g;
  private int h;
  private Context i;
  private boolean j;
  private int k;
  private Context l;
  private LayoutInflater m;
  private boolean n;
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    l = paramContext;
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, sb.bm, paramInt, 0);
    g = paramAttributeSet.getDrawable(sb.bn);
    h = paramAttributeSet.getResourceId(sb.bo, -1);
    j = paramAttributeSet.getBoolean(sb.bp, false);
    i = paramContext;
    paramAttributeSet.recycle();
  }
  
  private LayoutInflater d()
  {
    if (m == null) {
      m = LayoutInflater.from(l);
    }
    return m;
  }
  
  public tp a()
  {
    return a;
  }
  
  public void a(Drawable paramDrawable)
  {
    int i1;
    if ((a.h()) || (n))
    {
      i1 = 1;
      if ((i1 != 0) || (j)) {
        break label36;
      }
    }
    label36:
    while ((b == null) && (paramDrawable == null) && (!j))
    {
      return;
      i1 = 0;
      break;
    }
    if (b == null)
    {
      b = ((ImageView)d().inflate(aal.bj, this, false));
      addView(b, 0);
    }
    if ((paramDrawable != null) || (j))
    {
      ImageView localImageView = b;
      if (i1 != 0) {}
      for (;;)
      {
        localImageView.setImageDrawable(paramDrawable);
        if (b.getVisibility() == 0) {
          break;
        }
        b.setVisibility(0);
        return;
        paramDrawable = null;
      }
    }
    b.setVisibility(8);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      d.setText(paramCharSequence);
      if (d.getVisibility() != 0) {
        d.setVisibility(0);
      }
    }
    while (d.getVisibility() == 8) {
      return;
    }
    d.setVisibility(8);
  }
  
  public void a(tp paramtp)
  {
    int i1 = 0;
    a = paramtp;
    k = 0;
    if (paramtp.isVisible()) {}
    for (;;)
    {
      setVisibility(i1);
      a(paramtp.a(this));
      a(paramtp.isCheckable());
      boolean bool = paramtp.f();
      paramtp.d();
      b(bool);
      a(paramtp.getIcon());
      setEnabled(paramtp.isEnabled());
      return;
      i1 = 8;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((!paramBoolean) && (c == null) && (e == null)) {}
    label74:
    label179:
    label185:
    do
    {
      return;
      Object localObject1;
      Object localObject2;
      if (a.g())
      {
        if (c == null)
        {
          c = ((RadioButton)d().inflate(aal.bl, this, false));
          addView(c);
        }
        localObject1 = c;
        localObject2 = e;
        if (!paramBoolean) {
          break label185;
        }
        ((CompoundButton)localObject1).setChecked(a.isChecked());
        if (!paramBoolean) {
          break label179;
        }
      }
      for (int i1 = 0;; i1 = 8)
      {
        if (((CompoundButton)localObject1).getVisibility() != i1) {
          ((CompoundButton)localObject1).setVisibility(i1);
        }
        if ((localObject2 == null) || (((CompoundButton)localObject2).getVisibility() == 8)) {
          break;
        }
        ((CompoundButton)localObject2).setVisibility(8);
        return;
        if (e == null)
        {
          e = ((CheckBox)d().inflate(aal.bi, this, false));
          addView(e);
        }
        localObject1 = e;
        localObject2 = c;
        break label74;
      }
      if (e != null) {
        e.setVisibility(8);
      }
    } while (c == null);
    c.setVisibility(8);
  }
  
  public void b()
  {
    n = true;
    j = true;
  }
  
  public void b(boolean paramBoolean)
  {
    if ((paramBoolean) && (a.f())) {}
    for (int i1 = 0;; i1 = 8)
    {
      if (i1 == 0) {
        f.setText(a.e());
      }
      if (f.getVisibility() != i1) {
        f.setVisibility(i1);
      }
      return;
    }
  }
  
  public boolean c()
  {
    return false;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setBackgroundDrawable(g);
    d = ((TextView)findViewById(aal.aW));
    if (h != -1) {
      d.setTextAppearance(i, h);
    }
    f = ((TextView)findViewById(aal.aS));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((b != null) && (j))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)b.getLayoutParams();
      if ((height > 0) && (width <= 0)) {
        width = height;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ListMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */