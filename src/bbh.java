import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class bbh
  implements Parcelable, bci, bck, bcn
{
  public static final Parcelable.Creator<bbh> CREATOR = new bbi();
  private final int a;
  private final long b;
  private final List<String> c;
  private bfz d;
  
  bbh(int paramInt, long paramLong, List<String> paramList)
  {
    a = paramInt;
    b = paramLong;
    c = paramList;
  }
  
  protected bbh(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readLong();
    c = new ArrayList();
    paramParcel.readList(c, null);
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    if (d == null) {
      d = new bfz(paramContext, a);
    }
    Object localObject = d.v();
    parambcg = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (((List)localObject).contains(str))
      {
        parambcg.add(new doz(str, true, false, false, null, 0L, null, 0L, null));
        localArrayList.add(str);
      }
    }
    if (parambcg.size() > 0)
    {
      localObject = dvd.e(a);
      if (localObject == null) {
        break label286;
      }
      localObject = dvd.e((bfd)localObject);
      if (localObject == null) {
        break label262;
      }
      ((dvm)localObject).a(parambcg, ebi.b().a());
      long l = aal.a(paramContext, "babel_call_media_type_refresh_log_delay_ms", eea.x);
      ((bcm)ilh.a(paramContext, bcm.class)).a(new bbj(a, l, localArrayList));
      ezi.a("Babel_CMTRTask", "call_media_type refresh logging task scheduled with a delay of %d ms and %d conversations for account %d.", new Object[] { Long.valueOf(l), Integer.valueOf(localArrayList.size()), Integer.valueOf(a) });
    }
    for (;;)
    {
      return bco.a;
      label262:
      ezi.d("Babel_CMTRTask", "BabelClient is null for account %d.", new Object[] { Integer.valueOf(a) });
      continue;
      label286:
      ezi.d("Babel_CMTRTask", "Account id is not valid: %d.", new Object[] { Integer.valueOf(a) });
    }
  }
  
  public long a()
  {
    return b;
  }
  
  public bcj b()
  {
    return bcj.c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeLong(b);
    paramParcel.writeList(c);
  }
}

/* Location:
 * Qualified Name:     bbh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */