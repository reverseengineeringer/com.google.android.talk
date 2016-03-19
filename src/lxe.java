import java.util.List;

public final class lxe
  extends RuntimeException
{
  private static final long serialVersionUID = -7466929953374883507L;
  private final List<String> a = null;
  
  public lxe()
  {
    super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
  }
  
  public lwk a()
  {
    return new lwk(getMessage());
  }
}

/* Location:
 * Qualified Name:     lxe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */