import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;

final class cju
  extends View
{
  static final float[][] a;
  static final float[][] b;
  static final int[] c = { aen.de, aen.df, aen.dg };
  private ImageView[] d;
  private int e;
  
  static
  {
    float[] arrayOfFloat1 = { 1.0F, 1.0F, 1.0F };
    a = new float[][] { { 0.0F, 0.0F, 0.0F }, { 0.4F, 0.0F, 0.0F }, { 0.6F, 0.4F, 0.0F }, { 0.8F, 0.6F, 0.4F }, { 1.0F, 0.8F, 0.6F }, arrayOfFloat1 };
    arrayOfFloat1 = new float[] { 0.5F, 0.25F, 0.0F };
    float[] arrayOfFloat2 = { 0.75F, 0.5F, 0.25F };
    float[] arrayOfFloat3 = { 1.0F, 0.75F, 0.5F };
    float[] arrayOfFloat4 = { 1.0F, 1.0F, 1.0F };
    b = new float[][] { { 0.0F, 0.0F, 0.0F }, { 0.25F, 0.0F, 0.0F }, arrayOfFloat1, arrayOfFloat2, arrayOfFloat3, arrayOfFloat4 };
  }
  
  cju(Context paramContext, ViewGroup paramViewGroup)
  {
    super(paramContext);
    inflate(getContext(), aal.fW, paramViewGroup);
    d = new ImageView[c.length];
    int i = 0;
    while (i < c.length)
    {
      d[i] = ((ImageView)paramViewGroup.findViewById(c[i]));
      i += 1;
    }
    e = 0;
  }
  
  void a(int paramInt)
  {
    int i = 0;
    int j = ezc.e(paramInt);
    if (j != e)
    {
      hbs.a(j, 0, b.length - 1);
      paramInt = i;
      while (paramInt < d.length)
      {
        ImageView localImageView = d[paramInt];
        float f1 = a[j][paramInt];
        float f2 = b[j][paramInt];
        localImageView.animate().alpha(f1).scaleX(f2).scaleY(f2).setDuration(150L).start();
        paramInt += 1;
      }
      e = j;
    }
  }
}

/* Location:
 * Qualified Name:     cju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */