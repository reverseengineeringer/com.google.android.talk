import android.content.Context;
import android.os.Build.VERSION;

public final class hrj
{
  private static final imw a = new imw(".login.accountsource");
  
  public static hpz a(Context paramContext)
  {
    return new hqq(paramContext);
  }
  
  static hqp a(hpz paramhpz)
  {
    return new hqp(paramhpz);
  }
  
  public static hqk[] a(Context paramContext, gwk paramgwk)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return new hqk[] { new hro(paramgwk) };
    }
    return new hqk[] { new hrp(paramContext) };
  }
  
  public static ims[] a()
  {
    imw localimw = ims.a;
    return new ims[0];
  }
  
  public static hql b(Context paramContext)
  {
    return new hrl(paramContext);
  }
  
  public static hwi[] b()
  {
    imw localimw = hwi.a;
    return new hwi[0];
  }
}

/* Location:
 * Qualified Name:     hrj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */