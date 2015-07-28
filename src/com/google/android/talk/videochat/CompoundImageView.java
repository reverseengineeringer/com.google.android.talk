package com.google.android.talk.videochat;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.talk.R.styleable;

public class CompoundImageView
  extends ImageView
{
  private Drawable mActivatedImage;
  private Drawable mNormalImage;
  
  public CompoundImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CompoundImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CompoundImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CompoundImageView, paramInt, 0);
    mNormalImage = paramContext.getDrawable(0);
    mActivatedImage = paramContext.getDrawable(1);
    paramContext.recycle();
    setImageDrawable(mNormalImage);
  }
  
  public void setActivated(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Drawable localDrawable = mActivatedImage;; localDrawable = mNormalImage)
    {
      setImageDrawable(localDrawable);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.CompoundImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */