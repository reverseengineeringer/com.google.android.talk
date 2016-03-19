import java.io.Serializable;

public final class efy
  extends eft
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final String i;
  public final int j;
  
  protected efy(lyt paramlyt, lzw paramlzw)
  {
    super(paramlyt, null, null, null, null, "hangouts/gv_voicemail");
    i = X;
    j = Integer.parseInt(G);
    if (efr.d)
    {
      paramlyt = i;
      int k = j;
      new StringBuilder(String.valueOf(paramlyt).length() + 57).append("Received voicemail with media key: ").append(paramlyt).append(" duration: ").append(k);
    }
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
 * Qualified Name:     efy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */