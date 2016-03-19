import java.io.Serializable;
import java.util.Arrays;

final class krf<F, T>
  extends kxj<F>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final knj<F, ? extends T> a;
  final kxj<T> b;
  
  krf(knj<F, ? extends T> paramknj, kxj<T> paramkxj)
  {
    a = ((knj)fii.a(paramknj));
    b = ((kxj)fii.a(paramkxj));
  }
  
  public int compare(F paramF1, F paramF2)
  {
    return b.compare(a.a(paramF1), a.a(paramF2));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof krf)) {
        break;
      }
      paramObject = (krf)paramObject;
    } while ((a.equals(a)) && (b.equals(b)));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public String toString()
  {
    String str1 = String.valueOf(b);
    String str2 = String.valueOf(a);
    return String.valueOf(str1).length() + 13 + String.valueOf(str2).length() + str1 + ".onResultOf(" + str2 + ")";
  }
}

/* Location:
 * Qualified Name:     krf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */