import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import java.util.List;

final class ifr
  implements ifq, igf, ilu, ios, iov, ioz
{
  final SparseArray<ifz> a = new SparseArray();
  igc b;
  private hsv c;
  
  ifr(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public void X_()
  {
    b.a(this);
    c.a(new ifs(this));
  }
  
  public ifq a(int paramInt, ifz paramifz)
  {
    if (a.get(paramInt) != null)
    {
      paramifz = String.valueOf("Cannot register more than one handler for a given  id: ");
      throw new IllegalArgumentException(String.valueOf(paramifz).length() + 11 + paramifz + paramInt);
    }
    new StringBuilder(21).append("register: ").append(paramInt);
    a.put(paramInt, paramifz);
    return this;
  }
  
  public void a()
  {
    b.b(this);
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((igc)paramilh.a(igc.class));
    c = ((hsv)paramilh.a(hsv.class));
  }
  
  public void a(ify paramify, int paramInt, List<String> paramList)
  {
    c.a(paramInt);
    if ((ifz)a.get(paramInt) == null) {
      throw new IllegalStateException(116 + "You must register a result handler for request code " + paramInt + " before requesting permissions with that request code");
    }
    paramInt = c.b(paramInt);
    b.a(paramify, paramInt, paramList);
  }
  
  public boolean a(ifw paramifw)
  {
    return c.a(a, new ift(this, paramifw));
  }
}

/* Location:
 * Qualified Name:     ifr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */