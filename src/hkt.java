import android.app.Notification;
import android.net.Uri;

public final class hkt
{
  private jug A;
  private String a;
  private String b;
  private int c = 51;
  private int d = 3;
  private String e;
  private mdx f;
  private boolean g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private Uri o;
  private String p;
  private String q;
  private String r;
  private String s;
  private Notification t;
  private boolean u;
  private boolean v = true;
  private boolean w = true;
  private boolean x;
  private boolean y;
  private byte[] z;
  
  public hkt a(int paramInt)
  {
    c = paramInt;
    return this;
  }
  
  public hkt a(Notification paramNotification)
  {
    t = paramNotification;
    return this;
  }
  
  public hkt a(Uri paramUri)
  {
    o = paramUri;
    return this;
  }
  
  public hkt a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public hkt a(jug paramjug)
  {
    A = paramjug;
    return this;
  }
  
  public hkt a(mdx parammdx)
  {
    f = parammdx;
    return this;
  }
  
  @Deprecated
  public hkt a(boolean paramBoolean)
  {
    u = paramBoolean;
    return this;
  }
  
  public hkt a(byte[] paramArrayOfByte)
  {
    z = paramArrayOfByte;
    return this;
  }
  
  public String a()
  {
    return a;
  }
  
  public hkt b(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public hkt b(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public hkt b(boolean paramBoolean)
  {
    v = paramBoolean;
    return this;
  }
  
  public String b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public hkt c(String paramString)
  {
    h = paramString;
    if ((i != null) || (m != null) || (n != null) || (k != null) || (o != null)) {
      throw new IllegalArgumentException("Setting the resolved id is incompatible with resolving.");
    }
    return this;
  }
  
  public hkt c(boolean paramBoolean)
  {
    x = paramBoolean;
    return this;
  }
  
  public hkt d(String paramString)
  {
    k = paramString;
    return this;
  }
  
  public hkt d(boolean paramBoolean)
  {
    y = paramBoolean;
    return this;
  }
  
  public mdx d()
  {
    return f;
  }
  
  public int e()
  {
    return d;
  }
  
  public hkt e(String paramString)
  {
    l = paramString;
    return this;
  }
  
  public hkt e(boolean paramBoolean)
  {
    g = paramBoolean;
    return this;
  }
  
  public hkt f(String paramString)
  {
    i = paramString;
    return this;
  }
  
  public String f()
  {
    return h;
  }
  
  public hkt g(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public String g()
  {
    return k;
  }
  
  public hkt h(String paramString)
  {
    m = paramString;
    return this;
  }
  
  public String h()
  {
    return l;
  }
  
  public hkt i(String paramString)
  {
    n = paramString;
    return this;
  }
  
  public String i()
  {
    return i;
  }
  
  public hkt j(String paramString)
  {
    p = paramString;
    return this;
  }
  
  public String j()
  {
    return j;
  }
  
  public hkt k(String paramString)
  {
    q = paramString;
    return this;
  }
  
  public String k()
  {
    return m;
  }
  
  public hkt l(String paramString)
  {
    r = paramString;
    return this;
  }
  
  public String l()
  {
    return n;
  }
  
  public Uri m()
  {
    return o;
  }
  
  public hkt m(String paramString)
  {
    e = paramString;
    return this;
  }
  
  public String n()
  {
    return p;
  }
  
  public String o()
  {
    return q;
  }
  
  public String p()
  {
    return r;
  }
  
  public String q()
  {
    return e;
  }
  
  public String r()
  {
    return s;
  }
  
  public Notification s()
  {
    return t;
  }
  
  @Deprecated
  public boolean t()
  {
    return u;
  }
  
  public String toString()
  {
    int i1;
    StringBuilder localStringBuilder;
    if (z == null)
    {
      i1 = 0;
      localStringBuilder = new StringBuilder("CallInfo:\n sessionId: ").append(a).append("\n resolvedHangoutId: ").append(h).append("\n domain: ").append(i).append("\n roomName: ").append(j).append("\n calendarId: ").append(m).append("\n eventId: ").append(n).append("\n externalKeyName: ").append(k).append("\n externalKeyId: ").append(l).append("\n originalUri: ").append(o).append("\n accountName: ").append(p).append("\n clientId: ").append(q).append("\n gcmRegistration: ").append(r).append("\n compressedLogFile: ").append(e).append("\n hasVideo: ").append(u).append("\n shouldManagePlatformInteraction: ").append(v).append("\n isUserMinor: ").append(x).append("\n isOnAirAllowed: ").append(y).append("\n userLocationBytes is ");
      if (z != null) {
        break label272;
      }
    }
    label272:
    for (String str = "";; str = "not ")
    {
      return str + "null\n userLocationBytes length: " + i1 + "\n videoCallOptions: " + A;
      i1 = z.length;
      break;
    }
  }
  
  public boolean u()
  {
    return v;
  }
  
  public boolean v()
  {
    return x;
  }
  
  public boolean w()
  {
    return y;
  }
  
  public byte[] x()
  {
    return z;
  }
  
  public boolean y()
  {
    return g;
  }
  
  public jug z()
  {
    if (A == null) {
      A = new jug();
    }
    return A;
  }
}

/* Location:
 * Qualified Name:     hkt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */