import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class iis
  extends ijc
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, ijt
{
  private AlertDialog.Builder a;
  private CharSequence c;
  private CharSequence d;
  private Drawable e;
  private CharSequence f;
  private CharSequence g;
  private int h;
  private Dialog i;
  private int j;
  
  public iis(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aal.uL);
  }
  
  private iis(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ikc.ah, paramInt, 0);
    c = paramContext.getString(ikc.al);
    if (c == null) {
      c = o();
    }
    d = paramContext.getString(ikc.ak);
    e = paramContext.getDrawable(ikc.ai);
    f = paramContext.getString(ikc.an);
    g = paramContext.getString(ikc.am);
    h = paramContext.getResourceId(ikc.aj, h);
    paramContext.recycle();
  }
  
  protected void K_()
  {
    if ((i != null) && (i.isShowing())) {
      return;
    }
    a(null);
  }
  
  public CharSequence a()
  {
    return d;
  }
  
  public void a(int paramInt)
  {
    a(y().getString(paramInt));
  }
  
  public void a(AlertDialog.Builder paramBuilder) {}
  
  protected void a(Bundle paramBundle)
  {
    Object localObject = y();
    j = -2;
    a = new AlertDialog.Builder((Context)localObject).setTitle(c).setIcon(e).setPositiveButton(f, this).setNegativeButton(g, this);
    localObject = c();
    if (localObject != null)
    {
      b((View)localObject);
      a.setView((View)localObject);
    }
    for (;;)
    {
      a(a);
      C().a(this);
      localObject = a.create();
      i = ((Dialog)localObject);
      if (paramBundle != null) {
        ((Dialog)localObject).onRestoreInstanceState(paramBundle);
      }
      ((Dialog)localObject).setOnDismissListener(this);
      ((Dialog)localObject).show();
      return;
      a.setMessage(d);
    }
  }
  
  protected void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(iit.class))) {
      super.a(paramParcelable);
    }
    do
    {
      return;
      paramParcelable = (iit)paramParcelable;
      super.a(paramParcelable.getSuperState());
    } while (!a);
    a(b);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
  }
  
  protected void a(boolean paramBoolean) {}
  
  protected void b(View paramView)
  {
    paramView = paramView.findViewById(fkr.k);
    if (paramView != null)
    {
      CharSequence localCharSequence = a();
      int k = 8;
      if (!TextUtils.isEmpty(localCharSequence))
      {
        if ((paramView instanceof TextView)) {
          ((TextView)paramView).setText(localCharSequence);
        }
        k = 0;
      }
      if (paramView.getVisibility() != k) {
        paramView.setVisibility(k);
      }
    }
  }
  
  protected View c()
  {
    if (h == 0) {
      return null;
    }
    return LayoutInflater.from(a.getContext()).inflate(h, null);
  }
  
  public void d()
  {
    if ((i == null) || (!i.isShowing())) {
      return;
    }
    i.dismiss();
  }
  
  protected Parcelable e()
  {
    Object localObject = super.e();
    if ((i == null) || (!i.isShowing())) {
      return (Parcelable)localObject;
    }
    localObject = new iit((Parcelable)localObject);
    a = true;
    b = i.onSaveInstanceState();
    return (Parcelable)localObject;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    j = paramInt;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    C().b(this);
    i = null;
    if (j == -1) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     iis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */