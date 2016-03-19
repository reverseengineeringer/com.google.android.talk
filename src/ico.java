import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.libraries.social.avatars.ui.AvatarView;

public final class ico
  extends FrameLayout
{
  private int a;
  private hpz b;
  private View c;
  private View d;
  private TextView e;
  private TextView f;
  private AvatarView g;
  private boolean h;
  
  public ico(Context paramContext)
  {
    super(paramContext);
    ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(aal.uJ, this, true);
    c = findViewById(aal.uF);
    d = findViewById(aal.uI);
    e = ((TextView)findViewById(aal.uH));
    f = ((TextView)findViewById(aal.uG));
    g = ((AvatarView)findViewById(aal.uE));
    b = ((hpz)ilh.a(getContext(), hpz.class));
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
    if (b.c(a))
    {
      Object localObject = b.a(a);
      c.setVisibility(0);
      String str1;
      String str2;
      String str3;
      if (h)
      {
        d.setVisibility(0);
        str1 = ((hqb)localObject).b("display_name");
        str2 = ((hqb)localObject).b("account_name");
        str3 = ((hqb)localObject).b("gaia_id");
        localObject = ((hqb)localObject).b("profile_photo_url");
        if (!TextUtils.isEmpty(str1)) {
          break label148;
        }
        e.setText(str2);
        f.setVisibility(8);
      }
      for (;;)
      {
        g.a(str3, (String)localObject);
        return;
        d.setVisibility(4);
        break;
        label148:
        e.setText(str1);
        f.setText(str2);
        f.setVisibility(0);
      }
    }
    c.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     ico
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */