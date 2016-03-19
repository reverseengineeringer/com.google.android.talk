import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.io.PrintWriter;

final class bc
  extends bf<ba>
{
  public bc(ba paramba)
  {
    super(paramba);
  }
  
  public View a(int paramInt)
  {
    return a.findViewById(paramInt);
  }
  
  public void a(av paramav)
  {
    a.a(paramav);
  }
  
  public void a(av paramav, Intent paramIntent, int paramInt)
  {
    a.a(paramav, paramIntent, paramInt);
  }
  
  public void a(av paramav, String[] paramArrayOfString, int paramInt)
  {
    ba localba = a;
    if (paramInt == -1)
    {
      aj.a(localba, paramArrayOfString, paramInt);
      return;
    }
    if ((paramInt & 0xFF00) != 0) {
      throw new IllegalArgumentException("Can only use lower 8 bits for requestCode");
    }
    i = true;
    aj.a(localba, paramArrayOfString, (p + 1 << 8) + (paramInt & 0xFF));
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a.dump(paramString, null, paramPrintWriter, paramArrayOfString);
  }
  
  public boolean a()
  {
    Window localWindow = a.getWindow();
    return (localWindow != null) && (localWindow.peekDecorView() != null);
  }
  
  public boolean a(String paramString)
  {
    ba localba = a;
    if (Build.VERSION.SDK_INT >= 23) {
      return localba.shouldShowRequestPermissionRationale(paramString);
    }
    return false;
  }
  
  public boolean b()
  {
    return !a.isFinishing();
  }
  
  public LayoutInflater c()
  {
    return a.getLayoutInflater().cloneInContext(a);
  }
  
  public void d()
  {
    a.y_();
  }
  
  public boolean e()
  {
    return a.getWindow() != null;
  }
  
  public int f()
  {
    Window localWindow = a.getWindow();
    if (localWindow == null) {
      return 0;
    }
    return getAttributeswindowAnimations;
  }
}

/* Location:
 * Qualified Name:     bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */