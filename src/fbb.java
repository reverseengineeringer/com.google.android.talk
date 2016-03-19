import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.views.AvatarView;

public class fbb
  extends FrameLayout
  implements View.OnClickListener
{
  fbc a;
  private TextView b;
  private AvatarView c;
  private Button d;
  private String e;
  private czb f;
  
  public fbb(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private fbb(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
    paramContext = LayoutInflater.from(paramContext).inflate(aal.eZ, this);
    d = ((Button)paramContext.findViewById(aen.hb));
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
  
  public void a(fbc paramfbc)
  {
    a = paramfbc;
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
 * Qualified Name:     fbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */