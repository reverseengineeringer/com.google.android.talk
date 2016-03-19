import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.concurrent.ConcurrentHashMap;

public class ecx
  extends dym
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<ecx> CREATOR = new ecy();
  private static final ConcurrentHashMap<Integer, ecx> a = new ConcurrentHashMap();
  private long e = -1L;
  
  private ecx(int paramInt, long paramLong1, long paramLong2)
  {
    super(dvd.e(paramInt), paramLong1, paramLong2);
  }
  
  protected ecx(Parcel paramParcel)
  {
    super(paramParcel);
    e = paramParcel.readLong();
  }
  
  public static ecx b(int paramInt)
  {
    ecx localecx2 = (ecx)a.get(Integer.valueOf(paramInt));
    ecx localecx1 = localecx2;
    if (localecx2 == null)
    {
      localecx1 = new ecx(paramInt, aal.a(aal.oJ, "babel_suggested_contact_lowmark_seconds", 72000) * 1000, aal.a(aal.oJ, "babel_suggested_contact_highmark_seconds", 86400) * 1000);
      a.putIfAbsent(Integer.valueOf(paramInt), localecx1);
      localecx1 = (ecx)a.get(Integer.valueOf(paramInt));
    }
    return localecx1;
  }
  
  public static ecx c(int paramInt)
  {
    return (ecx)a.remove(Integer.valueOf(paramInt));
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return super.a(parambcg);
  }
  
  protected void a(long paramLong)
  {
    e = paramLong;
    bff.b(aal.oJ, b.a, "last_suggested_contacts_time", e);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected long i()
  {
    if (e == -1L) {
      e = bff.a(aal.oJ, b.a, "last_suggested_contacts_time", 0L);
    }
    return e;
  }
  
  public void p_()
  {
    k();
    int i = aal.a(aal.oJ, "babel_sc_max_pinned", 500);
    int j = aal.a(aal.oJ, "babel_sc_max_favorites", 15);
    int k = aal.a(aal.oJ, "babel_sc_max_you_hangout_with", 500);
    int m = aal.a(aal.oJ, "babel_sc_max_other_contacts_on_hangouts", 500);
    int n = aal.a(aal.oJ, "babel_sc_max_dismissed", 500);
    Object localObject = aal.oJ;
    int i1 = b.a;
    try
    {
      byte[] arrayOfByte1 = bff.c((Context)localObject, i1, "hash_pinned");
      byte[] arrayOfByte2 = bff.c((Context)localObject, i1, "hash_favorites");
      byte[] arrayOfByte3 = bff.c((Context)localObject, i1, "hash_people_you_hangout_with");
      byte[] arrayOfByte4 = bff.c((Context)localObject, i1, "hash_other_people_on_hangout");
      localObject = bff.c((Context)localObject, i1, "hash_dismissed_contacts");
      a(new dpe(i, j, k, m, n, arrayOfByte1, arrayOfByte2, arrayOfByte3, arrayOfByte4, (byte[])localObject));
      return;
    }
    catch (hqd localhqd)
    {
      c(i1);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    paramParcel.writeLong(e);
  }
}

/* Location:
 * Qualified Name:     ecx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */