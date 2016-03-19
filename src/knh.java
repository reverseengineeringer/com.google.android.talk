import java.io.Serializable;

public final class knh
  extends kng<Object>
  implements Serializable
{
  public static final knh a = new knh();
  private static final long serialVersionUID = 1L;
  
  private Object readResolve()
  {
    return a;
  }
  
  protected int b(Object paramObject)
  {
    return paramObject.hashCode();
  }
  
  protected boolean b(Object paramObject1, Object paramObject2)
  {
    return paramObject1.equals(paramObject2);
  }
}

/* Location:
 * Qualified Name:     knh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */