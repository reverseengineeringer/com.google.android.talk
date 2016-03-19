import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class lvt
{
  public static final lvt a = new lvt((byte)0);
  private static volatile boolean b = false;
  private final Map<lvu, lvs> c;
  
  lvt()
  {
    c = new HashMap();
  }
  
  private lvt(byte paramByte)
  {
    c = Collections.emptyMap();
  }
  
  public <ContainingType extends lwp> lvs a(ContainingType paramContainingType, int paramInt)
  {
    return (lvs)c.get(new lvu(paramContainingType, paramInt));
  }
}

/* Location:
 * Qualified Name:     lvt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */