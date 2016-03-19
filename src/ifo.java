import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;

public final class ifo
  implements Parcelable
{
  public static final Parcelable.Creator<ifo> CREATOR = new ifp();
  private final List<String> a;
  
  ifo(Parcel paramParcel)
  {
    a = paramParcel.createStringArrayList();
  }
  
  public ifo(List<String> paramList)
  {
    a = paramList;
  }
  
  List<String> a()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return a.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(a);
  }
}

/* Location:
 * Qualified Name:     ifo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */