import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

final class bbj
  implements Parcelable, bci, bcn
{
  public static final Parcelable.Creator<bbj> CREATOR = new bbk();
  private final int a;
  private final long b;
  private final List<String> c;
  private bfz d;
  private final bcj e;
  
  bbj(int paramInt, long paramLong)
  {
    a = paramInt;
    b = paramLong;
    c = new ArrayList();
    e = bcj.c;
  }
  
  bbj(int paramInt, long paramLong, List<String> paramList)
  {
    a = paramInt;
    b = paramLong;
    c = paramList;
    e = bcj.b;
  }
  
  protected bbj(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readLong();
    c = new ArrayList();
    paramParcel.readList(c, null);
    int i = paramParcel.readInt();
    if (i == bcj.b.ordinal())
    {
      e = bcj.b;
      return;
    }
    if (i == bcj.c.ordinal())
    {
      e = bcj.c;
      return;
    }
    e = bcj.a;
    hbs.a("Coalesce type cannot be NONE for delayed tasks.");
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    if (d == null) {}
    Object localObject;
    try
    {
      d = new bfz(paramContext, a);
      parambcg = d.v();
      localObject = ((hba)ilh.a(paramContext, hba.class)).a(a);
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        if (!parambcg.contains((String)localIterator.next())) {
          ((haw)localObject).a(2925).d();
        }
      }
      if (parambcg.isEmpty()) {
        break label288;
      }
    }
    catch (bgz paramContext)
    {
      ezi.a("Babel_CMTRLogTask", "AccountId is no longer valid: %d.", new Object[] { Integer.valueOf(a) });
      return bco.a;
    }
    if (c.isEmpty())
    {
      ezi.a("Babel_CMTRLogTask", "Found %d ongoing hangouts.", new Object[] { Integer.valueOf(parambcg.size()) });
      long l1 = aal.a(paramContext, "babel_call_media_type_refresh_max_delay_ms", eea.v);
      long l2 = aal.a(paramContext, "babel_call_media_type_refresh_min_delay_ms", eea.w);
      l1 = koc.a.nextInt((int)(l1 - l2)) + l2;
      localObject = new bbh(a, l1, parambcg);
      ((bcm)ilh.a(paramContext, bcm.class)).a((bcn)localObject);
      ezi.a("Babel_CMTRLogTask", "call_media_type refresh task scheduled with a delay of %d ms and %d conversations for account %d.", new Object[] { Long.valueOf(l1), Integer.valueOf(parambcg.size()), Integer.valueOf(a) });
    }
    label288:
    return bco.a;
  }
  
  public long a()
  {
    return b;
  }
  
  public bcj b()
  {
    return e;
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
    switch (bbl.a[e.ordinal()])
    {
    default: 
      hbs.a("Coalesce type can only be either REPLACE_OLD or USE_OLD.");
      return;
    case 1: 
      paramParcel.writeInt(bcj.b.ordinal());
      return;
    }
    paramParcel.writeInt(bcj.c.ordinal());
  }
}

/* Location:
 * Qualified Name:     bbj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */