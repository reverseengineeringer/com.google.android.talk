import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.views.AvatarView;

public final class fcp
  extends FrameLayout
  implements View.OnClickListener
{
  fcq a;
  private TextView b;
  private AvatarView c;
  private Button d;
  private String e;
  private czb f;
  
  public fcp(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private fcp(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
    paramContext = LayoutInflater.from(paramContext).inflate(aal.gb, this);
    d = ((Button)paramContext.findViewById(aen.hc));
    d.setOnClickListener(this);
    b = ((TextView)paramContext.findViewById(aen.eq));
    c = ((AvatarView)paramContext.findViewById(aen.az));
  }
  
  public czb a()
  {
    return f;
  }
  
  public void a(czb paramczb)
  {
    f = paramczb;
  }
  
  public void a(fcq paramfcq)
  {
    a = paramfcq;
  }
  
  public void a(String paramString)
  {
    e = paramString;
    b.setText(paramString);
  }
  
  public void a(String paramString1, String paramString2, bfd parambfd)
  {
    c.a(paramString1, paramString2, parambfd);
  }
  
  public String b()
  {
    return e;
  }
  
  public void onClick(View paramView)
  {
    if ((a != null) && (paramView == d)) {
      a.a(this);
    }
  }
}

/* Location:
 * Qualified Name:     fcp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */