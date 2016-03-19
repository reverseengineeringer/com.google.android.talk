import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class apk
{
  private final Map<Class<?>, apl<?>> a = new HashMap();
  
  public <Model> List<apg<Model, ?>> a(Class<Model> paramClass)
  {
    paramClass = (apl)a.get(paramClass);
    if (paramClass == null) {
      return null;
    }
    return a;
  }
  
  public void a()
  {
    a.clear();
  }
  
  public <Model> void a(Class<Model> paramClass, List<apg<Model, ?>> paramList)
  {
    if ((apl)a.put(paramClass, new apl(paramList)) != null)
    {
      paramClass = String.valueOf(paramClass);
      throw new IllegalStateException(String.valueOf(paramClass).length() + 34 + "Already cached loaders for model: " + paramClass);
    }
  }
}

/* Location:
 * Qualified Name:     apk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */