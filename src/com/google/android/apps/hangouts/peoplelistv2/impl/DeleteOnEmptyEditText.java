package com.google.android.apps.hangouts.peoplelistv2.impl;

import android.content.Context;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import dab;
import dac;

public class DeleteOnEmptyEditText
  extends EditText
{
  public dac a;
  
  public DeleteOnEmptyEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public DeleteOnEmptyEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public DeleteOnEmptyEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(dac paramdac)
  {
    a = paramdac;
  }
  
  public boolean onCheckIsTextEditor()
  {
    return true;
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    return new dab(this, super.onCreateInputConnection(paramEditorInfo));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.peoplelistv2.impl.DeleteOnEmptyEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */