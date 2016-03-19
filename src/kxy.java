import java.util.AbstractSet;
import java.util.Collection;

abstract class kxy<E>
  extends AbstractSet<E>
{
  public boolean removeAll(Collection<?> paramCollection)
  {
    return aen.a(this, paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    return super.retainAll((Collection)fii.a(paramCollection));
  }
}

/* Location:
 * Qualified Name:     kxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */