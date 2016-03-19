import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;

public abstract class doo
  implements cwi, eff
{
  static final boolean e;
  public static final String f;
  private static final long serialVersionUID = 1L;
  private final String a = ezi.a(new Throwable());
  private String b;
  public int g = 0;
  public transient fak h;
  public String i;
  
  static
  {
    Object localObject = ezi.l;
    e = false;
    localObject = "oauth2:https://www.googleapis.com/auth/chat https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.peopleapi.readwrite https://www.googleapis.com/auth/hangouts https://www.googleapis.com/auth/identity.plus.page.impersonation  https://www.googleapis.com/auth/chat.native";
    try
    {
      Class.forName("com.google.android.apps.hangouts.defaultbuild.EsProvider");
      f = (String)localObject;
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        String str = "oauth2:https://www.googleapis.com/auth/chat https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.peopleapi.readwrite https://www.googleapis.com/auth/hangouts https://www.googleapis.com/auth/identity.plus.page.impersonation ";
      }
    }
  }
  
  private static void a(int paramInt1, dpo paramdpo, long paramLong, int paramInt2)
  {
    aen.a(paramInt1, paramLong, paramInt2, new csn().b(j).a(c));
  }
  
  public static boolean b(String paramString)
  {
    long l = dwt.a().b();
    if (l != 0L) {
      return Long.toString(l).equals(paramString);
    }
    return false;
  }
  
  public boolean E_()
  {
    return false;
  }
  
  public boolean F_()
  {
    return true;
  }
  
  public abstract dqf a(Context paramContext, cwk paramcwk);
  
  public dvn a(long paramLong, int paramInt)
  {
    return null;
  }
  
  public String a()
  {
    return "default_queue";
  }
  
  protected String a(Context paramContext)
  {
    paramContext = String.valueOf(((efg)ilh.a(paramContext, efg.class)).a(g()));
    String str = String.valueOf(f());
    if (str.length() != 0) {
      return paramContext.concat(str);
    }
    return new String(paramContext);
  }
  
  public abstract lyi a(String paramString, int paramInt1, int paramInt2);
  
  public void a(int paramInt)
  {
    g = paramInt;
  }
  
  public void a(Context paramContext, cwk paramcwk, cwm paramcwm)
  {
    long l1 = SystemClock.elapsedRealtime();
    int j = c;
    boolean bool = this instanceof dpo;
    if (bool) {
      a(j, (dpo)this, l1, 2);
    }
    paramContext = a(paramContext, paramcwk);
    long l2 = SystemClock.elapsedRealtime();
    if (bool)
    {
      paramcwm = (dpo)this;
      if (paramContext == null) {
        break label102;
      }
    }
    label102:
    for (l1 = l2;; l1 = 0L)
    {
      a(j, paramcwm, l1, 12);
      if (paramContext == null) {
        break;
      }
      paramContext.b(1000L * l2);
      paramContext.a(this);
      RealTimeChatService.a(c, paramContext);
      return;
    }
    throw new dvn(111);
  }
  
  protected void a(bfd parambfd, dvn paramdvn) {}
  
  protected boolean a(Context paramContext, int paramInt, dvn paramdvn)
  {
    if (paramInt != 0) {}
    do
    {
      return false;
      paramInt = paramdvn.c();
    } while ((paramInt != 104) && (paramInt != 103));
    return true;
  }
  
  public boolean a(cwi paramcwi)
  {
    return false;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return ecg.a(paramcwk, paramdvn.c());
  }
  
  protected boolean a(dvn paramdvn)
  {
    return paramdvn.c() == 104;
  }
  
  public boolean a(String paramString)
  {
    return false;
  }
  
  public void a_(String paramString)
  {
    b = paramString;
  }
  
  public long b()
  {
    return aal.a(aal.oJ, "babel_pending_message_failure_duration", 1200000L);
  }
  
  public GenericUrl b(Context paramContext)
  {
    paramContext.getContentResolver();
    GenericUrl localGenericUrl = new GenericUrl(ezc.b(a(paramContext)));
    paramContext = i();
    if (!TextUtils.isEmpty(paramContext))
    {
      paramContext = String.valueOf(paramContext);
      if (paramContext.length() == 0) {
        break label62;
      }
    }
    label62:
    for (paramContext = "token:".concat(paramContext);; paramContext = new String("token:"))
    {
      localGenericUrl.put("trace", paramContext);
      return localGenericUrl;
    }
  }
  
  public HttpContent b(String paramString, int paramInt1, int paramInt2)
  {
    paramString = a(paramString, paramInt1, paramInt2);
    if (paramString != null)
    {
      i = paramString.toString();
      return new dnd(paramString);
    }
    return null;
  }
  
  public dvn b(long paramLong, int paramInt)
  {
    return null;
  }
  
  public void b(int paramInt, dvn paramdvn)
  {
    bfd localbfd = dvd.e(paramInt);
    if (localbfd != null)
    {
      a(localbfd, paramdvn);
      RealTimeChatService.a(localbfd, this, paramdvn);
    }
    while (!ezi.a("Babel_RequestWriter", 3)) {
      return;
    }
    ezi.a("Babel_RequestWriter", 57 + "Skipping request failure for invalid account: " + paramInt, new Object[0]);
  }
  
  public int c()
  {
    return g;
  }
  
  public cwi d()
  {
    return this;
  }
  
  public String e()
  {
    return null;
  }
  
  public abstract String f();
  
  protected efh g()
  {
    return efh.a;
  }
  
  public boolean h()
  {
    return true;
  }
  
  protected String i()
  {
    return aal.a(aal.oJ, "babel_apiary_trace_token", eea.a);
  }
  
  public boolean j()
  {
    return false;
  }
  
  public void k()
  {
    h = ((fak)ilh.a(aal.oJ, fak.class));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append(getClass().getSimpleName()).append("-").append(hashCode()).append(": ").append(f());
    StringBuilder localStringBuilder2;
    if (((bdp)ilh.a(aal.oJ, bdp.class)).a("babel_server_request_verbose_logging", false))
    {
      localStringBuilder2 = localStringBuilder1.append("\nProtoBuf:\n");
      if (i != null) {
        break label126;
      }
    }
    label126:
    for (String str = "not built yet";; str = i)
    {
      localStringBuilder2.append(str).append("\nCreation stack:\n").append(a).append("\nOrigin stack:\n").append(b);
      return localStringBuilder1.toString();
    }
  }
}

/* Location:
 * Qualified Name:     doo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */