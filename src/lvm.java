import java.util.Iterator;
import java.util.NoSuchElementException;

public final class lvm
  implements Iterator<Byte>
{
  int a = 0;
  final int b = c.b();
  
  lvm(lvk paramlvk) {}
  
  private Byte a()
  {
    return Byte.valueOf(b());
  }
  
  private byte b()
  {
    try
    {
      lvk locallvk = c;
      int i = a;
      a = (i + 1);
      byte b1 = locallvk.a(i);
      return b1;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
  }
  
  public boolean hasNext()
  {
    return a < b;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     lvm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */