import android.content.Context;
import android.content.res.Resources;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.BroadcastOverlayView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cfb
  extends hku
{
  public cfb(BroadcastOverlayView paramBroadcastOverlayView)
  {
    super((byte)0);
  }
  
  public void a()
  {
    super.a();
    BroadcastOverlayView localBroadcastOverlayView = a;
    Object localObject = a.r();
    if (((cgw)localObject).a(((cgw)localObject).n(), ((cgw)localObject).o()))
    {
      boolean bool = ((cgw)localObject).p();
      localObject = b;
      if (bool)
      {
        i = StressMode.ew;
        ((TextView)localObject).setText(i);
        localObject = b;
        if (!bool) {
          break label138;
        }
        i = localBroadcastOverlayView.getContext().getResources().getColor(aal.dB);
        label86:
        ((TextView)localObject).setTextColor(i);
        localObject = b;
        if (!bool) {
          break label155;
        }
      }
      label138:
      label155:
      for (int i = localBroadcastOverlayView.getContext().getResources().getColor(aal.dA);; i = localBroadcastOverlayView.getContext().getResources().getColor(aal.cZ))
      {
        ((TextView)localObject).setBackgroundColor(i);
        b.setVisibility(0);
        return;
        i = StressMode.eo;
        break;
        i = localBroadcastOverlayView.getContext().getResources().getColor(aal.da);
        break label86;
      }
    }
    b.setVisibility(8);
  }
  
  public void a(hkw paramhkw)
  {
    paramhkw = a;
    Object localObject = a.r();
    if (((cgw)localObject).a(((cgw)localObject).n(), ((cgw)localObject).o()))
    {
      boolean bool = ((cgw)localObject).p();
      localObject = b;
      if (bool)
      {
        i = StressMode.ew;
        ((TextView)localObject).setText(i);
        localObject = b;
        if (!bool) {
          break label134;
        }
        i = paramhkw.getContext().getResources().getColor(aal.dB);
        label82:
        ((TextView)localObject).setTextColor(i);
        localObject = b;
        if (!bool) {
          break label151;
        }
      }
      label134:
      label151:
      for (int i = paramhkw.getContext().getResources().getColor(aal.dA);; i = paramhkw.getContext().getResources().getColor(aal.cZ))
      {
        ((TextView)localObject).setBackgroundColor(i);
        b.setVisibility(0);
        return;
        i = StressMode.eo;
        break;
        i = paramhkw.getContext().getResources().getColor(aal.da);
        break label82;
      }
    }
    b.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     cfb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */