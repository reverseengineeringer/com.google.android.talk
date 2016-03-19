import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dvt
  extends dyx
{
  private final String a;
  private final String e;
  private final String f;
  private final boolean g;
  private final boolean h;
  private int i;
  
  public dvt(bfd parambfd, String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(parambfd);
    a = paramString1;
    e = paramString2;
    f = paramString3;
    g = paramBoolean1;
    h = paramBoolean2;
    i = -1;
  }
  
  public void a(int paramInt)
  {
    i = paramInt;
  }
  
  public void p_()
  {
    Object localObject = new bfz(aal.oJ, b.a);
    if (!TextUtils.isEmpty(a)) {
      a(new dnn(a, e, f, g, h));
    }
    for (;;)
    {
      return;
      if (!TextUtils.isEmpty(e))
      {
        ((bfz)localObject).a(null, e, g);
        if (g) {
          ((bfz)localObject).c(null, e, f, null);
        }
        while (i >= 0)
        {
          localObject = new drv(new iyg());
          localObject = new eau(i, 1, (dqf)localObject);
          RealTimeChatService.a(i, b.b, (eau)localObject);
          return;
          ((bfz)localObject).i(null, e);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     dvt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */