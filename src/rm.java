import android.content.Context;
import android.view.Window;
import android.view.Window.Callback;

class rm
  extends rl
{
  private boolean O = true;
  
  rm(Context paramContext, Window paramWindow, rg paramrg)
  {
    super(paramContext, paramWindow, paramrg);
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new rn(this, paramCallback);
  }
  
  public boolean m()
  {
    return O;
  }
}

/* Location:
 * Qualified Name:     rm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */