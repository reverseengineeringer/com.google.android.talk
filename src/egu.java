import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Date;

public final class egu
  extends efo
{
  private static final boolean d = false;
  private static final long serialVersionUID = 1L;
  private final int e;
  private final int f;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public egu(String paramString, int paramInt, czb paramczb, long paramLong)
  {
    super(paramString, paramczb, paramLong);
    e = paramInt;
    f = 10;
  }
  
  public egu(kek paramkek)
  {
    super(a.a, aal.a(b, null), aal.a(c, 0L));
    e = aal.a(d, 0);
    f = aal.a(e, 0);
  }
  
  protected void a(bfz parambfz, dyy paramdyy)
  {
    Object localObject;
    if (d)
    {
      paramdyy = String.valueOf("processFocus conversationId: ");
      localObject = String.valueOf(a());
      String str1 = String.valueOf(b());
      int i = d();
      long l = c();
      String str2 = String.valueOf(new Date(c() / 1000L));
      new StringBuilder(String.valueOf(paramdyy).length() + 68 + String.valueOf(localObject).length() + String.valueOf(str1).length() + String.valueOf(str2).length()).append(paramdyy).append((String)localObject).append(" senderId: ").append(str1).append(" type: ").append(i).append(" and timestamp ").append(l).append("  (").append(str2).append(")");
    }
    parambfz.a();
    for (;;)
    {
      try
      {
        if (a() == null)
        {
          ezi.e("Babel_ConversationsData", "Received a Presence message without conversation id", new Object[0]);
          parambfz.b();
          return;
        }
        paramdyy = a();
        if (!parambfz.g().b().equals(b()))
        {
          localObject = b();
          boolean bool;
          if (1 == d())
          {
            bool = true;
            RealTimeChatService.a(paramdyy, (czb)localObject, bool);
          }
          else
          {
            bool = false;
          }
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
 * Qualified Name:     egu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */