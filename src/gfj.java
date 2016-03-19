import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.maps.GoogleMapOptions;

public class gfj
  extends FrameLayout
{
  public final fxs b;
  
  public gfj(Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    super(paramContext);
    b = new fxs(this, paramContext, paramGoogleMapOptions);
    setClickable(true);
  }
  
  public void a(gfm paramgfm)
  {
    aal.w("getMapAsync() must be called on the main thread");
    b.a(paramgfm);
  }
}

/* Location:
 * Qualified Name:     gfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */