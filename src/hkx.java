public final class hkx
{
  private String a = null;
  private String b = null;
  private String c = null;
  private boolean d = true;
  private boolean e = true;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private String i = null;
  private long j = 0L;
  private boolean k = false;
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private int q;
  private khk r;
  
  public hkx a(int paramInt)
  {
    q = paramInt;
    return this;
  }
  
  public hkx a(long paramLong)
  {
    j = paramLong;
    return this;
  }
  
  public hkx a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public hkx a(khk paramkhk)
  {
    r = paramkhk;
    return this;
  }
  
  public hkx a(boolean paramBoolean)
  {
    d = paramBoolean;
    return this;
  }
  
  public String a()
  {
    return a;
  }
  
  public hkx b(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public hkx b(boolean paramBoolean)
  {
    e = paramBoolean;
    return this;
  }
  
  public String b()
  {
    return b;
  }
  
  public hkx c(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public hkx c(boolean paramBoolean)
  {
    k = paramBoolean;
    return this;
  }
  
  public String c()
  {
    return c;
  }
  
  public hkx d(String paramString)
  {
    i = paramString;
    return this;
  }
  
  public hkx d(boolean paramBoolean)
  {
    m = paramBoolean;
    return this;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public hkx e(boolean paramBoolean)
  {
    n = paramBoolean;
    return this;
  }
  
  public boolean e()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof hkx)) {}
    do
    {
      return false;
      paramObject = (hkx)paramObject;
      if ((g()) && (((hkx)paramObject).g())) {
        return true;
      }
    } while ((a() == null) || (((hkx)paramObject).a() == null) || (!a().equals(((hkx)paramObject).a())));
    return true;
  }
  
  public hkx f()
  {
    f = true;
    return this;
  }
  
  public hkx f(boolean paramBoolean)
  {
    o = paramBoolean;
    return this;
  }
  
  public hkx g(boolean paramBoolean)
  {
    p = paramBoolean;
    return this;
  }
  
  public boolean g()
  {
    return f;
  }
  
  public hkx h(boolean paramBoolean)
  {
    g = paramBoolean;
    return this;
  }
  
  public String h()
  {
    return i;
  }
  
  public long i()
  {
    return j;
  }
  
  public hkx i(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  public hkx j()
  {
    l = false;
    return this;
  }
  
  public boolean k()
  {
    return n;
  }
  
  public boolean l()
  {
    return o;
  }
  
  public boolean m()
  {
    return !l();
  }
  
  public boolean n()
  {
    return p;
  }
  
  public boolean o()
  {
    return g;
  }
  
  public boolean p()
  {
    return h;
  }
  
  public int q()
  {
    return q;
  }
  
  public String toString()
  {
    return "Participant: " + a + "\n userId: " + i + "\n isLoudestSpeaker: " + i + "\n connectionTime: " + j + "\n isAudioMuted: " + d + "\n isVideoMuted: " + e + "\n isLocalUser: " + f + "\n isLoudestSpeaker: " + k + "\n isPresenter: " + l + "\n isPinned: " + m + "\n isFocused: " + n + "\n isPstn: " + o + "\n isMediaBlocked: " + p + "\n isAllowedToInvite: " + g + "\n isAllowedToKick: " + h;
  }
}

/* Location:
 * Qualified Name:     hkx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */