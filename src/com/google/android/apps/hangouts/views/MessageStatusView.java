package com.google.android.apps.hangouts.views;

import aen;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

public class MessageStatusView
  extends FrameLayout
{
  View a;
  TextView b;
  TextView c;
  public ScalingTextView d;
  ImageView e;
  public View f;
  ScalingTextView g;
  View h;
  private float i = 1.0F;
  
  public MessageStatusView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MessageStatusView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MessageStatusView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(float paramFloat)
  {
    i = paramFloat;
    setAlpha(paramFloat);
    requestLayout();
  }
  
  public void onFinishInflate()
  {
    a = findViewById(aen.aQ);
    d = ((ScalingTextView)a.findViewById(aen.gJ));
    b = ((TextView)a.findViewById(aen.eq));
    c = ((TextView)a.findViewById(aen.fZ));
    e = ((ImageView)a.findViewById(aen.gj));
    f = findViewById(aen.fX);
    g = ((ScalingTextView)f.findViewById(aen.fY));
    h = findViewById(aen.gk);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(getMeasuredWidth(), (int)(getMeasuredHeight() * i));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.MessageStatusView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */