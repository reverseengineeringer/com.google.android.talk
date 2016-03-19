import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

public final class hqp
  implements hwi, ims
{
  private final List<imt> b = Arrays.asList(new imt[] { new imt(this, "print") });
  private final hpz c;
  
  public hqp(hpz paramhpz)
  {
    c = paramhpz;
  }
  
  public void a(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.append(c.b());
  }
}

/* Location:
 * Qualified Name:     hqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */