import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import java.util.List;
import javax.microedition.khronos.egl.EGL10;

final class hea
  extends Handler
{
  hea(hdz paramhdz) {}
  
  public void handleMessage(Message paramMessage)
  {
    int j = 0;
    int k = 1;
    if (a.b) {}
    label141:
    do
    {
      return;
      switch (what)
      {
      default: 
        return;
      case 1: 
        a.a.removeMessages(1, obj);
        if (!(obj instanceof hge))
        {
          i = k;
          if (a.c.b.a.eglGetCurrentContext() != EGL10.EGL_NO_CONTEXT) {}
        }
        else
        {
          if (!a.b())
          {
            aal.B("eglMakeCurrent failed");
            return;
          }
          i = k;
          if ((obj instanceof hge))
          {
            if (((hge)obj).l()) {
              break label221;
            }
            i = 1;
          }
        }
        paramMessage = (hgn)obj;
      }
    } while ((!paramMessage.b()) || (i == 0));
    k = a.c.a.size();
    int i = j;
    while (i < k)
    {
      hec localhec = (hec)a.c.a.get(i);
      if (b == paramMessage)
      {
        localhec.b();
        return;
        label221:
        i = 0;
        break label141;
      }
      i += 1;
    }
    hlk.a(4, "vclib", "GlThread notified to quit, shutting down.");
    a.b = true;
    a.a.removeMessages(1);
    Looper.myQueue().addIdleHandler(new heb(this));
  }
}

/* Location:
 * Qualified Name:     hea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */