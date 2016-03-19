import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

public final class cqp
  implements fct
{
  static final int a = fl;
  static final eyz b = eyz.c;
  long c;
  private final Context d;
  private final TextView e;
  private final TextView f;
  private final View g;
  private final dlj h;
  private boolean i;
  
  public cqp(Context paramContext, int paramInt, View paramView)
  {
    d = paramContext;
    g = paramView;
    e = ((TextView)paramView.findViewById(aal.ns));
    f = ((TextView)paramView.findViewById(aal.nt));
    h = new cqq(this, paramContext, (iog)ilh.b(paramContext).a(ino.class), paramInt);
  }
  
  void a()
  {
    TextView localTextView;
    if (e != null)
    {
      localTextView = e;
      if ((h.e() == null) && (!i)) {
        break label37;
      }
    }
    label37:
    for (int j = 0;; j = 8)
    {
      localTextView.setVisibility(j);
      return;
    }
  }
  
  public void a(String paramString)
  {
    h.a(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    i = paramBoolean;
    a();
  }
  
  void b()
  {
    long l = System.currentTimeMillis();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(e.getText());
    Object localObject = aal.a(d, c, l, 262144);
    CharSequence localCharSequence;
    if (localObject != null)
    {
      f.setText((CharSequence)localObject);
      localCharSequence = aal.a(d, c, l, 0);
      TextView localTextView = f;
      if (TextUtils.isEmpty(localCharSequence))
      {
        localTextView.setContentDescription((CharSequence)localObject);
        localStringBuilder.append(" ");
        localStringBuilder.append(f.getContentDescription());
        f.setVisibility(0);
      }
    }
    for (;;)
    {
      g.setContentDescription(localStringBuilder);
      return;
      localObject = localCharSequence;
      break;
      f.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     cqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */