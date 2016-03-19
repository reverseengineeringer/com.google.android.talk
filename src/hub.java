import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class hub
  implements Parcelable
{
  public static final Parcelable.Creator<hub> CREATOR = new huc();
  private static final String[] a = new String[0];
  private int b;
  private Map<String, Integer> c;
  
  hub(Parcel paramParcel)
  {
    b = paramParcel.readInt();
    int j = paramParcel.readInt();
    c = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      String str = paramParcel.readString();
      int k = paramParcel.readInt();
      c.put(str, Integer.valueOf(k));
      i += 1;
    }
  }
  
  public hub(hum paramhum)
  {
    b = paramhum.a();
    c = new HashMap();
  }
  
  int a()
  {
    return b;
  }
  
  int a(String paramString)
  {
    return aal.a((Integer)c.get(paramString), 0);
  }
  
  void a(htu paramhtu)
  {
    String str = paramhtu.h();
    paramhtu = (Integer)c.get(str);
    if (paramhtu == null) {}
    for (paramhtu = Integer.valueOf(1);; paramhtu = Integer.valueOf(paramhtu.intValue() + 1))
    {
      c.put(str, paramhtu);
      return;
    }
  }
  
  void b(String paramString)
  {
    Integer localInteger = (Integer)c.get(paramString);
    if (localInteger != null)
    {
      if (localInteger.intValue() == 1) {
        c.remove(paramString);
      }
    }
    else {
      return;
    }
    c.put(paramString, Integer.valueOf(localInteger.intValue() - 1));
  }
  
  String[] b()
  {
    if (c.isEmpty()) {
      return a;
    }
    String[] arrayOfString = new String[c.size()];
    return (String[])c.keySet().toArray(arrayOfString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(b);
    paramParcel.writeInt(c.size());
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramParcel.writeString((String)localEntry.getKey());
      paramParcel.writeInt(((Integer)localEntry.getValue()).intValue());
    }
  }
}

/* Location:
 * Qualified Name:     hub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */