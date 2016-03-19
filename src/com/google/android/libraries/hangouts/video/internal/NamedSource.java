package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;

@UsedByNative
public class NamedSource
{
  public final String a;
  public final String b;
  public final int c;
  
  @UsedByNative
  public NamedSource(String paramString1, String paramString2, int paramInt)
  {
    a = paramString1;
    b = paramString2;
    c = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    return (paramObject != null) && ((paramObject instanceof NamedSource)) && (c == c);
  }
  
  public int hashCode()
  {
    return c;
  }
  
  public String toString()
  {
    String str1 = b;
    String str2 = a;
    int i = c;
    return String.valueOf(str1).length() + 15 + String.valueOf(str2).length() + str1 + " (" + str2 + "/" + i + ")";
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.NamedSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */