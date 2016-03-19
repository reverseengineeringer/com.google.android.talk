import java.util.Arrays;

public final class lct
  extends lyi
{
  private static volatile lct[] c;
  public String a = "";
  public byte[] b = lyo.h;
  
  public lct()
  {
    eE = -1;
  }
  
  public static lct[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lct[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (!a.equals("")) {
      paramlxz.a(1, a);
    }
    if (!Arrays.equals(b, lyo.h)) {
      paramlxz.a(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (!a.equals("")) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (!Arrays.equals(b, lyo.h)) {
      j = i + lxz.b(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */