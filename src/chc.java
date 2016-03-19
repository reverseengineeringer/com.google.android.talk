import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;

public final class chc
  extends LinearLayout
{
  private View a;
  private ImageView b;
  private TextView c;
  private TextView d;
  private boolean e;
  
  public chc(Context paramContext)
  {
    super(paramContext, null);
    setPadding(0, 0, 0, 0);
    setOrientation(0);
    LayoutInflater.from(paramContext).inflate(aal.fV, this, true);
    b = ((ImageView)findViewById(aen.da));
    a = findViewById(aen.dd);
    c = ((TextView)findViewById(aen.dc));
    d = ((TextView)findViewById(aen.db));
    e = false;
    a();
  }
  
  private void a()
  {
    int j = 8;
    boolean bool1 = TextUtils.isEmpty(c.getText());
    boolean bool2 = TextUtils.isEmpty(d.getText());
    Object localObject = c;
    if (bool1)
    {
      i = 8;
      ((TextView)localObject).setVisibility(i);
      localObject = d;
      if (!bool2) {
        break label139;
      }
      i = 8;
      label59:
      ((TextView)localObject).setVisibility(i);
      localObject = a;
      if ((!bool1) || (!bool2)) {
        break label144;
      }
      i = 8;
      label83:
      ((View)localObject).setVisibility(i);
      localObject = b;
      if (!e) {
        break label149;
      }
      i = 0;
      label104:
      ((ImageView)localObject).setVisibility(i);
      if ((!bool1) || (!bool2) || (e)) {
        break label155;
      }
    }
    label139:
    label144:
    label149:
    label155:
    for (int i = j;; i = 0)
    {
      setVisibility(i);
      return;
      i = 0;
      break;
      i = 0;
      break label59;
      i = 0;
      break label83;
      i = 8;
      break label104;
    }
  }
  
  public void a(Drawable paramDrawable)
  {
    if (paramDrawable != null) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      b.setImageDrawable(paramDrawable);
      a();
      return;
    }
  }
  
  public void a(String paramString)
  {
    TextView localTextView = c;
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = null;
    }
    localTextView.setText(str);
    a();
  }
  
  public void b(String paramString)
  {
    TextView localTextView = d;
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = null;
    }
    localTextView.setText(str);
    a();
  }
  
  public void setClickable(boolean paramBoolean)
  {
    super.setClickable(paramBoolean);
    int i;
    if (paramBoolean)
    {
      i = R.drawable.aB;
      setBackgroundResource(i);
      if (!paramBoolean) {
        break label63;
      }
      i = getResources().getDimensionPixelSize(aal.eg);
      label33:
      if (!paramBoolean) {
        break label68;
      }
    }
    label63:
    label68:
    for (int j = getResources().getDimensionPixelSize(aal.eh);; j = 0)
    {
      setPadding(i, j, i, j);
      return;
      i = 17170445;
      break;
      i = 0;
      break label33;
    }
  }
}

/* Location:
 * Qualified Name:     chc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */