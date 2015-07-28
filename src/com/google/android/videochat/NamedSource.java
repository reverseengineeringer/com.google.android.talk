package com.google.android.videochat;

public class NamedSource
{
  public final String name;
  public final String nick;
  public final boolean removed;
  public final int ssrc;
  public final boolean ssrcSet;
  public final String usage;
  
  public NamedSource(String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    nick = paramString1;
    name = paramString2;
    usage = paramString3;
    ssrc = paramInt;
    ssrcSet = paramBoolean1;
    removed = paramBoolean2;
  }
  
  public boolean equals(Object paramObject)
  {
    return (paramObject != null) && ((paramObject instanceof NamedSource)) && (ssrc == ssrc);
  }
  
  public int hashCode()
  {
    return ssrc;
  }
  
  public String toString()
  {
    return name + " (" + nick + "/" + ssrc + ")";
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.NamedSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */