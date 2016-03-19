import android.content.Context;

public class htu
{
  private final Context a;
  private String b;
  private int c;
  private boolean d;
  htv e;
  int f = hut.c;
  private boolean g;
  private int h;
  
  @Deprecated
  public htu(Context paramContext, String paramString)
  {
    if (paramContext != null) {}
    for (paramContext = paramContext.getApplicationContext();; paramContext = null)
    {
      a = paramContext;
      b = paramString;
      if (paramString != null) {
        break;
      }
      throw new IllegalArgumentException("BackgroundTask tag cannot be null.");
    }
  }
  
  public htu(String paramString)
  {
    this(null, paramString);
  }
  
  public htu(String paramString, byte paramByte)
  {
    this(paramString);
  }
  
  public htu(String paramString, char paramChar)
  {
    this(paramString);
  }
  
  @Deprecated
  public hus a()
  {
    return null;
  }
  
  public hus a(Context paramContext)
  {
    return null;
  }
  
  void a(int paramInt)
  {
    c = paramInt;
  }
  
  void a(htv paramhtv)
  {
    e = paramhtv;
  }
  
  public String b(Context paramContext)
  {
    return null;
  }
  
  void c(Context paramContext)
  {
    boolean bool;
    if ((paramContext != null) || (a != null))
    {
      bool = true;
      aen.a(bool);
      if (paramContext == null) {
        break label52;
      }
    }
    for (;;)
    {
      if ((g) && (h == 0)) {
        h = huq.a(paramContext).a();
      }
      return;
      bool = false;
      break;
      label52:
      paramContext = a;
    }
  }
  
  @Deprecated
  public Context d()
  {
    aen.a(a, "Either use the Context provided in doInBackground(), or if you're using deprecated methods, pass a Context into the BackgrounTask's constructor");
    return e();
  }
  
  void d(Context paramContext)
  {
    boolean bool;
    if ((paramContext != null) || (a != null))
    {
      bool = true;
      aen.a(bool);
      if (paramContext == null) {
        break label45;
      }
    }
    for (;;)
    {
      if (h != 0) {
        huq.a(paramContext).a(h);
      }
      return;
      bool = false;
      break;
      label45:
      paramContext = a;
    }
  }
  
  @Deprecated
  Context e()
  {
    return a;
  }
  
  public htu f()
  {
    d = true;
    return this;
  }
  
  public boolean g()
  {
    return d;
  }
  
  public String h()
  {
    return b;
  }
  
  int i()
  {
    return c;
  }
  
  public void m_() {}
}

/* Location:
 * Qualified Name:     htu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */