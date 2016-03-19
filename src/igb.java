import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class igb
{
  private final List<iga> a = new ArrayList();
  
  public igb(String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    int i = 0;
    if (i < paramArrayOfString.length)
    {
      if (paramArrayOfInt[i] == 0) {}
      for (boolean bool = true;; bool = false)
      {
        a.add(new iga(paramArrayOfString[i], bool));
        i += 1;
        break;
      }
    }
  }
  
  public List<iga> a()
  {
    return Collections.unmodifiableList(a);
  }
}

/* Location:
 * Qualified Name:     igb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */