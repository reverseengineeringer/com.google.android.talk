import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class lww
  extends lwv<FieldDescriptorType, Object>
{
  lww(int paramInt)
  {
    super(paramInt, (byte)0);
  }
  
  public void a()
  {
    if (!b())
    {
      int i = 0;
      while (i < c())
      {
        localObject = b(i);
        if (((lvx)((Map.Entry)localObject).getKey()).d()) {
          ((Map.Entry)localObject).setValue(Collections.unmodifiableList((List)((Map.Entry)localObject).getValue()));
        }
        i += 1;
      }
      Object localObject = d().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        if (((lvx)localEntry.getKey()).d()) {
          localEntry.setValue(Collections.unmodifiableList((List)localEntry.getValue()));
        }
      }
    }
    super.a();
  }
}

/* Location:
 * Qualified Name:     lww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */