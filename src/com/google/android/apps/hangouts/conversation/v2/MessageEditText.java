package com.google.android.apps.hangouts.conversation.v2;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
import bqw;
import exa;

public class MessageEditText
  extends EditText
{
  private bqw a;
  
  public MessageEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (Build.VERSION.SDK_INT >= 21) {
      setShowSoftInputOnFocus(exa.d(paramContext));
    }
  }
  
  public void a(bqw parambqw)
  {
    a = parambqw;
  }
  
  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1) && (a != null) && (a.a())) {
      return true;
    }
    return super.onKeyPreIme(paramInt, paramKeyEvent);
  }
  
  public boolean performClick()
  {
    super.performClick();
    if (a == null) {
      return false;
    }
    return a.b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.MessageEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */