package com.google.android.talk;

import android.widget.ImageView;

public abstract interface Divot
{
  public static final String[] sPositionChoices = { "", "left_upper", "left_middle", "left_lower", "right_upper", "right_middle", "right_lower", "top_left", "top_middle", "top_right", "bottom_left", "bottom_middle", "bottom_right" };
  
  public abstract ImageView asImageView();
  
  public abstract void assignContactFromEmail(String paramString);
  
  public abstract float getCloseOffset();
  
  public abstract float getFarOffset();
  
  public abstract int getPosition();
}

/* Location:
 * Qualified Name:     com.google.android.talk.Divot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */