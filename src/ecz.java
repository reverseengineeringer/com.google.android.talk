import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.concurrent.ConcurrentHashMap;

public class ecz
  extends dym
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<ecz> CREATOR = new eda();
  private static final ConcurrentHashMap<String, ecz> a = new ConcurrentHashMap();
  
  protected ecz(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  private ecz(bfd parambfd, long paramLong1, long paramLong2)
  {
    super(parambfd, paramLong1, paramLong2);
  }
  
  public static ecz a(Context paramContext, bfd parambfd)
  {
    if (!((eot)ilh.a(paramContext, eot.class)).g()) {
      paramContext = null;
    }
    String str;
    ecz localecz;
    do
    {
      return paramContext;
      str = parambfd.a();
      localecz = (ecz)a.get(str);
      paramContext = localecz;
    } while (localecz != null);
    paramContext = new ecz(parambfd, aal.a(aal.oJ, "babel_sms_background_sync_lowmark_millis", 86400000L), aal.a(aal.oJ, "babel_sms_background_sync_highmark_millis", 172800000L));
    a.putIfAbsent(str, paramContext);
    return (ecz)a.get(str);
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return super.a(parambcg);
  }
  
  protected void a(long paramLong) {}
  
  public int describeContents()
  {
    return 0;
  }
  
  protected long i()
  {
    long l = -1L;
    if (b.b != null) {
      l = bff.a(aal.oJ, b.a, "sms_last_full_sync_time_millis", -1L);
    }
    return l;
  }
  
  public void p_()
  {
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    dvi localdvi = dvd.d;
    if ((dvi.a()) && (b.b != null) && (localeot.b(b.a))) {
      eny.c(b.b);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     ecz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */