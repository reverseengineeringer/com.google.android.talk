import java.util.Iterator;

public final class fmg
{
  private final String a;
  
  public fmg(String paramString)
  {
    a = paramString;
  }
  
  private static CharSequence a(Object paramObject)
  {
    if ((paramObject instanceof CharSequence)) {
      return (CharSequence)paramObject;
    }
    return paramObject.toString();
  }
  
  public final StringBuilder a(StringBuilder paramStringBuilder, Iterable<?> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    if (paramIterable.hasNext())
    {
      paramStringBuilder.append(a(paramIterable.next()));
      while (paramIterable.hasNext())
      {
        paramStringBuilder.append(a);
        paramStringBuilder.append(a(paramIterable.next()));
      }
    }
    return paramStringBuilder;
  }
}

/* Location:
 * Qualified Name:     fmg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */