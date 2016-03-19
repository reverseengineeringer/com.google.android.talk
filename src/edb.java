import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class edb
  extends dym
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<edb> CREATOR = new edc();
  private static final boolean a;
  private static final ConcurrentHashMap<String, edb> e;
  private static AtomicInteger f;
  private long g;
  private final hba h = (hba)ilh.a(aal.oJ, hba.class);
  
  static
  {
    imx localimx = ezi.o;
    a = false;
    e = new ConcurrentHashMap();
    f = new AtomicInteger(0);
  }
  
  protected edb(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  private edb(bfd parambfd, long paramLong1, long paramLong2)
  {
    super(parambfd, paramLong1, paramLong2);
  }
  
  public static edb a(bfd parambfd)
  {
    Object localObject;
    if (((eot)ilh.a(aal.oJ, eot.class)).a(parambfd.g())) {
      localObject = null;
    }
    String str;
    edb localedb;
    do
    {
      return (edb)localObject;
      str = parambfd.a();
      localedb = (edb)e.get(str);
      localObject = localedb;
    } while (localedb != null);
    parambfd = new edb(parambfd, aal.a(aal.oJ, "babel_tickle_gcm_lowmark_seconds", 270) * 1000, aal.a(aal.oJ, "babel_tickle_gcm_highmark_seconds", 600) * 1000);
    e.putIfAbsent(str, parambfd);
    return (edb)e.get(str);
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return super.a(parambcg);
  }
  
  protected void a(long paramLong)
  {
    g = paramLong;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected long i()
  {
    return g;
  }
  
  public void p_()
  {
    fyp localfyp = fyp.a(aal.oJ);
    try
    {
      int i = b.b.g();
      if (dvp.P.b(i)) {
        h.a(b.b.g()).a(2801).d();
      }
      localfyp.a("hangouts@google.com", Integer.toString(f.incrementAndGet()), new Bundle());
      a(3);
      return;
    }
    catch (IOException localIOException)
    {
      ezi.c("Babel", "Unable to tickle GCM.", localIOException);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     edb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */