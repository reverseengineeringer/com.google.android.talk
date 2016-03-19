import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.TextView;

class xp
{
  private static final int[] b = { 16842804, 16843119, 16843117, 16843120, 16843118 };
  private static final int[] c = { aen.af };
  final TextView a;
  private vu d;
  private vu e;
  private vu f;
  private vu g;
  
  xp(TextView paramTextView)
  {
    a = paramTextView;
  }
  
  protected static vu a(vv paramvv, int paramInt)
  {
    paramvv = paramvv.b(paramInt);
    if (paramvv != null)
    {
      vu localvu = new vu();
      d = true;
      a = paramvv;
    }
    return null;
  }
  
  static xp a(TextView paramTextView)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return new xq(paramTextView);
    }
    return new xp(paramTextView);
  }
  
  void a()
  {
    if ((d != null) || (e != null) || (f != null) || (g != null))
    {
      Drawable[] arrayOfDrawable = a.getCompoundDrawables();
      a(arrayOfDrawable[0], d);
      a(arrayOfDrawable[1], e);
      a(arrayOfDrawable[2], f);
      a(arrayOfDrawable[3], g);
    }
  }
  
  void a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramInt, c);
    if (paramContext.hasValue(0)) {
      a(paramContext.getBoolean(0, false));
    }
    paramContext.recycle();
  }
  
  final void a(Drawable paramDrawable, vu paramvu)
  {
    if ((paramDrawable != null) && (paramvu != null)) {
      vv.a(paramDrawable, paramvu, a.getDrawableState());
    }
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    Context localContext = a.getContext();
    Object localObject = vv.a(localContext);
    TypedArray localTypedArray = localContext.obtainStyledAttributes(paramAttributeSet, b, paramInt, 0);
    int i = localTypedArray.getResourceId(0, -1);
    if (localTypedArray.hasValue(1)) {
      d = a((vv)localObject, localTypedArray.getResourceId(1, 0));
    }
    if (localTypedArray.hasValue(2)) {
      e = a((vv)localObject, localTypedArray.getResourceId(2, 0));
    }
    if (localTypedArray.hasValue(3)) {
      f = a((vv)localObject, localTypedArray.getResourceId(3, 0));
    }
    if (localTypedArray.hasValue(4)) {
      g = a((vv)localObject, localTypedArray.getResourceId(4, 0));
    }
    localTypedArray.recycle();
    if (i != -1)
    {
      localObject = localContext.obtainStyledAttributes(i, sb.ch);
      if (((TypedArray)localObject).hasValue(sb.cm)) {
        a(((TypedArray)localObject).getBoolean(sb.cm, false));
      }
      ((TypedArray)localObject).recycle();
    }
    paramAttributeSet = localContext.obtainStyledAttributes(paramAttributeSet, c, paramInt, 0);
    if (paramAttributeSet.getBoolean(0, false)) {
      a(true);
    }
    paramAttributeSet.recycle();
  }
  
  void a(boolean paramBoolean)
  {
    TextView localTextView = a;
    if (paramBoolean) {}
    for (sr localsr = new sr(a.getContext());; localsr = null)
    {
      localTextView.setTransformationMethod(localsr);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     xp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */