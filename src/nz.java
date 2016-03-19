import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;

final class nz
  implements Runnable
{
  nz(nx paramnx) {}
  
  public void run()
  {
    if (!a.e) {
      return;
    }
    if (a.c)
    {
      a.c = false;
      a.a.a();
    }
    ny localny = a.a;
    if ((localny.c()) || (!a.g()))
    {
      a.e = false;
      return;
    }
    if (a.d)
    {
      a.d = false;
      nx localnx = a;
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      b.onTouchEvent(localMotionEvent);
      localMotionEvent.recycle();
    }
    localny.d();
    int i = localny.g();
    a.b(i);
    ks.a(a.b, this);
  }
}

/* Location:
 * Qualified Name:     nz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */