package com.google.android.talk;

import android.content.Context;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

public class AccessibilityFilteredEditText
  extends EditText
{
  public AccessibilityFilteredEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public AccessibilityFilteredEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    InputConnection localInputConnection = super.onCreateInputConnection(paramEditorInfo);
    imeOptions &= 0xBFFFFFFF;
    return localInputConnection;
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if ((paramAccessibilityEvent.getEventType() == 16) && (paramAccessibilityEvent.getRemovedCount() == paramAccessibilityEvent.getBeforeText().length()) && (paramAccessibilityEvent.getAddedCount() == 0) && (paramAccessibilityEvent.getFromIndex() == 0)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccessibilityFilteredEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */