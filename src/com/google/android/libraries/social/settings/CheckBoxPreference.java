package com.google.android.libraries.social.settings;

import aal;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.google.android.apps.common.proguard.UsedByReflection;
import fkr;
import ikc;
import ikg;

@UsedByReflection
public class CheckBoxPreference
  extends ikg
{
  public CheckBoxPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  @UsedByReflection
  public CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aal.uK);
  }
  
  private CheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ikc.ad, paramInt, 0);
    e(paramContext.getString(ikc.ag));
    f(paramContext.getString(ikc.af));
    h(paramContext.getBoolean(ikc.ae, false));
    paramContext.recycle();
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    View localView = paramView.findViewById(fkr.g);
    if ((localView instanceof Checkable))
    {
      ((Checkable)localView).setChecked(a);
      b(localView);
    }
    c(paramView);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.settings.CheckBoxPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */