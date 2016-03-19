import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class hst<T extends Parcelable>
  implements Parcelable
{
  public static final Parcelable.Creator<hst<?>> CREATOR = new hsu();
  private final Class<?> a;
  private final Map<Integer, List<T>> b = new HashMap();
  
  public hst(Parcel paramParcel)
  {
    a = a(paramParcel.readString());
    ClassLoader localClassLoader = a.getClassLoader();
    int k = paramParcel.readInt();
    int i = 0;
    while (i < k)
    {
      int m = paramParcel.readInt();
      int n = paramParcel.readInt();
      ArrayList localArrayList = new ArrayList(n);
      int j = 0;
      while (j < n)
      {
        localArrayList.add(paramParcel.readParcelable(localClassLoader));
        j += 1;
      }
      b.put(Integer.valueOf(m), localArrayList);
      i += 1;
    }
  }
  
  public hst(Class<?> paramClass)
  {
    a = paramClass;
  }
  
  private static Class<?> a(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  public List<T> a(Integer paramInteger)
  {
    return (List)b.remove(paramInteger);
  }
  
  public void a(Integer paramInteger, T paramT)
  {
    List localList = (List)b.get(paramInteger);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      b.put(paramInteger, localObject);
    }
    ((List)localObject).add(paramT);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a.getName());
    paramParcel.writeInt(b.size());
    Iterator localIterator = b.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Integer)localIterator.next();
      paramParcel.writeInt(((Integer)localObject).intValue());
      localObject = (List)b.get(localObject);
      paramParcel.writeInt(((List)localObject).size());
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramParcel.writeParcelable((Parcelable)((Iterator)localObject).next(), paramInt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */