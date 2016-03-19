import java.io.Serializable;

public final class efu
  extends eft
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final String i;
  
  protected efu(lyt paramlyt, lzw paramlzw)
  {
    super(paramlyt, null, null, null, null, "audio/*");
    i = X;
    if (efr.d)
    {
      paramlyt = String.valueOf(i);
      if (paramlyt.length() != 0) {
        "Received audio attachment with media key: ".concat(paramlyt);
      }
    }
    else
    {
      return;
    }
    new String("Received audio attachment with media key: ");
  }
  
  public String toString()
  {
    String str = String.valueOf(i);
    if (str.length() != 0) {
      return "mediaKey: ".concat(str);
    }
    return new String("mediaKey: ");
  }
}

/* Location:
 * Qualified Name:     efu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */