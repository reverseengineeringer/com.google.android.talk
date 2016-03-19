import java.util.Iterator;
import java.util.Set;

public final class edh
  extends edk
{
  final String a;
  final int b;
  
  public edh(egk paramegk)
  {
    a = paramegk.a();
    b = paramegk.b();
  }
  
  public edh(String paramString, int paramInt)
  {
    a = paramString;
    b = paramInt;
  }
  
  private void b(bfz parambfz)
  {
    if (ezi.a("Babel", 3))
    {
      String str1 = String.valueOf("updateConversationNotificationLevelLocally conversationId: ");
      String str2 = a;
      int i = b;
      ezi.a("Babel", String.valueOf(str1).length() + 31 + String.valueOf(str2).length() + str1 + str2 + " notificationLevel: " + i, new Object[0]);
    }
    parambfz.a();
    try
    {
      parambfz.a(a, b);
      c(parambfz);
      parambfz.b();
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
  
  private void c(bfz parambfz)
  {
    Iterator localIterator = parambfz.ae(a).iterator();
    while (localIterator.hasNext()) {
      parambfz.a((String)localIterator.next(), b);
    }
  }
  
  public void a(bfz parambfz)
  {
    b(parambfz);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    b(parambfz);
    if (bfz.a(a))
    {
      switch (b)
      {
      default: 
        return;
      case 10: 
        parambfz.m(a, 8L);
        parambfz.l(a, 16L);
        return;
      }
      parambfz.l(a, 8L);
      parambfz.m(a, 16L);
      return;
    }
    paramdyy.a(new dph(a, b));
  }
}

/* Location:
 * Qualified Name:     edh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */