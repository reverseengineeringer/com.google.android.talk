import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public final class hzs
  implements hzq
{
  public static final Parcelable.Creator<hzs> CREATOR = new hzt();
  final List<String> a = new ArrayList();
  final List<String> b = new ArrayList();
  
  public hzs() {}
  
  public hzs(Parcel paramParcel)
  {
    paramParcel.readStringList(a);
    paramParcel.readStringList(b);
  }
  
  public hzs a(String paramString)
  {
    a.add(paramString);
    return this;
  }
  
  public boolean a(hqb paramhqb)
  {
    int i = 0;
    while (i < a.size())
    {
      if (!paramhqb.d((String)a.get(i))) {
        return false;
      }
      i += 1;
    }
    i = 0;
    for (;;)
    {
      if (i >= b.size()) {
        break label90;
      }
      if (paramhqb.d((String)b.get(i))) {
        break;
      }
      i += 1;
    }
    label90:
    return true;
  }
  
  public hzs b(String paramString)
  {
    b.add(paramString);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(a);
    paramParcel.writeStringList(b);
  }
}

/* Location:
 * Qualified Name:     hzs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */