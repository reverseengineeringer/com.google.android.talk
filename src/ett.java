import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ett
  extends dyx
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<ett> CREATOR = new etu();
  private final String a;
  private final String e;
  private final String f;
  
  protected ett(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
  }
  
  public ett(bfd parambfd, String paramString1, String paramString2, String paramString3)
  {
    super(parambfd);
    a = paramString1;
    e = paramString2;
    f = paramString3;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return a(parambcg);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void p_()
  {
    a(new dnb(a, e, f));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    paramParcel.writeString(a);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
  }
}

/* Location:
 * Qualified Name:     ett
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */