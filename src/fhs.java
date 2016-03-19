import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class fhs
  extends Handler
{
  private final Context a;
  
  fhs(Context paramContext) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      new StringBuilder("Don't know how to handle this message: ").append(what);
    }
    int i;
    do
    {
      return;
      i = fhr.a(a);
    } while (!fhr.b(i));
    fhr.b(i, a);
  }
}

/* Location:
 * Qualified Name:     fhs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */