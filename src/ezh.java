import android.view.Choreographer.FrameCallback;
import java.util.concurrent.TimeUnit;

final class ezh
  implements Choreographer.FrameCallback
{
  ezh(ezg paramezg) {}
  
  public void doFrame(long paramLong)
  {
    paramLong = TimeUnit.NANOSECONDS.toSeconds(paramLong);
    if (paramLong != a.b)
    {
      if (a.b != 0L)
      {
        localObject = a.a;
        int i = a.c;
        new StringBuilder(String.valueOf(localObject).length() + 16).append((String)localObject).append(" FPS ").append(i);
      }
      a.c = 0;
      a.b = paramLong;
    }
    Object localObject = a;
    c += 1;
    a.c();
  }
}

/* Location:
 * Qualified Name:     ezh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */