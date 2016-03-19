import android.database.AbstractCursor;
import java.util.List;

public final class bed
  extends AbstractCursor
  implements bec
{
  private static final String[] a = new String[0];
  private final List<bdy> b;
  
  public bed(List<bdy> paramList)
  {
    b = paramList;
  }
  
  public bdy a()
  {
    return (bdy)b.get(getPosition());
  }
  
  public void a(List<Object> paramList) {}
  
  public int b()
  {
    return 0;
  }
  
  public String[] getColumnNames()
  {
    return a;
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public double getDouble(int paramInt)
  {
    return 0.0D;
  }
  
  public float getFloat(int paramInt)
  {
    return 0.0F;
  }
  
  public int getInt(int paramInt)
  {
    return 0;
  }
  
  public long getLong(int paramInt)
  {
    return 0L;
  }
  
  public short getShort(int paramInt)
  {
    return 0;
  }
  
  public String getString(int paramInt)
  {
    return null;
  }
  
  public boolean isClosed()
  {
    return false;
  }
  
  public boolean isNull(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     bed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */