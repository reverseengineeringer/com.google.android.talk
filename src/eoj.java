final class eoj
  implements Runnable
{
  final boolean a;
  private final bfd b;
  private boolean c;
  private eny d;
  
  public eoj(bfd parambfd, boolean paramBoolean)
  {
    b = parambfd;
    a = paramBoolean;
    c = false;
    d = null;
  }
  
  public void a()
  {
    try
    {
      c = true;
      if (d != null) {
        d.h = true;
      }
      return;
    }
    finally {}
  }
  
  public void run()
  {
    for (;;)
    {
      int i;
      try
      {
        bfz localbfz1 = new bfz(aal.oJ, b.g());
        if (a)
        {
          if (((hpz)ilh.a(aal.oJ, hpz.class)).a(b.g()).a("sms_no_full_sync_till_millis", -1L) <= System.currentTimeMillis()) {
            break label452;
          }
          if (eny.a)
          {
            i = b.g();
            new StringBuilder(59).append("SmsSyncManager A#").append(i).append(": task can not be scheduled yet");
          }
          return;
        }
        l = ((hpz)ilh.a(aal.oJ, hpz.class)).a(b.g()).a("sms_last_sync_time_millis", -1L);
        try
        {
          if (c)
          {
            i = b.g();
            ezi.c("Babel_SMS", 42 + "SmsSyncManager A#" + i + ": task aborted", new Object[0]);
            return;
          }
          d = new eny(localbfz1, l, a);
          i = d.b();
          if (i < 0) {
            return;
          }
        }
        finally {}
        if (!a) {
          break label325;
        }
      }
      finally
      {
        eny.a(b.a(), this);
      }
      ((hpz)ilh.a(aal.oJ, hpz.class)).b(b.g()).b("sms_last_full_sync_time_millis", System.currentTimeMillis()).d();
      label325:
      if (!eny.a(localbfz2))
      {
        if ((!a) || (i != 0)) {
          break label438;
        }
        i = b.g();
        ezi.e("Babel_SMS", 75 + "SmsSyncManager A#" + i + ": even after full sync we are still not in sync", new Object[0]);
        ((hpz)ilh.a(aal.oJ, hpz.class)).b(b.g()).b("sms_no_full_sync_till_millis", System.currentTimeMillis() + eny.e).d();
      }
      for (;;)
      {
        eny.a(b.a(), this);
        return;
        label438:
        eny.a(b, true, 10000L);
      }
      label452:
      long l = -1L;
    }
  }
}

/* Location:
 * Qualified Name:     eoj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */