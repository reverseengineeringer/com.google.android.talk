import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class ur
  implements Comparable<ur>
{
  public final ResolveInfo a;
  public float b;
  
  public ur(uq paramuq, ResolveInfo paramResolveInfo)
  {
    a = paramResolveInfo;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (ur)paramObject;
    } while (Float.floatToIntBits(b) == Float.floatToIntBits(b));
    return false;
  }
  
  public int hashCode()
  {
    return Float.floatToIntBits(b) + 31;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("resolveInfo:").append(a.toString());
    localStringBuilder.append("; weight:").append(new BigDecimal(b));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     ur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */