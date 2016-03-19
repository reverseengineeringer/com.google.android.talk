import android.content.Context;
import android.content.Intent;
import com.google.android.libraries.hangouts.video.internal.CallService;

final class hja
  extends hku
{
  hja(hiy paramhiy) {}
  
  public void a(int paramInt)
  {
    a.b = null;
    a.a();
  }
  
  public void a(hkw paramhkw)
  {
    paramhkw = new Intent(a.a, CallService.class);
    a.a.bindService(paramhkw, a.d, 1);
  }
}

/* Location:
 * Qualified Name:     hja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */