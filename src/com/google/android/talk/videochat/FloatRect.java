package com.google.android.talk.videochat;

public class FloatRect
{
  public float bottom = 0.0F;
  public float left = 0.0F;
  public float right = 0.0F;
  public float top = 0.0F;
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    paramObject = (FloatRect)paramObject;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if (left == left)
      {
        bool1 = bool2;
        if (top == top)
        {
          bool1 = bool2;
          if (right == right)
          {
            bool1 = bool2;
            if (bottom == bottom) {
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append("FloatRect(");
    localStringBuilder.append(left);
    localStringBuilder.append(", ");
    localStringBuilder.append(top);
    localStringBuilder.append(" - ");
    localStringBuilder.append(right);
    localStringBuilder.append(", ");
    localStringBuilder.append(bottom);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.FloatRect
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */