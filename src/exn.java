import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class exn
  extends HashSet<String>
{
  private static final long serialVersionUID = 1L;
  
  public exn() {}
  
  private exn(Collection<String> paramCollection)
  {
    super(paramCollection);
  }
  
  public static exn a(String paramString)
  {
    exn localexn = null;
    if (paramString != null) {
      localexn = new exn(Arrays.asList(paramString.split("\\|")));
    }
    return localexn;
  }
  
  public String a()
  {
    if (size() > 0) {
      return (String)iterator().next();
    }
    return null;
  }
  
  public String b()
  {
    if (this != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = iterator();
      int i = 1;
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (i != 0) {
          i = 0;
        }
        for (;;)
        {
          localStringBuilder.append(str);
          break;
          localStringBuilder.append("|");
        }
      }
      return localStringBuilder.toString();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     exn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */