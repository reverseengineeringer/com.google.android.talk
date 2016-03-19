import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

public final class vw
{
  private final Context a;
  private final TypedArray b;
  private vv c;
  
  private vw(Context paramContext, TypedArray paramTypedArray)
  {
    a = paramContext;
    b = paramTypedArray;
  }
  
  public static vw a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return new vw(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt));
  }
  
  public static vw a(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt)
  {
    return new vw(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt, 0));
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    return b.getInt(paramInt1, paramInt2);
  }
  
  public Drawable a(int paramInt)
  {
    if (b.hasValue(paramInt))
    {
      int i = b.getResourceId(paramInt, 0);
      if (i != 0) {
        return b().a(i);
      }
    }
    return b.getDrawable(paramInt);
  }
  
  public void a()
  {
    b.recycle();
  }
  
  public boolean a(int paramInt, boolean paramBoolean)
  {
    return b.getBoolean(paramInt, paramBoolean);
  }
  
  public int b(int paramInt1, int paramInt2)
  {
    return b.getInteger(paramInt1, paramInt2);
  }
  
  public Drawable b(int paramInt)
  {
    if (b.hasValue(paramInt))
    {
      paramInt = b.getResourceId(paramInt, 0);
      if (paramInt != 0) {
        return b().a(paramInt, true);
      }
    }
    return null;
  }
  
  public vv b()
  {
    if (c == null) {
      c = vv.a(a);
    }
    return c;
  }
  
  public int c(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelOffset(paramInt1, paramInt2);
  }
  
  public CharSequence c(int paramInt)
  {
    return b.getText(paramInt);
  }
  
  public int d(int paramInt1, int paramInt2)
  {
    return b.getDimensionPixelSize(paramInt1, paramInt2);
  }
  
  public String d(int paramInt)
  {
    return b.getString(paramInt);
  }
  
  public float e(int paramInt)
  {
    return b.getFloat(paramInt, -1.0F);
  }
  
  public int e(int paramInt1, int paramInt2)
  {
    return b.getLayoutDimension(paramInt1, paramInt2);
  }
  
  public int f(int paramInt)
  {
    return b.getColor(paramInt, -1);
  }
  
  public int f(int paramInt1, int paramInt2)
  {
    return b.getResourceId(paramInt1, paramInt2);
  }
  
  public boolean g(int paramInt)
  {
    return b.hasValue(paramInt);
  }
}

/* Location:
 * Qualified Name:     vw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */