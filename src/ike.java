import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.Switch;

public class ike
  extends ikg
{
  private final ikf c = new ikf(this);
  private CharSequence d;
  private CharSequence e;
  
  private ike(Context paramContext)
  {
    this(paramContext, null, aal.uQ, (byte)0);
  }
  
  public ike(Context paramContext, byte paramByte)
  {
    this(paramContext);
  }
  
  private ike(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ikc.aM, paramInt, 0);
    e(paramContext.getString(ikc.aP));
    f(paramContext.getString(ikc.aO));
    a(paramContext.getString(ikc.aR));
    d(paramContext.getString(ikc.aQ));
    h(paramContext.getBoolean(ikc.aN, false));
    paramContext.recycle();
  }
  
  private ike(Context paramContext, AttributeSet paramAttributeSet, int paramInt, byte paramByte)
  {
    this(paramContext, null, paramInt);
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    Object localObject = paramView.findViewById(fkr.n);
    if ((localObject != null) && ((localObject instanceof Checkable)))
    {
      if ((localObject instanceof Switch)) {
        ((Switch)localObject).setOnCheckedChangeListener(null);
      }
      ((Checkable)localObject).setChecked(a);
      if ((localObject instanceof Switch))
      {
        localObject = (Switch)localObject;
        ((Switch)localObject).setTextOn(d);
        ((Switch)localObject).setTextOff(e);
        ((Switch)localObject).setOnCheckedChangeListener(c);
      }
    }
    c(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    A();
  }
  
  public void d(CharSequence paramCharSequence)
  {
    e = paramCharSequence;
    A();
  }
}

/* Location:
 * Qualified Name:     ike
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */