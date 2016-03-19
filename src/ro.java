import android.content.Context;
import android.view.Window;
import android.view.Window.Callback;

final class ro
  extends rm
{
  ro(Context paramContext, Window paramWindow, rg paramrg)
  {
    super(paramContext, paramWindow, paramrg);
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new rp(this, paramCallback);
  }
}

/* Location:
 * Qualified Name:     ro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */