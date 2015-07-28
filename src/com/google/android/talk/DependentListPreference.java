package com.google.android.talk;

import android.content.Context;
import android.preference.ListPreference;
import android.util.AttributeSet;

public class DependentListPreference
  extends ListPreference
{
  private String mDisabledState;
  
  public DependentListPreference(Context paramContext)
  {
    super(paramContext);
  }
  
  public DependentListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void setDisabledEntry(String paramString)
  {
    mDisabledState = paramString;
  }
  
  public void setValue(String paramString)
  {
    super.setValue(paramString);
    notifyDependencyChange(shouldDisableDependents());
  }
  
  public boolean shouldDisableDependents()
  {
    return (getValue().equals(mDisabledState)) || (super.shouldDisableDependents());
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.DependentListPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */