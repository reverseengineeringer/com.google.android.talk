import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import org.xml.sax.Attributes;

final class mhe
{
  private Paint b = null;
  private Paint c = null;
  private float d;
  private float e;
  private String f;
  private boolean g;
  private int h = 0;
  
  public mhe(mhd parammhd, Attributes paramAttributes)
  {
    d = parammhd.a("x", paramAttributes, Float.valueOf(0.0F)).floatValue();
    e = parammhd.a("y", paramAttributes, Float.valueOf(0.0F)).floatValue();
    f = null;
    g = true;
    mhc localmhc = new mhc(paramAttributes);
    if (parammhd.a(localmhc, w))
    {
      c = new Paint(h);
      parammhd.a(paramAttributes, c);
    }
    if (parammhd.a(localmhc))
    {
      b = new Paint(d);
      parammhd.a(paramAttributes, b);
    }
    parammhd = mgw.b("alignment-baseline", paramAttributes);
    if ("middle".equals(parammhd)) {
      h = 1;
    }
    while (!"top".equals(parammhd)) {
      return;
    }
    h = 2;
  }
  
  public void a()
  {
    g = false;
  }
  
  public void a(Canvas paramCanvas)
  {
    if (c != null) {
      paramCanvas.drawText(f, d, e, c);
    }
    if (b != null) {
      paramCanvas.drawText(f, d, e, b);
    }
  }
  
  public void a(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    label49:
    Object localObject;
    float f2;
    if (g)
    {
      if (f != null) {
        break label109;
      }
      paramArrayOfChar = new String(paramArrayOfChar, paramInt1, paramInt2);
      f = paramArrayOfChar;
      if (h > 0)
      {
        if (b != null) {
          break label162;
        }
        paramArrayOfChar = c;
        localObject = new Rect();
        paramArrayOfChar.getTextBounds(f, 0, f.length(), (Rect)localObject);
        f2 = e;
        if (h != 1) {
          break label170;
        }
      }
    }
    label109:
    label162:
    label170:
    for (float f1 = -((Rect)localObject).centerY();; f1 = ((Rect)localObject).height())
    {
      e = (f1 + f2);
      return;
      localObject = String.valueOf(f);
      paramArrayOfChar = String.valueOf(new String(paramArrayOfChar, paramInt1, paramInt2));
      if (paramArrayOfChar.length() != 0)
      {
        paramArrayOfChar = ((String)localObject).concat(paramArrayOfChar);
        break;
      }
      paramArrayOfChar = new String((String)localObject);
      break;
      paramArrayOfChar = b;
      break label49;
    }
  }
}

/* Location:
 * Qualified Name:     mhe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */