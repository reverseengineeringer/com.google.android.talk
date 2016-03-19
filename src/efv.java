import java.io.Serializable;

public final class efv
  extends eft
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final double i;
  public final double j;
  public final String k;
  
  protected efv(lyt paramlyt, lzv paramlzv)
  {
    super(paramlyt, e, f, a(w), c, "hangouts/location");
    if (efr.d)
    {
      paramlyt = String.valueOf(d);
      if (paramlyt.length() != 0) {
        "Received location: ".concat(paramlyt);
      }
    }
    else
    {
      if (n == null) {
        break label154;
      }
      paramlyt = (maq)n.b(maq.a);
      if (paramlyt == null) {
        break label154;
      }
    }
    label154:
    for (paramlyt = s;; paramlyt = null)
    {
      k = paramlyt;
      paramlyt = (lzi)o.b(lzi.a);
      if (paramlyt == null)
      {
        i = 0.0D;
        j = 0.0D;
        return;
        new String("Received location: ");
        break;
      }
      i = n.doubleValue();
      j = o.doubleValue();
      return;
    }
  }
  
  public efv(int[] paramArrayOfInt, String paramString1, double paramDouble1, double paramDouble2, String paramString2, String paramString3, String paramString4)
  {
    super(paramArrayOfInt, null, null, paramString1, null, paramString3, paramString4, "hangouts/location");
    i = paramDouble1;
    j = paramDouble2;
    k = paramString2;
  }
  
  public String toString()
  {
    String str1 = b;
    String str2 = d;
    double d1 = i;
    double d2 = j;
    String str3 = k;
    String str4 = f;
    return String.valueOf(str1).length() + 107 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "id: " + str1 + " name: " + str2 + " latitude: " + d1 + " longitude: " + d2 + " address: " + str3 + " staticMapUrl: " + str4;
  }
}

/* Location:
 * Qualified Name:     efv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */