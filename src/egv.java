import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Date;

public final class egv
  extends efo
{
  private static final boolean d = false;
  private static final long serialVersionUID = 1L;
  private final int e;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public egv(String paramString, czb paramczb, long paramLong, int paramInt)
  {
    super(paramString, paramczb, paramLong);
    e = paramInt;
  }
  
  public egv(ker paramker)
  {
    super(a.a, aal.a(b, null), aal.a(c, 0L));
    e = aal.a(d, 0);
  }
  
  protected void a(bfz parambfz, dyy paramdyy)
  {
    String str1;
    String str2;
    long l;
    Object localObject;
    if (d)
    {
      paramdyy = String.valueOf("processTyping senderId: ");
      str1 = String.valueOf(b());
      str2 = String.valueOf(a());
      int i = d();
      l = c();
      localObject = String.valueOf(new Date(c() / 1000L));
      new StringBuilder(String.valueOf(paramdyy).length() + 70 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(localObject).length()).append(paramdyy).append(str1).append(" conversationId: ").append(str2).append(" type: ").append(i).append(" timestamp ").append(l).append("  (").append((String)localObject).append(")");
    }
    parambfz.a();
    for (;;)
    {
      try
      {
        paramdyy = parambfz.g();
        if (!paramdyy.b().equals(b()))
        {
          str1 = a();
          if (str1 == null) {
            ezi.d("Babel_ConversationsData", "attempt to process typing for a nonexistent conversation id [null]", new Object[0]);
          }
        }
        else
        {
          parambfz.b();
          return;
        }
        str2 = parambfz.a(b());
        localObject = b();
        l = c();
        boolean bool;
        if (d() == 1)
        {
          bool = true;
          RealTimeChatService.a(paramdyy, str1, (czb)localObject, str2, l, bool);
        }
        else
        {
          bool = false;
        }
      }
      finally
      {
        parambfz.c();
      }
    }
  }
  
  public int d()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     egv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */