import android.content.ComponentName;
import android.content.Intent;
import java.util.Arrays;

final class flq
{
  private final String a;
  private final ComponentName b;
  
  public flq(ComponentName paramComponentName)
  {
    a = null;
    b = ((ComponentName)aal.d(paramComponentName));
  }
  
  public flq(String paramString)
  {
    a = aal.v(paramString);
    b = null;
  }
  
  public Intent a()
  {
    if (a != null) {
      return new Intent(a).setPackage("com.google.android.gms");
    }
    return new Intent().setComponent(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof flq)) {
        return false;
      }
      paramObject = (flq)paramObject;
    } while ((aal.a(a, a)) && (aal.a(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public String toString()
  {
    if (a == null) {
      return b.flattenToString();
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     flq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */