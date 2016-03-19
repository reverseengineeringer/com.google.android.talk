import com.google.api.client.util.GenericData;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class isa
  extends AbstractSet<Map.Entry<String, Object>>
{
  private final iru b;
  
  public isa(GenericData paramGenericData)
  {
    b = new irr(paramGenericData, classInfo.a).a();
  }
  
  public void clear()
  {
    a.unknownFields.clear();
    b.clear();
  }
  
  public Iterator<Map.Entry<String, Object>> iterator()
  {
    return new irz(a, b);
  }
  
  public int size()
  {
    return a.unknownFields.size() + b.size();
  }
}

/* Location:
 * Qualified Name:     isa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */