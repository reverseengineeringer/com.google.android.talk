import com.google.api.client.util.GenericData;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class irz
  implements Iterator<Map.Entry<String, Object>>
{
  private boolean b;
  private final Iterator<Map.Entry<String, Object>> c;
  private final Iterator<Map.Entry<String, Object>> d;
  
  irz(GenericData paramGenericData, iru paramiru)
  {
    c = paramiru.a();
    d = unknownFields.entrySet().iterator();
  }
  
  public boolean hasNext()
  {
    return (c.hasNext()) || (d.hasNext());
  }
  
  public void remove()
  {
    if (b) {
      d.remove();
    }
    c.remove();
  }
}

/* Location:
 * Qualified Name:     irz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */