import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;

public class hsc
  implements hsk, ilu, ios, iov, ioz
{
  final SparseArray<hsb> a = new SparseArray();
  hsj b;
  private hsv c;
  private htd d;
  
  public hsc(iog paramiog)
  {
    this(paramiog, (byte)0);
  }
  
  public hsc(iog paramiog, byte paramByte)
  {
    paramiog.a(this);
  }
  
  public final void X_()
  {
    b.a(this);
    c.a(new hsd(this));
  }
  
  public hsc a(int paramInt, hsb paramhsb)
  {
    if (a.get(paramInt) != null)
    {
      paramhsb = String.valueOf("Cannot register more than one handler for a given  id: ");
      throw new IllegalArgumentException(String.valueOf(paramhsb).length() + 11 + paramhsb + paramInt);
    }
    a.put(paramInt, paramhsb);
    return this;
  }
  
  public final hsc a(ilh paramilh)
  {
    paramilh.a(hsc.class, this);
    return this;
  }
  
  public final void a()
  {
    b.b(this);
  }
  
  public void a(int paramInt, Intent paramIntent)
  {
    c.a(paramInt);
    if (paramIntent == null) {
      throw new NullPointerException("Intent must not be null!");
    }
    if ((hsb)a.get(paramInt) == null) {
      throw new IllegalStateException(124 + "You must register a result handler for request code" + paramInt + " before starting an activity for result with that request code");
    }
    paramInt = c.b(paramInt);
    b.a(paramInt, paramIntent);
  }
  
  public final void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((hsj)paramilh.a(hsj.class));
    d = ((htd)paramilh.a(htd.class));
    c = ((hsv)paramilh.a(hsv.class));
  }
  
  public final boolean a(hrz paramhrz)
  {
    return c.a(a, new hse(this, paramhrz));
  }
}

/* Location:
 * Qualified Name:     hsc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */