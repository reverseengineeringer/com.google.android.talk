package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import cuk;
import cul;

public class AttachmentViewContainerFrameLayout
  extends FrameLayout
  implements cul
{
  public AttachmentViewContainerFrameLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public AttachmentViewContainerFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AttachmentViewContainerFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(cuk paramcuk)
  {
    removeAllViews();
    addView((View)paramcuk);
  }
  
  public void a(String paramString)
  {
    e().a(paramString);
  }
  
  public void b()
  {
    e().b();
  }
  
  public void b_()
  {
    e().b_();
  }
  
  public void c_()
  {
    e().c_();
  }
  
  public void d_()
  {
    e().d_();
  }
  
  public cuk e()
  {
    return (cuk)getChildAt(0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.AttachmentViewContainerFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */