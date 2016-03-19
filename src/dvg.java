import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dvg
{
  public int a = 100;
  private final bfd b;
  private final dvg c;
  private final dvm d;
  private boolean e = false;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  
  public dvg(bfd parambfd, dvg paramdvg)
  {
    b = parambfd;
    d = new dvm(b);
    c = paramdvg;
  }
  
  public String a()
  {
    int i = b.g();
    String str = String.valueOf(ezi.b(b.a()));
    return String.valueOf(str).length() + 12 + i + "-" + str;
  }
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 85	dvg:a	()Ljava/lang/String;
    //   6: invokestatic 63	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   9: astore_2
    //   10: aload_2
    //   11: invokevirtual 68	java/lang/String:length	()I
    //   14: ifeq +53 -> 67
    //   17: ldc 87
    //   19: aload_2
    //   20: invokevirtual 90	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   23: astore_2
    //   24: ldc 92
    //   26: aload_2
    //   27: iconst_0
    //   28: anewarray 4	java/lang/Object
    //   31: invokestatic 95	ezi:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   34: aload_1
    //   35: invokestatic 101	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   38: ifne +16 -> 54
    //   41: getstatic 107	aal:oJ	Landroid/content/Context;
    //   44: aload_0
    //   45: getfield 34	dvg:b	Lbfd;
    //   48: invokestatic 113	java/lang/System:currentTimeMillis	()J
    //   51: invokestatic 118	bff:a	(Landroid/content/Context;Lbfd;J)V
    //   54: aload_0
    //   55: iconst_0
    //   56: putfield 28	dvg:f	Z
    //   59: aload_0
    //   60: iconst_0
    //   61: putfield 30	dvg:g	Z
    //   64: aload_0
    //   65: monitorexit
    //   66: return
    //   67: new 59	java/lang/String
    //   70: dup
    //   71: ldc 87
    //   73: invokespecial 120	java/lang/String:<init>	(Ljava/lang/String;)V
    //   76: astore_2
    //   77: goto -53 -> 24
    //   80: astore_1
    //   81: aload_0
    //   82: monitorexit
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	dvg
    //   0	85	1	paramString	String
    //   9	68	2	str	String
    // Exception table:
    //   from	to	target	type
    //   2	24	80	finally
    //   24	54	80	finally
    //   54	66	80	finally
    //   67	77	80	finally
    //   81	83	80	finally
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      if (ezi.a("Babel", 3))
      {
        str = String.valueOf(a());
        if (str.length() == 0) {
          break label83;
        }
      }
      label83:
      for (String str = "register:".concat(str);; str = new String("register:"))
      {
        ezi.a("Babel", str, new Object[0]);
        if (!((eot)ilh.a(aal.oJ, eot.class)).a(b.g())) {
          break;
        }
        ezi.c("Babel", "Skipping registration for SMS only account", new Object[0]);
        return;
      }
      if (b.d()) {
        break label159;
      }
    }
    finally {}
    Object localObject2 = String.valueOf(a());
    if (((String)localObject2).length() != 0) {}
    for (localObject2 = "Account not valid for babel. Skip device registration: ".concat((String)localObject2);; localObject2 = new String("Account not valid for babel. Skip device registration: "))
    {
      ezi.c("Babel", (String)localObject2, new Object[0]);
      return;
    }
    label159:
    if ((k()) && (!paramBoolean))
    {
      localObject2 = String.valueOf(a());
      if (((String)localObject2).length() != 0) {}
      for (localObject2 = "Account already registered. Skip device registration: ".concat((String)localObject2);; localObject2 = new String("Account already registered. Skip device registration: "))
      {
        ezi.c("Babel", (String)localObject2, new Object[0]);
        return;
      }
    }
    localObject2 = dvd.e;
    if (dwt.a().d())
    {
      localObject2 = String.valueOf(a());
      if (((String)localObject2).length() != 0) {}
      for (localObject2 = "register - retrying gcm registration:".concat((String)localObject2);; localObject2 = new String("register - retrying gcm registration:"))
      {
        ezi.c("Babel", (String)localObject2, new Object[0]);
        e = true;
        localObject2 = dvd.e;
        dwt.a().g();
        return;
      }
    }
    localObject2 = dvd.e;
    if (!dwt.a().c())
    {
      e = true;
      localObject2 = String.valueOf(a());
      if (((String)localObject2).length() != 0) {}
      for (localObject2 = "Account registration pending Gcm:".concat((String)localObject2);; localObject2 = new String("Account registration pending Gcm:"))
      {
        ezi.c("Babel", (String)localObject2, new Object[0]);
        return;
      }
    }
    localObject2 = String.valueOf(a());
    if (((String)localObject2).length() != 0) {}
    for (localObject2 = "Starting account registration:".concat((String)localObject2);; localObject2 = new String("Starting account registration:"))
    {
      ezi.c("Babel", (String)localObject2, new Object[0]);
      RealTimeChatService.a(b, h);
      f = true;
      e = false;
      break;
    }
  }
  
  public boolean b()
  {
    return c != null;
  }
  
  public dvm c()
  {
    try
    {
      dvm localdvm = d;
      return localdvm;
    }
    finally {}
  }
  
  public String d()
  {
    return h().M();
  }
  
  public String e()
  {
    return b.a();
  }
  
  public String f()
  {
    return b.U();
  }
  
  public int g()
  {
    return b.g();
  }
  
  public bfd h()
  {
    try
    {
      bfd localbfd = b;
      return localbfd;
    }
    finally {}
  }
  
  public int i()
  {
    if (((eot)ilh.a(aal.oJ, eot.class)).a(g())) {
      return 102;
    }
    for (;;)
    {
      try
      {
        if ((a == 100) || (a == 101))
        {
          if (b.f()) {
            a = 108;
          }
        }
        else
        {
          if (dvd.a)
          {
            String str1 = String.valueOf(a());
            String str2 = String.valueOf(Integer.toString(a));
            new StringBuilder(String.valueOf(str1).length() + 19 + String.valueOf(str2).length()).append("Account ").append(str1).append(" in state: ").append(str2);
          }
          int i = a;
          return i;
        }
      }
      finally {}
      if ((k()) && (b.d())) {
        a = 102;
      } else if ((e) || (f)) {
        a = 101;
      }
    }
  }
  
  public void j()
  {
    if (dvd.a)
    {
      String str = String.valueOf(a());
      if (str.length() == 0) {
        break label59;
      }
      "Clearing account state for".concat(str);
    }
    for (;;)
    {
      label59:
      try
      {
        a = 100;
        e = false;
        f = false;
        g = false;
        h = false;
        return;
      }
      finally {}
      new String("Clearing account state for");
    }
  }
  
  public boolean k()
  {
    return ((awm)ilh.a(aal.oJ, awm.class)).a(b.g());
  }
  
  public boolean l()
  {
    return i() == 102;
  }
  
  public boolean m()
  {
    return b.k();
  }
  
  public void n()
  {
    try
    {
      if (dwt.a().c()) {
        RealTimeChatService.b(b);
      }
      a(null);
      j();
      return;
    }
    finally {}
  }
  
  public void o()
  {
    bff.a(aal.oJ, b, -1L);
  }
  
  public void p()
  {
    bff.h(aal.oJ, b);
  }
  
  void q()
  {
    try
    {
      if (!b.d())
      {
        String str1 = String.valueOf(a());
        ezi.a("Babel", String.valueOf(str1).length() + 61 + "Account " + str1 + " not valid for babel. Skip device registration renew.", new Object[0]);
        return;
      }
      if ((!k()) || (g)) {
        return;
      }
    }
    finally {}
    long l1 = bff.f(aal.oJ, b);
    long l2 = System.currentTimeMillis();
    if (((l1 - l2 > 86400000L) || (l2 - l1 > dvd.b())) && (dwt.a().c())) {
      if (ezi.a("Babel", 3))
      {
        str2 = String.valueOf(a());
        if (str2.length() == 0) {
          break label199;
        }
      }
    }
    label199:
    for (String str2 = "Renewing account registration:".concat(str2);; str2 = new String("Renewing account registration:"))
    {
      ezi.a("Babel", str2, new Object[0]);
      RealTimeChatService.a(b, true);
      g = true;
      return;
    }
  }
  
  void r()
  {
    try
    {
      if ((!b()) && (!b.d())) {
        return;
      }
      if (((eot)ilh.a(aal.oJ, eot.class)).a(b.g())) {
        return;
      }
    }
    finally {}
    long l1 = bff.g(aal.oJ, b);
    long l2 = System.currentTimeMillis();
    if ((l1 - l2 > 86400000L) || (l2 - l1 > dvd.c())) {
      if (ezi.a("Babel", 3))
      {
        str = String.valueOf(a());
        if (str.length() == 0) {
          break label149;
        }
      }
    }
    label149:
    for (String str = "Renewing account setting:".concat(str);; str = new String("Renewing account setting:"))
    {
      ezi.a("Babel", str, new Object[0]);
      RealTimeChatService.a(b);
      return;
    }
  }
  
  public boolean s()
  {
    try
    {
      boolean bool = bff.f(aal.oJ, b.g());
      return bool;
    }
    finally {}
  }
  
  public boolean t()
  {
    try
    {
      boolean bool = bff.g(aal.oJ, b.g());
      return bool;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     dvg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */