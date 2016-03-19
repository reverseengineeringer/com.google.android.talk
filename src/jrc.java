import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class jrc
{
  private final Map<String, kog> a;
  
  jrc(Map<String, kog> paramMap)
  {
    a = paramMap;
  }
  
  public <A extends Annotation> A a(Class<?> paramClass, Class<A> paramClass1)
  {
    paramClass = (kog)a.get(paramClass.getName());
    if (paramClass != null)
    {
      paramClass = ((Set)paramClass.a()).iterator();
      while (paramClass.hasNext())
      {
        Annotation localAnnotation = (Annotation)paramClass.next();
        if ((localAnnotation.annotationType().equals(paramClass1)) && (paramClass1.isAssignableFrom(localAnnotation.getClass()))) {
          return localAnnotation;
        }
      }
    }
    return null;
  }
  
  public Set<Annotation> a(Class<?> paramClass)
  {
    paramClass = (kog)a.get(paramClass.getName());
    if (paramClass != null) {
      return (Set)paramClass.a();
    }
    return Collections.emptySet();
  }
}

/* Location:
 * Qualified Name:     jrc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */