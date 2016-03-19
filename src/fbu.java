import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint.FontMetrics;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextPaint;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;

public final class fbu
  extends fbt
{
  static final Rect c = new Rect();
  static final Rect d = new Rect();
  final exd a;
  final Paint.FontMetrics b = new Paint.FontMetrics();
  private final SparseIntArray e = new SparseIntArray();
  private final SparseArray<Pair<Integer, Integer>> f;
  private Drawable g;
  
  protected fbu(Context paramContext)
  {
    Field[] arrayOfField = R.drawable.class.getFields();
    int m = arrayOfField.length;
    int i = 0;
    for (;;)
    {
      if (i < m)
      {
        Field localField = arrayOfField[i];
        int j;
        if (localField.getName().startsWith("emoji_u")) {
          j = -1;
        }
        try
        {
          k = Integer.parseInt(localField.getName().substring(7), 16);
          j = k;
          if (j < 0) {}
        }
        catch (NumberFormatException localNumberFormatException)
        {
          try
          {
            int k = aal.a((Integer)localField.get(null), 0);
            e.put(j, k);
            i += 1;
          }
          catch (IllegalAccessException paramContext)
          {
            String str;
            throw new RuntimeException(paramContext);
          }
          localNumberFormatException = localNumberFormatException;
          str = String.valueOf(localField.getName());
          if (str.length() != 0) {}
          for (str = "Unable to parse resource: ".concat(str);; str = new String("Unable to parse resource: "))
          {
            ezi.d("Babel", str, new Object[0]);
            break;
          }
        }
      }
    }
    a = exw.a(paramContext.getApplicationContext());
    f = new SparseArray();
    f.put(127471, new Pair(Integer.valueOf(127477), Integer.valueOf(1041637)));
    f.put(127482, new Pair(Integer.valueOf(127480), Integer.valueOf(1041638)));
    f.put(127467, new Pair(Integer.valueOf(127479), Integer.valueOf(1041639)));
    f.put(127465, new Pair(Integer.valueOf(127466), Integer.valueOf(1041640)));
    f.put(127470, new Pair(Integer.valueOf(127481), Integer.valueOf(1041641)));
    f.put(127468, new Pair(Integer.valueOf(127463), Integer.valueOf(1041642)));
    f.put(127466, new Pair(Integer.valueOf(127480), Integer.valueOf(1041643)));
    f.put(127479, new Pair(Integer.valueOf(127482), Integer.valueOf(1041644)));
    f.put(127464, new Pair(Integer.valueOf(127475), Integer.valueOf(1041645)));
    f.put(127472, new Pair(Integer.valueOf(127479), Integer.valueOf(1041646)));
    f.put(49, new Pair(Integer.valueOf(8419), Integer.valueOf(1042478)));
    f.put(50, new Pair(Integer.valueOf(8419), Integer.valueOf(1042479)));
    f.put(51, new Pair(Integer.valueOf(8419), Integer.valueOf(1042480)));
    f.put(52, new Pair(Integer.valueOf(8419), Integer.valueOf(1042481)));
    f.put(53, new Pair(Integer.valueOf(8419), Integer.valueOf(1042482)));
    f.put(54, new Pair(Integer.valueOf(8419), Integer.valueOf(1042483)));
    f.put(55, new Pair(Integer.valueOf(8419), Integer.valueOf(1042484)));
    f.put(56, new Pair(Integer.valueOf(8419), Integer.valueOf(1042485)));
    f.put(57, new Pair(Integer.valueOf(8419), Integer.valueOf(1042486)));
    f.put(48, new Pair(Integer.valueOf(8419), Integer.valueOf(1042487)));
    f.put(35, new Pair(Integer.valueOf(8419), Integer.valueOf(1042476)));
  }
  
  private SpannableString a(CharSequence paramCharSequence, Spannable paramSpannable, float paramFloat, View paramView)
  {
    Object localObject3 = null;
    int i3 = paramCharSequence.length();
    int i4 = (int)paramFloat;
    int j = 0;
    fbx[] arrayOffbx;
    if (paramSpannable != null)
    {
      arrayOffbx = (fbx[])paramSpannable.getSpans(0, paramSpannable.length(), fbx.class);
      Arrays.sort(arrayOffbx, new fby(paramSpannable));
    }
    for (int m = arrayOffbx.length;; m = 0)
    {
      int n = 0;
      int i = 0;
      Object localObject2 = paramSpannable;
      Object localObject1 = null;
      int k;
      int i1;
      Object localObject4;
      int i2;
      if (n < i3)
      {
        k = Character.codePointAt(paramCharSequence, n);
        i1 = Character.charCount(k);
        localObject4 = (Pair)f.get(k);
        if ((localObject4 == null) || (n + i1 >= paramCharSequence.length())) {
          break label575;
        }
        i2 = Character.codePointAt(paramCharSequence, n + i1);
        if (i2 != aal.a((Integer)first, 0)) {
          break label575;
        }
        k = aal.a((Integer)second, 0);
        i1 = Character.charCount(i2) + i1;
      }
      label211:
      label276:
      label282:
      label323:
      label536:
      label539:
      label575:
      for (;;)
      {
        int i5 = a(k);
        if (i5 >= 0) {
          if (localObject2 == null)
          {
            localObject2 = new SpannableString(paramCharSequence);
            localObject3 = localObject2;
            k = 1;
            i2 = 1;
            if ((j < m) && (paramSpannable.getSpanStart(arrayOffbx[j]) == n)) {
              if (!arrayOffbx[j].getSource().equals(Integer.toString(i5, 16)))
              {
                paramSpannable.removeSpan(arrayOffbx[j]);
                k = i2;
                j += 1;
                if (i > aal.a(aal.oJ, "babel_emoji_max_per_message", 256)) {
                  k = 0;
                }
                if (k == 0) {
                  break label539;
                }
                if (localObject1 != null) {
                  break label536;
                }
                localObject1 = new fbw(paramView);
                if ((g == null) || (g.getMinimumHeight() != i4))
                {
                  g = new ColorDrawable(0);
                  k = aal.oJ.getResources().getDimensionPixelOffset(aal.dZ);
                  g.setBounds(0, 0, k * 2 + i4, i4);
                }
                localObject4 = new fbx(this, g, Integer.toString(i5, 16), i4, i4);
                ((Spannable)localObject3).setSpan(localObject4, n, n + i1, 33);
                ((fbw)localObject1).a(i5, (fbx)localObject4);
                i += 1;
                localObject4 = localObject3;
                localObject3 = localObject2;
                localObject2 = localObject4;
              }
            }
          }
        }
        for (;;)
        {
          localObject4 = localObject1;
          if (localObject1 != null) {
            if (b.size() < 20)
            {
              localObject4 = localObject1;
              if (n + i1 < i3) {}
            }
            else
            {
              new fbv(this, (fbw)localObject1).execute(new Void[0]);
              localObject4 = null;
            }
          }
          n += i1;
          localObject1 = localObject4;
          break;
          k = 0;
          break label276;
          return (SpannableString)localObject3;
          break label323;
          localObject4 = localObject2;
          localObject2 = localObject3;
          localObject3 = localObject4;
          continue;
          break label282;
          localObject4 = localObject3;
          localObject3 = localObject2;
          localObject2 = localObject4;
          break label211;
        }
      }
      arrayOffbx = null;
    }
  }
  
  public int a(int paramInt)
  {
    return e.get(paramInt, -1);
  }
  
  public SpannableString a(CharSequence paramCharSequence, TextView paramTextView)
  {
    if ((paramCharSequence == null) || (paramTextView == null)) {
      return null;
    }
    Paint.FontMetrics localFontMetrics = paramTextView.getPaint().getFontMetrics();
    return a(paramCharSequence, null, descent - ascent, paramTextView);
  }
  
  public void a(Spannable paramSpannable, TextView paramTextView)
  {
    if ((paramSpannable == null) || (paramTextView == null)) {
      return;
    }
    Paint.FontMetrics localFontMetrics = paramTextView.getPaint().getFontMetrics();
    a(paramSpannable, paramSpannable, descent - ascent, paramTextView);
  }
  
  public void a(Spanned paramSpanned)
  {
    int i = 0;
    if (paramSpanned != null)
    {
      paramSpanned = (fbx[])paramSpanned.getSpans(0, paramSpanned.length(), fbx.class);
      int j = paramSpanned.length;
      while (i < j)
      {
        paramSpanned[i].a();
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     fbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */