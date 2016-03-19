import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

public class dnl
  extends dnh
{
  private static final long serialVersionUID = 1L;
  private final String a;
  
  public dnl(String paramString)
  {
    hbs.b("Expected condition to be false", TextUtils.isEmpty(paramString));
    a = paramString;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    paramString = new izz();
    a = a;
    e = Integer.valueOf(100);
    d = Integer.valueOf(100);
    c = new int[] { 3 };
    i = Boolean.valueOf(false);
    iyv localiyv = new iyv();
    a = paramString;
    return localiyv;
  }
  
  public boolean a(Context paramContext, int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt == 0)
    {
      bool1 = bool2;
      if (aal.a(paramContext, "babel_stickers_anonymous_request", false)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  protected boolean a(Context paramContext, int paramInt, dvn paramdvn)
  {
    if ((a(paramContext, paramInt)) && (paramdvn.c() == 111))
    {
      ezi.c("Babel", "Probably exceeded anonymous daily quota, retrying as authenticated.", new Object[0]);
      return true;
    }
    return super.a(paramContext, paramInt, paramdvn);
  }
  
  public long b()
  {
    return TimeUnit.MINUTES.toMillis(5L);
  }
  
  public String f()
  {
    return "userphotoalbums";
  }
}

/* Location:
 * Qualified Name:     dnl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */