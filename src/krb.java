import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Map.Entry;

abstract class krb<K, V>
  implements Map.Entry<K, V>
{
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      bool1 = bool2;
      if (StressMode.a(getKey(), ((Map.Entry)paramObject).getKey()))
      {
        bool1 = bool2;
        if (StressMode.a(getValue(), ((Map.Entry)paramObject).getValue())) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public abstract K getKey();
  
  public abstract V getValue();
  
  public int hashCode()
  {
    int j = 0;
    Object localObject1 = getKey();
    Object localObject2 = getValue();
    int i;
    if (localObject1 == null)
    {
      i = 0;
      if (localObject2 != null) {
        break label36;
      }
    }
    for (;;)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label36:
      j = localObject2.hashCode();
    }
  }
  
  public V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  public String toString()
  {
    String str1 = String.valueOf(getKey());
    String str2 = String.valueOf(getValue());
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + "=" + str2;
  }
}

/* Location:
 * Qualified Name:     krb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */