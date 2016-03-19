package com.google.android.libraries.quantum.snackbar;

import aal;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import hpg;
import hph;
import hpq;
import hpr;
import hps;
import java.util.List;

public class Snackbar
  extends LinearLayout
  implements hpg
{
  public final hph a = new hph(this);
  private final TextView b;
  private final TextView c;
  private int d = 1;
  
  public Snackbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Snackbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aal.tv);
  }
  
  public Snackbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(aal.ty, this);
    b = ((TextView)findViewById(aal.tx));
    c = ((TextView)findViewById(aal.tw));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, hpq.X, paramInt, aal.tz);
    paramAttributeSet = paramContext.getDrawable(hpq.Z);
    ColorStateList localColorStateList1 = paramContext.getColorStateList(hpq.aa);
    ColorStateList localColorStateList2 = paramContext.getColorStateList(hpq.Y);
    paramContext.recycle();
    setOrientation(0);
    setBackgroundDrawable(paramAttributeSet);
    if (localColorStateList1 != null) {
      a(localColorStateList1);
    }
    if (localColorStateList2 != null) {
      b(localColorStateList2);
    }
  }
  
  public static void a(Snackbar paramSnackbar)
  {
    String str = b.getText().toString().trim();
    if (!TextUtils.isEmpty(str))
    {
      Context localContext = paramSnackbar.getContext();
      AccessibilityManager localAccessibilityManager = (AccessibilityManager)localContext.getSystemService("accessibility");
      if (localAccessibilityManager.isEnabled())
      {
        AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(32);
        localAccessibilityEvent.setClassName(Snackbar.class.getName());
        localAccessibilityEvent.setPackageName(localContext.getPackageName());
        localAccessibilityEvent.getText().add(str);
        localAccessibilityEvent.setEnabled(true);
        paramSnackbar = c.getText().toString().trim();
        if (!TextUtils.isEmpty(paramSnackbar)) {
          localAccessibilityEvent.getText().add(paramSnackbar);
        }
        localAccessibilityManager.sendAccessibilityEvent(localAccessibilityEvent);
      }
    }
  }
  
  public void a()
  {
    hph localhph = a;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("alpha", new float[] { 0.0F, 1.0F }), PropertyValuesHolder.ofFloat("translationY", new float[] { getHeight(), 0.0F }) });
    localObjectAnimator.addListener(new hpr(this));
    localhph.a(localObjectAnimator);
  }
  
  public void a(ColorStateList paramColorStateList)
  {
    b.setTextColor(paramColorStateList);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a(paramCharSequence, null, null);
  }
  
  public void a(CharSequence paramCharSequence, String paramString, View.OnClickListener paramOnClickListener)
  {
    b.setText(paramCharSequence);
    c.setText(paramString);
    c.setOnClickListener(paramOnClickListener);
    paramCharSequence = c;
    if (TextUtils.isEmpty(paramString)) {}
    for (int i = 8;; i = 0)
    {
      paramCharSequence.setVisibility(i);
      b.requestLayout();
      return;
    }
  }
  
  public void b()
  {
    hph localhph = a;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("alpha", new float[] { 1.0F, 0.0F }), PropertyValuesHolder.ofFloat("translationY", new float[] { 0.0F, getHeight() }) });
    localObjectAnimator.addListener(new hps(this));
    localhph.b(localObjectAnimator);
  }
  
  public void b(ColorStateList paramColorStateList)
  {
    c.setTextColor(paramColorStateList);
  }
  
  public boolean c()
  {
    return getVisibility() != 0;
  }
  
  public int d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.quantum.snackbar.Snackbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */