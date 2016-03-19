import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;

public class iiv
  extends iis
{
  int a;
  private CharSequence[] c;
  private CharSequence[] d;
  private String e;
  private String f;
  private boolean g;
  
  public iiv(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public iiv(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, null);
    paramAttributeSet = paramContext.obtainStyledAttributes(null, ikc.ao, 0, 0);
    c = paramAttributeSet.getTextArray(ikc.ap);
    d = paramAttributeSet.getTextArray(ikc.aq);
    paramAttributeSet.recycle();
    paramContext = paramContext.obtainStyledAttributes(null, ikc.ar, 0, 0);
    f = paramContext.getString(ikc.aD);
    paramContext.recycle();
  }
  
  private int I()
  {
    return b(e);
  }
  
  protected Object a(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }
  
  public void a(AlertDialog.Builder paramBuilder)
  {
    super.a(paramBuilder);
    if ((c == null) || (d == null)) {
      throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
    }
    a = I();
    paramBuilder.setSingleChoiceItems(c, a, new iiw(this));
    paramBuilder.setPositiveButton(null, null);
  }
  
  protected void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(iix.class)))
    {
      super.a(paramParcelable);
      return;
    }
    paramParcelable = (iix)paramParcelable;
    super.a(paramParcelable.getSuperState());
    a(a);
  }
  
  public void a(String paramString)
  {
    if (!TextUtils.equals(e, paramString)) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (!g))
      {
        e = paramString;
        g = true;
        f(paramString);
        if (i != 0) {
          A();
        }
      }
      return;
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if ((paramBoolean) && (a >= 0) && (d != null))
    {
      String str = d[a].toString();
      if (a(str)) {
        a(str);
      }
    }
  }
  
  protected void a(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean) {}
    for (paramObject = g(e);; paramObject = (String)paramObject)
    {
      a((String)paramObject);
      return;
    }
  }
  
  public int b(String paramString)
  {
    if ((paramString != null) && (d != null))
    {
      int i = d.length - 1;
      while (i >= 0)
      {
        if (d[i].equals(paramString)) {
          return i;
        }
        i -= 1;
      }
    }
    return -1;
  }
  
  public void b(int paramInt)
  {
    b(y().getResources().getTextArray(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    super.b(paramCharSequence);
    if ((paramCharSequence == null) && (f != null)) {
      f = null;
    }
    while ((paramCharSequence == null) || (paramCharSequence.equals(f))) {
      return;
    }
    f = paramCharSequence.toString();
  }
  
  public void b(CharSequence[] paramArrayOfCharSequence)
  {
    c = paramArrayOfCharSequence;
  }
  
  public void c(int paramInt)
  {
    c(y().getResources().getTextArray(paramInt));
  }
  
  public void c(CharSequence[] paramArrayOfCharSequence)
  {
    d = paramArrayOfCharSequence;
  }
  
  protected Parcelable e()
  {
    Object localObject = super.e();
    if (v()) {
      return (Parcelable)localObject;
    }
    localObject = new iix((Parcelable)localObject);
    a = h();
    return (Parcelable)localObject;
  }
  
  public CharSequence[] f()
  {
    return c;
  }
  
  public CharSequence g()
  {
    CharSequence localCharSequence = i();
    if ((f == null) || (localCharSequence == null)) {
      return super.g();
    }
    return String.format(f, new Object[] { localCharSequence });
  }
  
  public String h()
  {
    return e;
  }
  
  public CharSequence i()
  {
    int i = I();
    if ((i >= 0) && (c != null)) {
      return c[i];
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     iiv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */