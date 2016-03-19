import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class hta
  implements Parcelable
{
  public static final Parcelable.Creator<hta> CREATOR = new htb();
  private final Map<Integer, Integer> a = new HashMap();
  
  public hta() {}
  
  public hta(Parcel paramParcel)
  {
    int j = paramParcel.readInt();
    int i = 0;
    while (i < j)
    {
      int k = paramParcel.readInt();
      int m = paramParcel.readInt();
      a.put(Integer.valueOf(k), Integer.valueOf(m));
      i += 1;
    }
  }
  
  public Integer a(Integer paramInteger)
  {
    return (Integer)a.get(paramInteger);
  }
  
  public Set<Integer> a()
  {
    return a.keySet();
  }
  
  public void a(Integer paramInteger1, Integer paramInteger2)
  {
    a.put(paramInteger1, paramInteger2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a.size());
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramParcel.writeInt(((Integer)localEntry.getKey()).intValue());
      paramParcel.writeInt(((Integer)localEntry.getValue()).intValue());
    }
  }
}

/* Location:
 * Qualified Name:     hta
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */