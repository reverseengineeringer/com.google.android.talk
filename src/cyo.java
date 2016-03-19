import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import java.util.EnumSet;

final class cyo
  implements cyh
{
  private static final boolean a = false;
  private final Context b;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  cyo(Context paramContext)
  {
    b = paramContext;
  }
  
  private void a(int paramInt, boolean paramBoolean, EnumSet<cyq> paramEnumSet)
  {
    a(paramInt, paramBoolean, paramEnumSet, false, false, kmm.a);
  }
  
  private void a(int paramInt, boolean paramBoolean1, EnumSet<cyq> paramEnumSet, boolean paramBoolean2, boolean paramBoolean3, knq<Intent> paramknq)
  {
    if (a)
    {
      String str = String.valueOf(paramEnumSet);
      new StringBuilder(String.valueOf(str).length() + 61).append("RealTimeChatNotificationsImpl.update silent: ").append(paramBoolean1).append(" coverage: ").append(str);
    }
    if (!((ekq)ilh.a(b, ekq.class)).b(paramInt))
    {
      f(paramInt);
      g(paramInt);
    }
    for (;;)
    {
      if (paramEnumSet.contains(cyq.c)) {
        b.startService(new cxe().a(b, paramInt));
      }
      return;
      if (paramEnumSet.contains(cyq.a)) {
        new cxw().a(b, paramInt, paramBoolean1, paramBoolean2, paramBoolean3, paramknq);
      }
      if (paramEnumSet.contains(cyq.b)) {
        new cxl().a(b, paramInt, paramBoolean1, paramknq);
      }
    }
  }
  
  private void f(int paramInt)
  {
    cxt.a(b, paramInt);
  }
  
  private void g(int paramInt)
  {
    cxj.a(b, paramInt);
  }
  
  public void a(int paramInt)
  {
    a(paramInt, true, EnumSet.of(cyq.a));
  }
  
  public void a(int paramInt, dza paramdza)
  {
    a(paramInt, paramdza, false, kmm.a);
  }
  
  public void a(knq<Intent> paramknq)
  {
    Object localObject;
    boolean bool;
    knq localknq;
    switch (cyp.a[localObject.ordinal()])
    {
    default: 
      return;
    case 1: 
      aal.a(dvd.e(paramknq), 2362);
    case 2: 
      a(paramknq, true, EnumSet.allOf(cyq.class), bool, false, localknq);
      return;
    }
    a(paramknq, false, EnumSet.allOf(cyq.class), bool, false, localknq);
  }
  
  public void a(int paramInt, String paramString)
  {
    b.startService(new cxv().a(b, paramInt, paramString));
  }
  
  public void a(int paramInt, String paramString1, String paramString2)
  {
    long l = SystemClock.elapsedRealtime();
    csn localcsn = new csn();
    if (((ekq)ilh.a(b, ekq.class)).b(paramInt)) {}
    for (int i = 454;; i = 455)
    {
      aen.a(paramInt, l, 10, localcsn.a(i).c(paramString1).a(paramString2));
      a(paramInt, false, EnumSet.allOf(cyq.class), true, true, kmm.a);
      return;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    a(paramInt, paramBoolean, EnumSet.allOf(cyq.class));
  }
  
  public void b(int paramInt)
  {
    new cwu().a(b, paramInt);
  }
  
  public void b(int paramInt, String paramString)
  {
    b.startService(new cxk().a(b, paramInt, paramString));
  }
  
  public void c(int paramInt)
  {
    a(paramInt, true, EnumSet.of(cyq.c));
  }
  
  public void c(int paramInt, String paramString)
  {
    b.startService(new cxd().a(b, paramInt, paramString));
  }
  
  public void d(int paramInt)
  {
    a(paramInt, null);
    b(paramInt, null);
    c(paramInt, null);
  }
  
  public void e(int paramInt)
  {
    g(paramInt);
    f(paramInt);
    cxb.a(b, paramInt);
  }
}

/* Location:
 * Qualified Name:     cyo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */