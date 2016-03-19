import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import java.util.concurrent.TimeUnit;

public final class csb
  extends FrameLayout
  implements crt
{
  cru a;
  String b;
  boolean c;
  private long d;
  private final Runnable e = new csc(this);
  
  public csb(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private csb(Context paramContext, byte paramByte)
  {
    this(paramContext, null);
  }
  
  private csb(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, null, 0);
    inflate(getContext(), aal.gn, this);
    setContentDescription(getResources().getString(aal.nG));
    setOnClickListener(new csd(this));
  }
  
  private void c()
  {
    Handler localHandler = getHandler();
    if ((localHandler != null) && (!c))
    {
      c = true;
      int i = aal.a(aal.oJ, "babel_location_request_suggestion_duration", 45);
      localHandler.postDelayed(e, TimeUnit.SECONDS.toMillis(i));
    }
  }
  
  public long a()
  {
    return d;
  }
  
  public void a(long paramLong, String paramString)
  {
    d = paramLong;
    b = paramString;
    c();
  }
  
  public void a(cru paramcru)
  {
    a = paramcru;
  }
  
  public View b()
  {
    return this;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    c();
  }
}

/* Location:
 * Qualified Name:     csb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */