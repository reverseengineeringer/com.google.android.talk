import android.graphics.Rect;
import android.view.Gravity;

final class jb
  implements iz
{
  public int a(int paramInt1, int paramInt2)
  {
    return Gravity.getAbsoluteGravity(paramInt1, paramInt2);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2, int paramInt4)
  {
    Gravity.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2, paramInt4);
  }
}

/* Location:
 * Qualified Name:     jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */