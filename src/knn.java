import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class knn
{
  private final knk a;
  private final String b;
  
  knn(knk paramknk, String paramString)
  {
    a = paramknk;
    b = ((String)fii.a(paramString));
  }
  
  private StringBuilder a(StringBuilder paramStringBuilder, Iterator<? extends Map.Entry<?, ?>> paramIterator)
  {
    try
    {
      fii.a(paramStringBuilder);
      if (paramIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramIterator.next();
        paramStringBuilder.append(a.a(localEntry.getKey()));
        paramStringBuilder.append(b);
        paramStringBuilder.append(a.a(localEntry.getValue()));
        while (paramIterator.hasNext())
        {
          paramStringBuilder.append(a.a);
          localEntry = (Map.Entry)paramIterator.next();
          paramStringBuilder.append(a.a(localEntry.getKey()));
          paramStringBuilder.append(b);
          paramStringBuilder.append(a.a(localEntry.getValue()));
        }
      }
      return paramStringBuilder;
    }
    catch (IOException paramStringBuilder)
    {
      throw new AssertionError(paramStringBuilder);
    }
  }
  
  public StringBuilder a(StringBuilder paramStringBuilder, Map<?, ?> paramMap)
  {
    return a(paramStringBuilder, paramMap.entrySet().iterator());
  }
}

/* Location:
 * Qualified Name:     knn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */