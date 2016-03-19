import java.io.Serializable;

public final class efs
  extends eft
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final lci i;
  
  protected efs(lci paramlci)
  {
    super(null, null, null, null, null, null, null, "hangouts/askjane_result");
    i = paramlci;
    boolean bool = efr.d;
  }
  
  public lci a()
  {
    return i;
  }
  
  public String toString()
  {
    String str = String.valueOf(i);
    return String.valueOf(str).length() + 15 + "AskJaneResult: " + str;
  }
}

/* Location:
 * Qualified Name:     efs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */