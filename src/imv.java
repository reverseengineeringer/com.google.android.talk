import java.io.PrintWriter;
import java.io.StringWriter;

public final class imv
  extends PrintWriter
{
  public imv()
  {
    super(new StringWriter());
  }
  
  public String toString()
  {
    return out.toString();
  }
}

/* Location:
 * Qualified Name:     imv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */