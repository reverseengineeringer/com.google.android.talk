import android.content.Context;

public abstract class ebh
  extends eap
{
  private int a = -1;
  private final Context b;
  
  public ebh(Context paramContext)
  {
    b = paramContext;
  }
  
  public final void a(int paramInt)
  {
    if (a >= 0)
    {
      a = paramInt;
      if (paramInt < 0) {
        ((eat)ilh.a(b, eat.class)).b(this);
      }
    }
    do
    {
      return;
      a = paramInt;
    } while (paramInt < 0);
    ((eat)ilh.a(b, eat.class)).a(this);
  }
  
  public final void a(int paramInt, bfd parambfd, eau parameau)
  {
    if (a == paramInt)
    {
      a(-1);
      a(parameau);
    }
  }
  
  public final void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if (a == paramInt)
    {
      a(-1);
      a(paramdvn);
    }
  }
  
  public abstract void a(eau parameau);
  
  public void a(Exception paramException) {}
}

/* Location:
 * Qualified Name:     ebh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */