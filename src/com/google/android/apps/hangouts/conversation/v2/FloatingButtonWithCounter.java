package com.google.android.apps.hangouts.conversation.v2;

import aal;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import bqp;
import bqq;
import bqr;
import bqs;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.libraries.quantum.fab.FloatingActionButton;
import ezc;

public class FloatingButtonWithCounter
  extends FrameLayout
{
  public FloatingActionButton a;
  private int b = 0;
  private View c;
  private int d;
  
  public FloatingButtonWithCounter(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingButtonWithCounter(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(getContext()).inflate(aal.kd, this);
    a = ((FloatingActionButton)getRootView().findViewById(aal.jL));
    a.setScaleType(ImageView.ScaleType.CENTER);
    a.setOnClickListener(new bqp(this, paramContext));
    c();
    c = getRootView().findViewById(aal.jH);
    c.bringToFront();
    c.setVisibility(8);
    int i = (int)TypedValue.applyDimension(1, 5.0F, getResources().getDisplayMetrics());
    paramContext = c;
    if (ezc.c()) {}
    for (float f = i;; f = -i)
    {
      paramContext.setTranslationX(f);
      setTranslationY(getContext().getResources().getDimensionPixelSize(aal.jA));
      return;
    }
  }
  
  private static String a(int paramInt)
  {
    if (paramInt == 0) {
      return "";
    }
    return Integer.toString(paramInt);
  }
  
  public int a()
  {
    return getContext().getResources().getDimensionPixelSize(aal.jC);
  }
  
  public void a(boolean paramBoolean, int paramInt)
  {
    int i;
    Object localObject2;
    Object localObject3;
    Object localObject1;
    int j;
    label91:
    Animator localAnimator1;
    Animator localAnimator2;
    if ((paramBoolean) || (paramInt > 0))
    {
      i = 1;
      localObject2 = (TextView)c.findViewById(aal.jF);
      TextView localTextView = (TextView)c.findViewById(aal.jG);
      ImageView localImageView = (ImageView)c.findViewById(aal.jI);
      localObject3 = a(b);
      localObject1 = a(paramInt);
      ((TextView)localObject2).setText((CharSequence)localObject3);
      localTextView.setText((CharSequence)localObject1);
      if (i == 0) {
        break label431;
      }
      j = 0;
      if (j != d)
      {
        if (j != 0) {
          break label438;
        }
        localObject3 = new AnimatorSet();
        localAnimator1 = aal.a(1.0F, 0.0F, 1.0F, 0.0F);
        localAnimator1.setStartDelay(0L);
        localAnimator1.setDuration(100L);
        localAnimator1.setInterpolator(aal.d());
        localAnimator1.addListener(new bqr(this));
        localAnimator2 = aal.a(0.0F, 1.0F, 0.0F, 1.0F);
        localAnimator2.setStartDelay(0L);
        localAnimator2.setDuration(150L);
        localAnimator2.setInterpolator(aal.d());
        ((AnimatorSet)localObject3).playSequentially(new Animator[] { localAnimator1, localAnimator2 });
        ((AnimatorSet)localObject3).setTarget(this);
        ((AnimatorSet)localObject3).start();
        label221:
        d = j;
      }
      if (b != paramInt)
      {
        if (localImageView != null) {
          localImageView.setVisibility(8);
        }
        if (b <= 0) {
          break label557;
        }
        ((TextView)localObject2).setAlpha(1.0F);
        ((TextView)localObject2).setTranslationY(0.0F);
        ((TextView)localObject2).animate().alpha(0.0F).setDuration(102L).setInterpolator(aal.c()).start();
        label290:
        localTextView.setAlpha(0.0F);
        localTextView.setTranslationY(20.0F);
        localTextView.animate().setStartDelay(16L).translationY(0.0F).alpha(1.0F).setDuration(102L).setInterpolator(aal.d()).setListener(new bqq(this, localImageView)).start();
      }
      localObject2 = c;
      if ((i == 0) || (TextUtils.isEmpty((CharSequence)localObject1))) {
        break label566;
      }
      i = 0;
      label370:
      ((View)localObject2).setVisibility(i);
      localObject1 = getContext().getResources();
      if (paramInt <= 0) {
        break label602;
      }
      if (paramBoolean) {
        break label572;
      }
      a.setContentDescription(((Resources)localObject1).getQuantityString(aal.hg, paramInt, new Object[] { Integer.valueOf(paramInt) }));
    }
    for (;;)
    {
      b = paramInt;
      return;
      i = 0;
      break;
      label431:
      j = 8;
      break label91;
      label438:
      localObject3 = new AnimatorSet();
      localAnimator1 = aal.a(1.0F, 0.0F, 1.0F, 0.0F);
      localAnimator1.setStartDelay(0L);
      localAnimator1.setDuration(150L);
      localAnimator1.setInterpolator(aal.d());
      localAnimator1.addListener(new bqs(this));
      localAnimator2 = aal.a(0.0F, 1.0F, 0.0F, 1.0F);
      localAnimator2.setStartDelay(0L);
      localAnimator2.setDuration(100L);
      localAnimator2.setInterpolator(aal.d());
      ((AnimatorSet)localObject3).playSequentially(new Animator[] { localAnimator1, localAnimator2 });
      ((AnimatorSet)localObject3).setTarget(this);
      ((AnimatorSet)localObject3).start();
      break label221;
      label557:
      ((TextView)localObject2).setAlpha(0.0F);
      break label290;
      label566:
      i = 8;
      break label370;
      label572:
      a.setContentDescription(((Resources)localObject1).getQuantityString(aal.hh, paramInt, new Object[] { Integer.valueOf(paramInt) }));
      continue;
      label602:
      a.setContentDescription(((Resources)localObject1).getText(StressMode.ap));
    }
  }
  
  public int b()
  {
    return getContext().getResources().getDimensionPixelSize(aal.jC);
  }
  
  public void c()
  {
    a.b(getContext().getResources().getColor(aal.jw));
    a.setColorFilter(getResources().getColor(aal.jv), PorterDuff.Mode.SRC_IN);
    findViewById(aal.jM).setVisibility(8);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(b(), a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.conversation.v2.FloatingButtonWithCounter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */