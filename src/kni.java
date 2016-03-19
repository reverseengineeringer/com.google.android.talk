import java.io.Serializable;

public final class kni
  extends kng<Object>
  implements Serializable
{
  public static final kni a = new kni();
  private static final long serialVersionUID = 1L;
  
  private Object readResolve()
  {
    return a;
  }
  
  protected int b(Object paramObject)
  {
    return System.identityHashCode(paramObject);
  }
  
  protected boolean b(Object paramObject1, Object paramObject2)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     kni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */