package com.google.android.apps.hangouts.conversation.v2.gallerypicker.impl;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.TextView;
import bso;
import bsq;
import java.io.File;

public final class GalleryItemView
  extends FrameLayout
{
  private int a = 512;
  private int b = 512;
  
  public GalleryItemView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GalleryItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GalleryItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(View paramView, bso parambso, boolean paramBoolean)
  {
    float f2 = 1.0F;
    Object localObject = paramView.findViewById(aal.kC);
    paramView.findViewById(aal.kD).setVisibility(8);
    float f1;
    if (g)
    {
      ((View)localObject).setVisibility(0);
      if (paramBoolean)
      {
        f1 = 1.0F;
        f2 = 0.88F;
        CharSequence localCharSequence = ((TextView)paramView.findViewById(aal.kK)).getContentDescription();
        localObject = new File(a).getName();
        paramView = (View)localObject;
        if (b == bsq.a)
        {
          paramView = (View)localObject;
          if (!TextUtils.isEmpty(localCharSequence)) {
            paramView = getResources().getString(aal.kO, new Object[] { localObject, localCharSequence });
          }
        }
        localObject = getResources();
        if (!g) {
          break label255;
        }
      }
    }
    label255:
    for (int i = aal.kM;; i = aal.kN)
    {
      setContentDescription(((Resources)localObject).getString(i, new Object[] { paramView }));
      if (f1 == f2) {
        break label263;
      }
      setScaleX(f1);
      setScaleY(f1);
      animate().scaleX(f2).scaleY(f2).setDuration(135L).setStartDelay(51L).setInterpolator(aal.c()).start();
      return;
      f2 = 0.88F;
      f1 = 0.88F;
      break;
      ((View)localObject).setVisibility(4);
      if (paramBoolean)
      {
        f1 = 0.87F;
        break;
      }
      f1 = 1.0F;
      break;
    }
    label263:
    setScaleX(f1);
    setScaleY(f1);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    a = getMeasuredWidth();
    b = getMeasuredHeight();
    setMeasuredDimension(a, b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.gallerypicker.impl.GalleryItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */