package com.google.android.libraries.social.settings;

import aal;
import android.content.Context;
import android.util.AttributeSet;
import com.google.android.apps.common.proguard.UsedByReflection;
import ijc;
import ijo;

@UsedByReflection
public final class PreferenceCategory
  extends ijo
{
  public PreferenceCategory(Context paramContext)
  {
    this(paramContext, null);
  }
  
  @UsedByReflection
  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aal.uM);
  }
  
  private PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean E()
  {
    return !super.p();
  }
  
  protected boolean b(ijc paramijc)
  {
    if ((paramijc instanceof PreferenceCategory)) {
      throw new IllegalArgumentException("Cannot add a PreferenceCategory directly to a PreferenceCategory");
    }
    return super.b(paramijc);
  }
  
  public boolean p()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.settings.PreferenceCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */