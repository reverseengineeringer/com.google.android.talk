import android.database.Cursor;
import android.database.CursorWrapper;

final class brj
  extends CursorWrapper
{
  final int a;
  
  public brj(Cursor paramCursor)
  {
    super(paramCursor);
    a = paramCursor.getCount();
  }
  
  public int getPosition()
  {
    return a - super.getPosition() - 1;
  }
  
  public boolean isAfterLast()
  {
    return super.isBeforeFirst();
  }
  
  public boolean isBeforeFirst()
  {
    return super.isAfterLast();
  }
  
  public boolean isFirst()
  {
    return super.isLast();
  }
  
  public boolean isLast()
  {
    return super.isFirst();
  }
  
  public boolean move(int paramInt)
  {
    return super.move(-paramInt);
  }
  
  public boolean moveToFirst()
  {
    return super.moveToLast();
  }
  
  public boolean moveToLast()
  {
    return super.moveToFirst();
  }
  
  public boolean moveToNext()
  {
    return super.moveToPrevious();
  }
  
  public boolean moveToPosition(int paramInt)
  {
    return super.moveToPosition(a - paramInt - 1);
  }
  
  public boolean moveToPrevious()
  {
    return super.moveToNext();
  }
}

/* Location:
 * Qualified Name:     brj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */