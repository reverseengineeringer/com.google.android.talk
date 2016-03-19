import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.concurrent.ConcurrentHashMap;

public class eck
  extends dym
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<eck> CREATOR = new ecl();
  public static final ConcurrentHashMap<Integer, eck> a = new ConcurrentHashMap();
  public volatile boolean e = false;
  private long f;
  
  protected eck(Parcel paramParcel)
  {
    super(paramParcel);
    f = paramParcel.readLong();
    if (paramParcel.readByte() != 0) {
      bool = true;
    }
    e = bool;
  }
  
  private eck(bfd parambfd, long paramLong1, long paramLong2)
  {
    super(parambfd, paramLong1, paramLong2);
    f = -1L;
  }
  
  public static eck a(bfd parambfd)
  {
    int i = parambfd.g();
    eck localeck2 = (eck)a.get(Integer.valueOf(i));
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    eck localeck1 = localeck2;
    if (localeck2 == null)
    {
      localeck1 = localeck2;
      if (!localeot.a(i))
      {
        parambfd = new eck(parambfd, aal.a(aal.oJ, "babel_ac_renew_lowmark_seconds", 120) * 1000, aal.a(aal.oJ, "babel_ac_renew_highmark_seconds", 270) * 1000);
        a.putIfAbsent(Integer.valueOf(i), parambfd);
        localeck1 = (eck)a.get(Integer.valueOf(i));
      }
    }
    return localeck1;
  }
  
  public static void a(bfd parambfd, boolean paramBoolean)
  {
    parambfd = (eck)a.get(Integer.valueOf(parambfd.g()));
    if (parambfd != null) {
      e = paramBoolean;
    }
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return super.a(parambcg);
  }
  
  protected void a(long paramLong)
  {
    f = paramLong;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected long i()
  {
    return f;
  }
  
  public void p_()
  {
    Object localObject = aal.oJ;
    awm localawm = (awm)ilh.a((Context)localObject, awm.class);
    hpz localhpz = (hpz)ilh.a((Context)localObject, hpz.class);
    int i = b.a;
    if (!localawm.a(localhpz.a(i)))
    {
      localObject = String.valueOf(b.b.M());
      if (((String)localObject).length() != 0) {}
      for (localObject = "Full jid not valid during setting active client account: ".concat((String)localObject);; localObject = new String("Full jid not valid during setting active client account: "))
      {
        ezi.e("Babel", (String)localObject, new Object[0]);
        return;
      }
    }
    k();
    int j = aal.a((Context)localObject, "babel_ac_renew_cycle_seconds", 300);
    a(new dpq(localawm.d(i), j));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    paramParcel.writeLong(f);
    if (e) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     eck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */