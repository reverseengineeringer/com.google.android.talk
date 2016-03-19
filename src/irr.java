import java.util.AbstractMap;

final class irr
  extends AbstractMap<String, Object>
{
  final Object a;
  final irm b;
  
  irr(Object paramObject, boolean paramBoolean)
  {
    a = paramObject;
    b = irm.a(paramObject.getClass(), paramBoolean);
    if (!b.a()) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      fii.a(paramBoolean);
      return;
    }
  }
  
  public iru a()
  {
    return new iru(this);
  }
  
  public boolean containsKey(Object paramObject)
  {
    return get(paramObject) != null;
  }
  
  public Object get(Object paramObject)
  {
    if (!(paramObject instanceof String)) {}
    do
    {
      return null;
      paramObject = b.a((String)paramObject);
    } while (paramObject == null);
    return ((iry)paramObject).a(a);
  }
}

/* Location:
 * Qualified Name:     irr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */