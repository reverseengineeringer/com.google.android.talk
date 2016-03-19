package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import cuk;
import cul;
import xs;

public class AttachmentViewContainerCardView
  extends xs
  implements cul
{
  public AttachmentViewContainerCardView(Context paramContext)
  {
    super(paramContext);
  }
  
  public AttachmentViewContainerCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AttachmentViewContainerCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
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
 * Qualified Name:     com.google.android.apps.hangouts.views.AttachmentViewContainerCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */