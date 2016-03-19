package com.google.android.apps.hangouts.conversation.v2;

import aal;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.AttributeSet;
import bqm;
import bqn;
import com.google.android.libraries.quantum.snackbar.Snackbar;
import hph;

public class FauxConversationSnackbar
  extends Snackbar
{
  public FauxConversationSnackbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FauxConversationSnackbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aal.tv);
  }
  
  public FauxConversationSnackbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a()
  {
    hph localhph = a;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("alpha", new float[] { 0.0F, 1.0F }) });
    localObjectAnimator.addListener(new bqm(this));
    localhph.a(localObjectAnimator);
  }
  
  public void b()
  {
    hph localhph = a;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("alpha", new float[] { 1.0F, 0.0F }) });
    localObjectAnimator.setStartDelay(700L);
    localObjectAnimator.addListener(new bqn(this));
    localhph.b(localObjectAnimator);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.FauxConversationSnackbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */