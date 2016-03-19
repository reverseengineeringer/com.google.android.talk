import android.database.Cursor;
import android.database.CursorWrapper;

final class gof
  extends CursorWrapper
{
  private int a = 100;
  
  public gof(Cursor paramCursor)
  {
    super(paramCursor);
  }
  
  public int getCount()
  {
    return Math.min(super.getCount(), a);
  }
}

/* Location:
 * Qualified Name:     gof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */