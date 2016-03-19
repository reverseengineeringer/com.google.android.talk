import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class bfb
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<bfb> CREATOR = new bfc();
  public final String a;
  private final String b;
  private final int c;
  
  public bfb()
  {
    this("");
  }
  
  protected bfb(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readInt();
  }
  
  public bfb(String paramString)
  {
    this(paramString, "", -1);
  }
  
  public bfb(String paramString1, String paramString2, int paramInt)
  {
    a = paramString1;
    b = paramString2;
    c = paramInt;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    new bfz(paramContext, c).a(b, a);
    return bco.a;
  }
  
  public boolean a()
  {
    return TextUtils.isEmpty(a);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    if (str.length() != 0) {
      return "DraftInfo text: ".concat(str);
    }
    return new String("DraftInfo text: ");
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeInt(c);
  }
}

/* Location:
 * Qualified Name:     bfb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */