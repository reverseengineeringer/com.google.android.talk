import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.widget.ProgressBar;

class xd
{
  private static final int[] b = { 16843067, 16843068 };
  final vv a;
  private final ProgressBar c;
  private Bitmap d;
  
  xd(ProgressBar paramProgressBar, vv paramvv)
  {
    c = paramProgressBar;
    a = paramvv;
  }
  
  private Drawable a(Drawable paramDrawable, boolean paramBoolean)
  {
    int j = 0;
    if ((paramDrawable instanceof gd))
    {
      localObject = ((gd)paramDrawable).a();
      if (localObject != null)
      {
        localObject = a((Drawable)localObject, paramBoolean);
        ((gd)paramDrawable).a((Drawable)localObject);
      }
    }
    do
    {
      return paramDrawable;
      if ((paramDrawable instanceof LayerDrawable))
      {
        paramDrawable = (LayerDrawable)paramDrawable;
        int k = paramDrawable.getNumberOfLayers();
        localObject = new Drawable[k];
        int i = 0;
        if (i < k)
        {
          int m = paramDrawable.getId(i);
          Drawable localDrawable = paramDrawable.getDrawable(i);
          if ((m == 16908301) || (m == 16908303)) {}
          for (paramBoolean = true;; paramBoolean = false)
          {
            localObject[i] = a(localDrawable, paramBoolean);
            i += 1;
            break;
          }
        }
        localObject = new LayerDrawable((Drawable[])localObject);
        i = j;
        while (i < k)
        {
          ((LayerDrawable)localObject).setId(i, paramDrawable.getId(i));
          i += 1;
        }
        return (Drawable)localObject;
      }
    } while (!(paramDrawable instanceof BitmapDrawable));
    Object localObject = ((BitmapDrawable)paramDrawable).getBitmap();
    if (d == null) {
      d = ((Bitmap)localObject);
    }
    paramDrawable = new ShapeDrawable(new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null));
    localObject = new BitmapShader((Bitmap)localObject, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
    paramDrawable.getPaint().setShader((Shader)localObject);
    if (paramBoolean) {
      return new ClipDrawable(paramDrawable, 3, 1);
    }
    return paramDrawable;
  }
  
  Bitmap a()
  {
    return d;
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    vw localvw = vw.a(c.getContext(), paramAttributeSet, b, paramInt);
    Object localObject = localvw.b(0);
    if (localObject != null)
    {
      ProgressBar localProgressBar = c;
      paramAttributeSet = (AttributeSet)localObject;
      if ((localObject instanceof AnimationDrawable))
      {
        localObject = (AnimationDrawable)localObject;
        int i = ((AnimationDrawable)localObject).getNumberOfFrames();
        paramAttributeSet = new AnimationDrawable();
        paramAttributeSet.setOneShot(((AnimationDrawable)localObject).isOneShot());
        paramInt = 0;
        while (paramInt < i)
        {
          Drawable localDrawable = a(((AnimationDrawable)localObject).getFrame(paramInt), true);
          localDrawable.setLevel(10000);
          paramAttributeSet.addFrame(localDrawable, ((AnimationDrawable)localObject).getDuration(paramInt));
          paramInt += 1;
        }
        paramAttributeSet.setLevel(10000);
      }
      localProgressBar.setIndeterminateDrawable(paramAttributeSet);
    }
    paramAttributeSet = localvw.b(1);
    if (paramAttributeSet != null) {
      c.setProgressDrawable(a(paramAttributeSet, false));
    }
    localvw.a();
  }
}

/* Location:
 * Qualified Name:     xd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */