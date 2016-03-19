import java.util.AbstractList;

public final class knm
  extends AbstractList<Object>
{
  public knm(Object[] paramArrayOfObject, Object paramObject1, Object paramObject2) {}
  
  public Object get(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return a[(paramInt - 2)];
    case 0: 
      return b;
    }
    return c;
  }
  
  public int size()
  {
    return a.length + 2;
  }
}

/* Location:
 * Qualified Name:     knm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */