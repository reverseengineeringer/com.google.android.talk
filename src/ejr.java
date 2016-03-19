import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.apps.hangouts.views.AvatarView;

public final class ejr
  extends ijc
{
  private String a;
  private bfd c;
  
  public ejr(Context paramContext)
  {
    super(paramContext, null);
    e(aal.gC);
  }
  
  public void a(View paramView)
  {
    super.a(paramView);
    paramView = (AvatarView)paramView.findViewById(aen.az);
    if (a != null)
    {
      paramView.a(a, c.c(), c);
      return;
    }
    paramView.a(null, null, null);
  }
  
  public void a(String paramString, bfd parambfd)
  {
    if (!TextUtils.equals(paramString, a))
    {
      a = paramString;
      c = parambfd;
      A();
    }
  }
}

/* Location:
 * Qualified Name:     ejr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */