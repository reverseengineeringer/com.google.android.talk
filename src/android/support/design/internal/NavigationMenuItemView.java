package android.support.design.internal;

import aal;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.TextView;
import fv;
import fw;
import i;
import pv;
import py;
import tp;
import uc;

public class NavigationMenuItemView
  extends i
  implements uc
{
  private static final int[] c = { 16842912 };
  private final int d;
  private final CheckedTextView e;
  private FrameLayout f;
  private tp g;
  private ColorStateList h;
  
  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e(0);
    LayoutInflater.from(paramContext).inflate(aal.s, this, true);
    d = paramContext.getResources().getDimensionPixelSize(aal.k);
    e = ((CheckedTextView)findViewById(aal.o));
    e.setDuplicateParentStateEnabled(true);
  }
  
  public tp a()
  {
    return g;
  }
  
  public void a(Drawable paramDrawable)
  {
    Object localObject;
    if (paramDrawable != null)
    {
      localObject = paramDrawable.getConstantState();
      if (localObject == null)
      {
        paramDrawable = fv.a.c(paramDrawable).mutate();
        paramDrawable.setBounds(0, 0, d, d);
        fv.a(paramDrawable, h);
      }
    }
    for (;;)
    {
      localObject = e;
      pv.a.a((TextView)localObject, paramDrawable, null, null, null);
      return;
      paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
      break;
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    e.setText(paramCharSequence);
  }
  
  public void a(tp paramtp)
  {
    g = paramtp;
    int i;
    StateListDrawable localStateListDrawable;
    if (paramtp.isVisible())
    {
      i = 0;
      setVisibility(i);
      if (getBackground() == null)
      {
        TypedValue localTypedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(aal.j, localTypedValue, true)) {
          break label200;
        }
        localStateListDrawable = new StateListDrawable();
        localStateListDrawable.addState(c, new ColorDrawable(data));
        localStateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
      }
    }
    for (;;)
    {
      setBackgroundDrawable(localStateListDrawable);
      paramtp.isCheckable();
      b();
      a(paramtp.isChecked());
      setEnabled(paramtp.isEnabled());
      a(paramtp.getTitle());
      a(paramtp.getIcon());
      paramtp = paramtp.getActionView();
      if (f == null) {
        f = ((FrameLayout)((ViewStub)findViewById(aal.n)).inflate());
      }
      f.removeAllViews();
      if (paramtp != null) {
        f.addView(paramtp);
      }
      return;
      i = 8;
      break;
      label200:
      localStateListDrawable = null;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    refreshDrawableState();
    e.setChecked(paramBoolean);
  }
  
  public void b()
  {
    refreshDrawableState();
  }
  
  public boolean c()
  {
    return false;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((g != null) && (g.isCheckable()) && (g.isChecked())) {
      mergeDrawableStates(arrayOfInt, c);
    }
    return arrayOfInt;
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.NavigationMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */