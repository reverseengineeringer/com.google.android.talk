import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class bvo
  extends dyx
  implements Parcelable, bcl, bcn
{
  public static final Parcelable.Creator<bvo> CREATOR = new bvp();
  private final int a;
  private final String e;
  private final String f;
  
  protected bvo(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readInt();
    e = paramParcel.readString();
    f = paramParcel.readString();
  }
  
  public bvo(bfd parambfd, String paramString, int paramInt)
  {
    super(parambfd);
    a = paramInt;
    e = paramString;
    f = bfz.i();
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    paramContext = new bfz(paramContext, b.a);
    paramContext.a();
    try
    {
      long l = paramContext.M(e);
      new edp(e, b.b.b(), l, -1L, f, null, a, emc.b).b(paramContext);
      paramContext.b();
      paramContext.c();
      n_();
      bft.d(paramContext, e);
      return bco.a;
    }
    finally
    {
      paramContext.c();
    }
  }
  
  public String c()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  void n_()
  {
    if (!bfz.a(e)) {
      b.c.a(new bvm(f, e, a), ebi.b().a());
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
  }
}

/* Location:
 * Qualified Name:     bvo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */