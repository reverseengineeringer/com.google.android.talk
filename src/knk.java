import java.io.IOException;
import java.util.Iterator;

public class knk
{
  final String a;
  
  private knk(String paramString)
  {
    a = ((String)fii.a(paramString));
  }
  
  knk(knk paramknk)
  {
    a = a;
  }
  
  private StringBuilder a(StringBuilder paramStringBuilder, Iterator<?> paramIterator)
  {
    try
    {
      a(paramStringBuilder, paramIterator);
      return paramStringBuilder;
    }
    catch (IOException paramStringBuilder)
    {
      throw new AssertionError(paramStringBuilder);
    }
  }
  
  public static knk a(char paramChar)
  {
    return new knk(String.valueOf(paramChar));
  }
  
  public static knk a(String paramString)
  {
    return new knk(paramString);
  }
  
  public <A extends Appendable> A a(A paramA, Iterator<?> paramIterator)
  {
    fii.a(paramA);
    if (paramIterator.hasNext())
    {
      paramA.append(a(paramIterator.next()));
      while (paramIterator.hasNext())
      {
        paramA.append(a);
        paramA.append(a(paramIterator.next()));
      }
    }
    return paramA;
  }
  
  CharSequence a(Object paramObject)
  {
    fii.a(paramObject);
    if ((paramObject instanceof CharSequence)) {
      return (CharSequence)paramObject;
    }
    return paramObject.toString();
  }
  
  public final String a(Iterable<?> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    return a(new StringBuilder(), paramIterable).toString();
  }
  
  public knk b(String paramString)
  {
    fii.a(paramString);
    return new knl(this, this, paramString);
  }
  
  public knn c(String paramString)
  {
    return new knn(this, paramString);
  }
}

/* Location:
 * Qualified Name:     knk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */