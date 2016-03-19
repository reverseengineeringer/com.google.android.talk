import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

abstract class kru<E>
  extends ksf<E>
{
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    throw new InvalidObjectException("Use SerializedForm");
  }
  
  abstract krz<E> b();
  
  public boolean contains(Object paramObject)
  {
    return b().contains(paramObject);
  }
  
  boolean e()
  {
    return b().e();
  }
  
  public boolean isEmpty()
  {
    return b().isEmpty();
  }
  
  public int size()
  {
    return b().size();
  }
  
  Object writeReplace()
  {
    return new krv(b());
  }
}

/* Location:
 * Qualified Name:     kru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */