package com.google.android.libraries.social.actionbar;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import hrw;

public final class ActionBarSpinner
  extends Spinner
{
  private hrw a;
  
  public ActionBarSpinner(Context paramContext)
  {
    super(paramContext);
  }
  
  public ActionBarSpinner(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public ActionBarSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ActionBarSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public ActionBarSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    hrw localhrw = a;
    if (localhrw != null) {
      localhrw.a(getSelectedItemPosition());
    }
    super.onMeasure(paramInt1, paramInt2);
    if (localhrw != null) {
      localhrw.a();
    }
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (paramSpinnerAdapter == null) {}
    for (a = null;; a = new hrw(this, paramSpinnerAdapter))
    {
      super.setAdapter(a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.actionbar.ActionBarSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */