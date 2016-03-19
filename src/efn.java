import android.content.Intent;

public final class efn
  implements egs
{
  private static final boolean b = false;
  private static final long serialVersionUID = 1L;
  private final int a;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public efn(int paramInt)
  {
    a = paramInt;
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt, knq<Intent> paramknq)
  {
    paramknq = dvd.e(paramInt);
    String str1;
    if (a != 1) {
      if (b)
      {
        str1 = String.valueOf("[ActiveClientStateNotification] Clearing active client time stamp for account: ");
        String str2 = String.valueOf(paramknq.a());
        if (str2.length() == 0) {
          break label57;
        }
        str1.concat(str2);
      }
    }
    for (;;)
    {
      eck.a(paramknq).h();
      return;
      label57:
      new String(str1);
    }
  }
}

/* Location:
 * Qualified Name:     efn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */