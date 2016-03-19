import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class fel
  extends ImageView
  implements cuk
{
  String a;
  
  public fel(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private fel(Context paramContext, byte paramByte)
  {
    this(paramContext, null);
  }
  
  private fel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, null, 0);
  }
  
  public void a(bfd parambfd, String paramString, av paramav)
  {
    a(paramString);
    setImageResource(R.drawable.bv);
    setPadding(0, 5, 0, 6);
    setLongClickable(true);
    setOnClickListener(new fem(this, parambfd, paramav));
    setContentDescription(getResources().getString(StressMode.sw));
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void b() {}
  
  public void b_() {}
  
  public void c_() {}
  
  public void d_() {}
}

/* Location:
 * Qualified Name:     fel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */