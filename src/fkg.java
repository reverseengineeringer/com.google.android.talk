import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Iterator;

public abstract class fkg<T>
  implements fil, Iterable<T>
{
  public final DataHolder a;
  
  public fkg(DataHolder paramDataHolder)
  {
    a = paramDataHolder;
    if (a != null) {
      a.a(this);
    }
  }
  
  public fkg(DataHolder paramDataHolder, byte paramByte)
  {
    this(paramDataHolder);
  }
  
  public fkg(DataHolder paramDataHolder, char paramChar)
  {
    this(paramDataHolder, (byte)0);
  }
  
  public int a()
  {
    if (a == null) {
      return 0;
    }
    return a.d();
  }
  
  public abstract T a(int paramInt);
  
  public void b()
  {
    if (a != null) {
      a.f();
    }
  }
  
  @Deprecated
  public boolean c()
  {
    return (a == null) || (a.e());
  }
  
  @Deprecated
  public void d()
  {
    b();
  }
  
  public Bundle e()
  {
    return a.c();
  }
  
  public Iterator<T> iterator()
  {
    return new fkm(this);
  }
}

/* Location:
 * Qualified Name:     fkg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */