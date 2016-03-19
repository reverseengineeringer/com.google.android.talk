package org.chromium.net;

import android.content.Context;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
import moc;
import mpb;

public class CronetEngine$Builder
{
  private static final Pattern a = Pattern.compile("^[0-9\\.]*$");
  private final Context b;
  private final List<moc> c = new LinkedList();
  private final List<CronetEngine.Builder.Pkp> d = new LinkedList();
  private String e;
  private String f;
  private boolean g;
  private String h;
  private boolean i;
  private boolean j;
  private boolean k;
  private String l;
  private String m;
  private String n;
  private String o;
  private boolean p;
  private int q;
  private long r;
  private String s;
  private long t;
  
  public CronetEngine$Builder(Context paramContext)
  {
    b = paramContext;
    c("cronet");
    d();
    a(false);
    h();
    j();
    a(0, 0L);
  }
  
  public String a()
  {
    return UserAgent.a(b);
  }
  
  public Builder a(int paramInt, long paramLong)
  {
    if ((paramInt == 3) || (paramInt == 2))
    {
      if (c() == null) {
        throw new IllegalArgumentException("Storage path must be set");
      }
    }
    else if (c() != null) {
      throw new IllegalArgumentException("Storage path must not be set");
    }
    if ((paramInt == 0) || (paramInt == 2)) {}
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      r = paramLong;
      switch (paramInt)
      {
      default: 
        throw new IllegalArgumentException("Unknown cache mode");
      }
    }
    q = 0;
    return this;
    q = 1;
    return this;
    q = 2;
    return this;
  }
  
  public Builder a(String paramString)
  {
    e = paramString;
    return this;
  }
  
  public Builder a(boolean paramBoolean)
  {
    i = paramBoolean;
    return this;
  }
  
  String b()
  {
    return e;
  }
  
  public Builder b(String paramString)
  {
    if (!new File(paramString).isDirectory()) {
      throw new IllegalArgumentException("Storage path must be set to existing directory");
    }
    f = paramString;
    return this;
  }
  
  String c()
  {
    return f;
  }
  
  Builder c(String paramString)
  {
    h = paramString;
    return this;
  }
  
  @Deprecated
  public Builder d()
  {
    g = false;
    return this;
  }
  
  public Builder d(String paramString)
  {
    if (paramString.contains("/")) {
      throw new IllegalArgumentException("Illegal QUIC Hint Host: " + paramString);
    }
    c.add(new moc(paramString, 443, 443));
    return this;
  }
  
  public boolean e()
  {
    return g;
  }
  
  String f()
  {
    return h;
  }
  
  boolean g()
  {
    return i;
  }
  
  public Builder h()
  {
    j = true;
    return this;
  }
  
  boolean i()
  {
    return j;
  }
  
  public Builder j()
  {
    k = false;
    return this;
  }
  
  boolean k()
  {
    return k;
  }
  
  String l()
  {
    return l;
  }
  
  String m()
  {
    return m;
  }
  
  String n()
  {
    return n;
  }
  
  String o()
  {
    return o;
  }
  
  boolean p()
  {
    return p;
  }
  
  long q()
  {
    return r;
  }
  
  int r()
  {
    return q;
  }
  
  List<moc> s()
  {
    return c;
  }
  
  List<CronetEngine.Builder.Pkp> t()
  {
    return d;
  }
  
  String u()
  {
    return s;
  }
  
  long v()
  {
    return t;
  }
  
  Context w()
  {
    return b;
  }
  
  public CronetEngine x()
  {
    CronetEngine localCronetEngine = null;
    if (b() == null) {
      a(a());
    }
    if (!e()) {
      localCronetEngine = CronetEngine.a(this);
    }
    Object localObject = localCronetEngine;
    if (localCronetEngine == null) {
      localObject = new mpb(b());
    }
    new StringBuilder("Using network stack: ").append(((CronetEngine)localObject).b());
    t = 0L;
    return (CronetEngine)localObject;
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.CronetEngine.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */