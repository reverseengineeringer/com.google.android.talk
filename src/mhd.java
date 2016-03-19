import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.Typeface;
import android.util.Base64;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

final class mhd
  extends DefaultHandler
{
  private static final Matrix E = new Matrix();
  private boolean A = false;
  private int B = 0;
  private boolean C = false;
  private boolean D = false;
  HashMap<String, String> a = new HashMap();
  Picture b;
  Canvas c;
  Paint d;
  boolean e = false;
  Stack<Paint> f = new Stack();
  Stack<Boolean> g = new Stack();
  Paint h;
  boolean i = false;
  Stack<Paint> j = new Stack();
  Stack<Boolean> k = new Stack();
  float l = 1.0F;
  Stack<Float> m = new Stack();
  RectF n = new RectF();
  RectF o = null;
  RectF p = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
  Integer q = null;
  Integer r = null;
  boolean s = false;
  boolean t = false;
  float u = mgw.a;
  int v = 0;
  HashMap<String, Shader> w = new HashMap();
  HashMap<String, mgy> x = new HashMap();
  mgy y = null;
  mhe z = null;
  
  mhd(Picture paramPicture)
  {
    b = paramPicture;
    d = new Paint();
    d.setAntiAlias(true);
    d.setStyle(Paint.Style.STROKE);
    h = new Paint();
    h.setAntiAlias(true);
    h.setStyle(Paint.Style.FILL);
  }
  
  private static float a(String paramString, float paramFloat)
  {
    try
    {
      float f1 = Float.parseFloat(paramString);
      return f1;
    }
    catch (NumberFormatException paramString) {}
    return paramFloat;
  }
  
  private int a(int paramInt)
  {
    int i1 = 0xFFFFFF & paramInt;
    paramInt = i1;
    if (q != null)
    {
      paramInt = i1;
      if (q.intValue() == i1)
      {
        paramInt = i1;
        if (r != null)
        {
          String.format("Replacing color: 0x%x->0x%x", new Object[] { Integer.valueOf(i1), r });
          paramInt = r.intValue();
        }
      }
    }
    return paramInt;
  }
  
  private mgy a(boolean paramBoolean, Attributes paramAttributes)
  {
    mgy localmgy = new mgy();
    int i2 = paramAttributes.getLength();
    int i1 = 0;
    String str;
    label53:
    label146:
    label157:
    label190:
    Matrix localMatrix1;
    label204:
    mhb localmhb;
    if (i1 < i2) {
      if (paramAttributes.getLocalName(i1).equals("id"))
      {
        str = paramAttributes.getValue(i1);
        a = str;
        c = paramBoolean;
        if (!paramBoolean) {
          break label453;
        }
        d = a("x1", paramAttributes, Float.valueOf(0.0F)).floatValue();
        f = a("x2", paramAttributes, Float.valueOf(0.0F)).floatValue();
        e = a("y1", paramAttributes, Float.valueOf(0.0F)).floatValue();
        g = a("y2", paramAttributes, Float.valueOf(0.0F)).floatValue();
        i2 = paramAttributes.getLength();
        i1 = 0;
        if (i1 >= i2) {
          break label525;
        }
        if (!paramAttributes.getLocalName(i1).equals("gradientTransform")) {
          break label516;
        }
        str = paramAttributes.getValue(i1);
        if (str == null) {
          break label1021;
        }
        localMatrix1 = new Matrix();
        if (!str.startsWith("matrix(")) {
          break label531;
        }
        localmhb = mgw.a(str.substring(7));
        if (a.size() == 6)
        {
          Matrix localMatrix2 = new Matrix();
          localMatrix2.setValues(new float[] { ((Float)a.get(0)).floatValue(), ((Float)a.get(2)).floatValue(), ((Float)a.get(4)).floatValue(), ((Float)a.get(1)).floatValue(), ((Float)a.get(3)).floatValue(), ((Float)a.get(5)).floatValue(), 0.0F, 0.0F, 1.0F });
          localMatrix1.preConcat(localMatrix2);
        }
      }
    }
    label453:
    label516:
    label525:
    label531:
    label624:
    do
    {
      for (;;)
      {
        i1 = str.indexOf(")");
        if ((i1 <= 0) || (str.length() <= i1 + 1)) {
          break label1014;
        }
        str = str.substring(i1 + 1).replaceFirst("[\\s,]*", "");
        break label204;
        i1 += 1;
        break;
        str = null;
        break label53;
        h = a("cx", paramAttributes, Float.valueOf(0.0F)).floatValue();
        i = a("cy", paramAttributes, Float.valueOf(0.0F)).floatValue();
        j = a("r", paramAttributes, Float.valueOf(0.0F)).floatValue();
        break label146;
        i1 += 1;
        break label157;
        str = null;
        break label190;
        if (!str.startsWith("translate(")) {
          break label624;
        }
        localmhb = mgw.a(str.substring(10));
        if (a.size() > 0)
        {
          f2 = ((Float)a.get(0)).floatValue();
          f1 = 0.0F;
          if (a.size() > 1) {
            f1 = ((Float)a.get(1)).floatValue();
          }
          localMatrix1.preTranslate(f2, f1);
        }
      }
      if (!str.startsWith("scale(")) {
        break label715;
      }
      localmhb = mgw.a(str.substring(6));
    } while (a.size() <= 0);
    float f2 = ((Float)a.get(0)).floatValue();
    if (a.size() > 1) {}
    for (float f1 = ((Float)a.get(1)).floatValue();; f1 = f2)
    {
      localMatrix1.preScale(f2, f1);
      break;
      label715:
      if (str.startsWith("skewX("))
      {
        localmhb = mgw.a(str.substring(6));
        if (a.size() <= 0) {
          break;
        }
        localMatrix1.preSkew((float)Math.tan(((Float)a.get(0)).floatValue()), 0.0F);
        break;
      }
      if (str.startsWith("skewY("))
      {
        localmhb = mgw.a(str.substring(6));
        if (a.size() <= 0) {
          break;
        }
        localMatrix1.preSkew(0.0F, (float)Math.tan(((Float)a.get(0)).floatValue()));
        break;
      }
      if (str.startsWith("rotate("))
      {
        localmhb = mgw.a(str.substring(7));
        if (a.size() <= 0) {
          break;
        }
        float f3 = ((Float)a.get(0)).floatValue();
        f2 = 0.0F;
        f1 = 0.0F;
        if (a.size() > 2)
        {
          f2 = ((Float)a.get(1)).floatValue();
          f1 = ((Float)a.get(2)).floatValue();
        }
        localMatrix1.preTranslate(f2, f1);
        localMatrix1.preRotate(f3);
        localMatrix1.preTranslate(-f2, -f1);
        break;
      }
      new StringBuilder(String.valueOf(str).length() + 20).append("Invalid transform (").append(str).append(")");
      break;
      label1014:
      m = localMatrix1;
      label1021:
      str = mgw.b("href", paramAttributes);
      if (str != null)
      {
        paramAttributes = str;
        if (str.startsWith("#")) {
          paramAttributes = str.substring(1);
        }
        b = paramAttributes;
      }
      return localmgy;
    }
  }
  
  private void a()
  {
    c.restore();
    v -= 1;
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 < p.left) {
      p.left = paramFloat1;
    }
    if (paramFloat1 > p.right) {
      p.right = paramFloat1;
    }
    if (paramFloat2 < p.top) {
      p.top = paramFloat2;
    }
    if (paramFloat2 > p.bottom) {
      p.bottom = paramFloat2;
    }
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    a(paramFloat1, paramFloat2);
    a(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4);
  }
  
  private void a(Path paramPath)
  {
    paramPath.computeBounds(n, false);
    a(n.left, n.top);
    a(n.right, n.bottom);
  }
  
  private void a(mhc parammhc, Integer paramInteger, boolean paramBoolean, Paint paramPaint)
  {
    paramPaint.setColor(a(paramInteger.intValue()) | 0xFF000000);
    Float localFloat = parammhc.d("opacity");
    Object localObject = localFloat;
    int i1;
    if (localFloat == null)
    {
      if (paramBoolean)
      {
        localObject = "fill-opacity";
        localObject = parammhc.d((String)localObject);
      }
    }
    else
    {
      parammhc = (mhc)localObject;
      if (localObject == null) {
        parammhc = Float.valueOf(1.0F);
      }
      i1 = paramInteger.intValue();
      paramInteger = parammhc;
      if (q != null)
      {
        paramInteger = parammhc;
        if (q.intValue() == i1)
        {
          paramInteger = parammhc;
          if (r != null) {
            if (s) {
              break label140;
            }
          }
        }
      }
    }
    for (paramInteger = parammhc;; paramInteger = Float.valueOf(parammhc.floatValue() * (i1 >>> 24) / 255.0F))
    {
      paramPaint.setAlpha((int)(paramInteger.floatValue() * 255.0F * l));
      return;
      localObject = "stroke-opacity";
      break;
      label140:
      i1 = r.intValue();
    }
  }
  
  private void a(Attributes paramAttributes)
  {
    int i2 = paramAttributes.getLength();
    int i1 = 0;
    if (i1 < i2) {
      if (!paramAttributes.getLocalName(i1).equals("transform")) {}
    }
    for (paramAttributes = paramAttributes.getValue(i1);; paramAttributes = null)
    {
      if (paramAttributes != null) {
        break label93;
      }
      paramAttributes = E;
      v += 1;
      c.save();
      c.concat(paramAttributes);
      return;
      i1 += 1;
      break;
    }
    label93:
    Matrix localMatrix1 = new Matrix();
    mhb localmhb;
    if (paramAttributes.startsWith("matrix("))
    {
      localmhb = mgw.a(paramAttributes.substring(7));
      if (a.size() == 6)
      {
        Matrix localMatrix2 = new Matrix();
        localMatrix2.setValues(new float[] { ((Float)a.get(0)).floatValue(), ((Float)a.get(2)).floatValue(), ((Float)a.get(4)).floatValue(), ((Float)a.get(1)).floatValue(), ((Float)a.get(3)).floatValue(), ((Float)a.get(5)).floatValue(), 0.0F, 0.0F, 1.0F });
        localMatrix1.preConcat(localMatrix2);
      }
    }
    label284:
    do
    {
      i1 = paramAttributes.indexOf(")");
      if ((i1 <= 0) || (paramAttributes.length() <= i1 + 1)) {
        break label787;
      }
      paramAttributes = paramAttributes.substring(i1 + 1).replaceFirst("[\\s,]*", "");
      break;
      if (!paramAttributes.startsWith("translate(")) {
        break label417;
      }
      localmhb = mgw.a(paramAttributes.substring(10));
    } while (a.size() <= 0);
    float f2 = ((Float)a.get(0)).floatValue();
    if (a.size() > 1) {}
    for (float f1 = ((Float)a.get(1)).floatValue();; f1 = 0.0F)
    {
      localMatrix1.preTranslate(f2, f1);
      break label284;
      label417:
      if (paramAttributes.startsWith("scale("))
      {
        localmhb = mgw.a(paramAttributes.substring(6));
        if (a.size() <= 0) {
          break label284;
        }
        f2 = ((Float)a.get(0)).floatValue();
        if (a.size() <= 1) {
          break label800;
        }
      }
      label787:
      label793:
      label800:
      for (f1 = ((Float)a.get(1)).floatValue();; f1 = f2)
      {
        localMatrix1.preScale(f2, f1);
        break label284;
        if (paramAttributes.startsWith("skewX("))
        {
          localmhb = mgw.a(paramAttributes.substring(6));
          if (a.size() <= 0) {
            break label284;
          }
          localMatrix1.preSkew((float)Math.tan(((Float)a.get(0)).floatValue()), 0.0F);
          break label284;
        }
        if (paramAttributes.startsWith("skewY("))
        {
          localmhb = mgw.a(paramAttributes.substring(6));
          if (a.size() <= 0) {
            break label284;
          }
          localMatrix1.preSkew(0.0F, (float)Math.tan(((Float)a.get(0)).floatValue()));
          break label284;
        }
        float f3;
        if (paramAttributes.startsWith("rotate("))
        {
          localmhb = mgw.a(paramAttributes.substring(7));
          if (a.size() <= 0) {
            break label284;
          }
          f3 = ((Float)a.get(0)).floatValue();
          if (a.size() <= 2) {
            break label793;
          }
          f2 = ((Float)a.get(1)).floatValue();
          f1 = ((Float)a.get(2)).floatValue();
        }
        for (;;)
        {
          localMatrix1.preTranslate(f2, f1);
          localMatrix1.preRotate(f3);
          localMatrix1.preTranslate(-f2, -f1);
          break label284;
          new StringBuilder(String.valueOf(paramAttributes).length() + 20).append("Invalid transform (").append(paramAttributes).append(")");
          break label284;
          paramAttributes = localMatrix1;
          break;
          f1 = 0.0F;
          f2 = 0.0F;
        }
      }
    }
  }
  
  private static String b(Attributes paramAttributes)
  {
    String str1 = "";
    int i1 = 0;
    while (i1 < paramAttributes.getLength())
    {
      str1 = String.valueOf(str1);
      String str2 = String.valueOf(paramAttributes.getLocalName(i1));
      String str3 = String.valueOf(paramAttributes.getValue(i1));
      str1 = String.valueOf(str1).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + " " + str2 + "='" + str3 + "'";
      i1 += 1;
    }
    return str1;
  }
  
  private static Paint.Align c(Attributes paramAttributes)
  {
    int i2 = paramAttributes.getLength();
    int i1 = 0;
    if (i1 < i2) {
      if (!paramAttributes.getLocalName(i1).equals("text-anchor")) {}
    }
    for (paramAttributes = paramAttributes.getValue(i1);; paramAttributes = null)
    {
      if (paramAttributes != null) {
        break label56;
      }
      return null;
      i1 += 1;
      break;
    }
    label56:
    if ("middle".equals(paramAttributes)) {
      return Paint.Align.CENTER;
    }
    if ("end".equals(paramAttributes)) {
      return Paint.Align.RIGHT;
    }
    return Paint.Align.LEFT;
  }
  
  Float a(String paramString, Attributes paramAttributes, Float paramFloat)
  {
    Object localObject = null;
    float f1 = u;
    int i2 = paramAttributes.getLength();
    int i1 = 0;
    if (i1 < i2) {
      if (paramAttributes.getLocalName(i1).equals(paramString))
      {
        paramAttributes = paramAttributes.getValue(i1);
        label51:
        if (paramAttributes != null) {
          break label78;
        }
        paramString = (String)localObject;
      }
    }
    for (;;)
    {
      if (paramString != null) {
        return paramString;
      }
      return paramFloat;
      i1 += 1;
      break;
      paramAttributes = null;
      break label51;
      label78:
      if (paramAttributes.endsWith("px"))
      {
        paramString = Float.valueOf(Float.parseFloat(paramAttributes.substring(0, paramAttributes.length() - 2)));
      }
      else if (paramAttributes.endsWith("pt"))
      {
        paramString = Float.valueOf(Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 2)).floatValue() * f1 / 72.0F);
      }
      else if (paramAttributes.endsWith("pc"))
      {
        paramString = Float.valueOf(Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 2)).floatValue() * f1 / 6.0F);
      }
      else if (paramAttributes.endsWith("cm"))
      {
        paramString = Float.valueOf(Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 2)).floatValue() * f1 / 2.54F);
      }
      else if (paramAttributes.endsWith("mm"))
      {
        paramString = Float.valueOf(Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 2)).floatValue() * f1 / 254.0F);
      }
      else if (paramAttributes.endsWith("in"))
      {
        paramString = Float.valueOf(Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 2)).floatValue() * f1);
      }
      else if (paramAttributes.endsWith("em"))
      {
        paramString = Float.valueOf(h.getTextSize() * Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 2)).floatValue());
      }
      else if (paramAttributes.endsWith("ex"))
      {
        paramString = Float.valueOf(h.getTextSize() * Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 2)).floatValue() / 2.0F);
      }
      else
      {
        if (paramAttributes.endsWith("%"))
        {
          paramAttributes = Float.valueOf(paramAttributes.substring(0, paramAttributes.length() - 1));
          if ((paramString.indexOf("x") >= 0) || (paramString.equals("width"))) {
            f1 = c.getWidth() / 100.0F;
          }
          for (;;)
          {
            paramString = Float.valueOf(f1 * paramAttributes.floatValue());
            break;
            if ((paramString.indexOf("y") >= 0) || (paramString.equals("height"))) {
              f1 = c.getHeight() / 100.0F;
            } else {
              f1 = (c.getHeight() + c.getWidth()) / 2.0F;
            }
          }
        }
        paramString = Float.valueOf(paramAttributes);
      }
    }
    return paramString;
  }
  
  public void a(float paramFloat)
  {
    u = paramFloat;
  }
  
  public void a(Integer paramInteger1, Integer paramInteger2)
  {
    q = paramInteger1;
    r = paramInteger2;
  }
  
  public void a(boolean paramBoolean)
  {
    s = false;
  }
  
  boolean a(mhc parammhc)
  {
    f3 = 0.0F;
    if (t) {}
    label126:
    label252:
    label300:
    label478:
    label551:
    do
    {
      do
      {
        do
        {
          return false;
        } while ("none".equals(parammhc.b("display")));
        localObject1 = parammhc.d("stroke-width");
        if (localObject1 != null) {
          d.setStrokeWidth(((Float)localObject1).floatValue());
        }
      } while (d.getStrokeWidth() <= 0.0F);
      Object localObject1 = parammhc.b("stroke-linecap");
      if ("round".equals(localObject1))
      {
        d.setStrokeCap(Paint.Cap.ROUND);
        localObject1 = parammhc.b("stroke-linejoin");
        if (!"miter".equals(localObject1)) {
          break label252;
        }
        d.setStrokeJoin(Paint.Join.MITER);
        localObject2 = parammhc.b("stroke-dasharray");
        localObject1 = parammhc.b("stroke-dashoffset");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("none")) {
            break label300;
          }
          d.setPathEffect(null);
        }
      }
      for (;;)
      {
        localObject1 = parammhc.a("stroke");
        if (localObject1 == null) {
          break label551;
        }
        if (!((String)localObject1).equalsIgnoreCase("none")) {
          break label478;
        }
        d.setColor(0);
        return false;
        if ("square".equals(localObject1))
        {
          d.setStrokeCap(Paint.Cap.SQUARE);
          break;
        }
        if (!"butt".equals(localObject1)) {
          break;
        }
        d.setStrokeCap(Paint.Cap.BUTT);
        break;
        if ("round".equals(localObject1))
        {
          d.setStrokeJoin(Paint.Join.ROUND);
          break label126;
        }
        if (!"bevel".equals(localObject1)) {
          break label126;
        }
        d.setStrokeJoin(Paint.Join.BEVEL);
        break label126;
        StringTokenizer localStringTokenizer = new StringTokenizer((String)localObject2, " ,");
        int i2 = localStringTokenizer.countTokens();
        int i1 = i2;
        if ((i2 & 0x1) == 1) {
          i1 = i2 << 1;
        }
        localObject2 = new float[i1];
        f2 = 1.0F;
        float f1 = 0.0F;
        i1 = 0;
        while (localStringTokenizer.hasMoreTokens())
        {
          f2 = a(localStringTokenizer.nextToken(), f2);
          localObject2[i1] = f2;
          f1 += f2;
          i1 += 1;
        }
        int i3 = 0;
        i2 = i1;
        i1 = i3;
        while (i2 < localObject2.length)
        {
          f2 = localObject2[i1];
          localObject2[i2] = f2;
          f1 += f2;
          i2 += 1;
          i1 += 1;
        }
        f2 = f3;
        if (localObject1 != null) {}
        try
        {
          f2 = Float.parseFloat((String)localObject1);
          f2 %= f1;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            f2 = f3;
          }
        }
        d.setPathEffect(new DashPathEffect((float[])localObject2, f2));
      }
      Object localObject2 = parammhc.c("stroke");
      if (localObject2 != null)
      {
        a(parammhc, (Integer)localObject2, false, d);
        return true;
      }
      parammhc = String.valueOf(localObject1);
      if (parammhc.length() != 0) {
        "Unrecognized stroke color, using none: ".concat(parammhc);
      }
      for (;;)
      {
        d.setColor(0);
        return false;
        new String("Unrecognized stroke color, using none: ");
      }
      if (!e) {
        break;
      }
    } while (d.getColor() == 0);
    return true;
    d.setColor(0);
    return false;
  }
  
  boolean a(mhc parammhc, HashMap<String, Shader> paramHashMap)
  {
    if ("none".equals(parammhc.b("display"))) {}
    do
    {
      return false;
      if (t)
      {
        h.setShader(null);
        h.setColor(-1);
        return true;
      }
      String str = parammhc.b("fill");
      if (str != null)
      {
        if (str.startsWith("url(#"))
        {
          str = str.substring(5, str.length() - 1);
          paramHashMap = (Shader)paramHashMap.get(str);
          if (paramHashMap != null)
          {
            h.setShader(paramHashMap);
            return true;
          }
          paramHashMap = String.valueOf(str);
          if (paramHashMap.length() != 0) {
            "Didn't find shader, using black: ".concat(paramHashMap);
          }
          for (;;)
          {
            h.setShader(null);
            a(parammhc, Integer.valueOf(-16777216), true, h);
            return true;
            new String("Didn't find shader, using black: ");
          }
        }
        if (str.equalsIgnoreCase("none"))
        {
          h.setShader(null);
          h.setColor(0);
          return true;
        }
        h.setShader(null);
        paramHashMap = parammhc.c("fill");
        if (paramHashMap != null)
        {
          a(parammhc, paramHashMap, true, h);
          return true;
        }
        paramHashMap = String.valueOf(str);
        if (paramHashMap.length() != 0) {
          "Unrecognized fill color, using black: ".concat(paramHashMap);
        }
        for (;;)
        {
          a(parammhc, Integer.valueOf(-16777216), true, h);
          return true;
          new String("Unrecognized fill color, using black: ");
        }
      }
      if (!i) {
        break;
      }
    } while (h.getColor() == 0);
    return true;
    h.setShader(null);
    h.setColor(-16777216);
    return true;
  }
  
  boolean a(Attributes paramAttributes, Paint paramPaint)
  {
    Object localObject2 = null;
    if ("none".equals(paramAttributes.getValue("display"))) {
      return false;
    }
    if (paramAttributes.getValue("font-size") != null) {
      paramPaint.setTextSize(a("font-size", paramAttributes, Float.valueOf(10.0F)).floatValue());
    }
    int i2 = paramAttributes.getLength();
    int i1 = 0;
    Object localObject1;
    label97:
    label107:
    String str1;
    if (i1 < i2) {
      if (paramAttributes.getLocalName(i1).equals("font-family"))
      {
        localObject1 = paramAttributes.getValue(i1);
        i2 = paramAttributes.getLength();
        i1 = 0;
        if (i1 >= i2) {
          break label247;
        }
        if (!paramAttributes.getLocalName(i1).equals("font-style")) {
          break label240;
        }
        str1 = paramAttributes.getValue(i1);
        label138:
        i2 = paramAttributes.getLength();
        i1 = 0;
        label148:
        if (i1 >= i2) {
          break label260;
        }
        if (!paramAttributes.getLocalName(i1).equals("font-weight")) {
          break label253;
        }
      }
    }
    label240:
    label247:
    label253:
    label260:
    for (String str2 = paramAttributes.getValue(i1);; str2 = null)
    {
      if ((localObject1 != null) || (str1 != null) || (str2 != null)) {
        break label266;
      }
      localObject1 = localObject2;
      if (localObject1 != null) {
        paramPaint.setTypeface((Typeface)localObject1);
      }
      if (c(paramAttributes) != null) {
        paramPaint.setTextAlign(c(paramAttributes));
      }
      return true;
      i1 += 1;
      break;
      localObject1 = null;
      break label97;
      i1 += 1;
      break label107;
      str1 = null;
      break label138;
      i1 += 1;
      break label148;
    }
    label266:
    if ("italic".equals(str1)) {}
    for (i1 = 2;; i1 = 0)
    {
      i2 = i1;
      if ("bold".equals(str2)) {
        i2 = i1 | 0x1;
      }
      localObject1 = Typeface.create((String)localObject1, i2);
      break;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    t = false;
  }
  
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (z != null) {
      z.a(paramArrayOfChar, paramInt1, paramInt2);
    }
  }
  
  public void endDocument() {}
  
  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    int i3 = 0;
    int i2 = 0;
    if (D) {
      if (paramString2.equals("defs")) {
        D = false;
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          if (paramString2.equals("svg"))
          {
            b.endRecording();
            return;
          }
          if ((!A) && (paramString2.equals("text")))
          {
            if (z != null)
            {
              z.a(c);
              z.a();
            }
            a();
            return;
          }
          if (!paramString2.equals("linearGradient")) {
            break;
          }
        } while (y.a == null);
        if (y.b != null)
        {
          paramString1 = (mgy)x.get(y.b);
          if (paramString1 != null) {
            y = paramString1.a(y);
          }
        }
        paramString1 = new int[y.l.size()];
        i1 = 0;
        while (i1 < paramString1.length)
        {
          paramString1[i1] = ((Integer)y.l.get(i1)).intValue();
          i1 += 1;
        }
        paramString2 = new float[y.k.size()];
        i1 = i2;
        while (i1 < paramString2.length)
        {
          paramString2[i1] = ((Float)y.k.get(i1)).floatValue();
          i1 += 1;
        }
        paramString1 = new LinearGradient(y.d, y.e, y.f, y.g, paramString1, paramString2, Shader.TileMode.CLAMP);
        if (y.m != null) {
          paramString1.setLocalMatrix(y.m);
        }
        w.put(y.a, paramString1);
        x.put(y.a, y);
        return;
        if (!paramString2.equals("radialGradient")) {
          break;
        }
      } while (y.a == null);
      if (y.b != null)
      {
        paramString1 = (mgy)x.get(y.b);
        if (paramString1 != null) {
          y = paramString1.a(y);
        }
      }
      paramString1 = new int[y.l.size()];
      int i1 = 0;
      while (i1 < paramString1.length)
      {
        paramString1[i1] = ((Integer)y.l.get(i1)).intValue();
        i1 += 1;
      }
      paramString2 = new float[y.k.size()];
      i1 = i3;
      while (i1 < paramString2.length)
      {
        paramString2[i1] = ((Float)y.k.get(i1)).floatValue();
        i1 += 1;
      }
      paramString1 = new RadialGradient(y.h, y.i, y.j, paramString1, paramString2, Shader.TileMode.CLAMP);
      if (y.m != null) {
        paramString1.setLocalMatrix(y.m);
      }
      w.put(y.a, paramString1);
      x.put(y.a, y);
      return;
    } while (!paramString2.equals("g"));
    if (C) {
      C = false;
    }
    if (A)
    {
      B -= 1;
      if (B == 0) {
        A = false;
      }
    }
    w.clear();
    a();
    h = ((Paint)j.pop());
    i = ((Boolean)k.pop()).booleanValue();
    d = ((Paint)f.pop());
    e = ((Boolean)g.pop()).booleanValue();
    l = ((Float)m.pop()).floatValue();
  }
  
  public void startDocument() {}
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    if (!e) {
      d.setAlpha(255);
    }
    if (!i) {
      h.setAlpha(255);
    }
    if (C) {
      if (paramString2.equals("rect"))
      {
        paramString2 = a("x", paramAttributes, null);
        paramString1 = paramString2;
        if (paramString2 == null) {
          paramString1 = Float.valueOf(0.0F);
        }
        paramString3 = a("y", paramAttributes, null);
        paramString2 = paramString3;
        if (paramString3 == null) {
          paramString2 = Float.valueOf(0.0F);
        }
        paramString3 = a("width", paramAttributes, null);
        paramAttributes = a("height", paramAttributes, null);
        o = new RectF(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + paramAttributes.floatValue());
      }
    }
    label156:
    label460:
    label971:
    label978:
    label1385:
    label1732:
    do
    {
      do
      {
        do
        {
          Object localObject1;
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    break label156;
                    break label156;
                    break label156;
                    break label156;
                    break label156;
                    break label156;
                    do
                    {
                      return;
                    } while (D);
                    if (paramString2.equals("svg"))
                    {
                      i1 = (int)Math.ceil(a("width", paramAttributes, null).floatValue());
                      int i2 = (int)Math.ceil(a("height", paramAttributes, null).floatValue());
                      c = b.beginRecording(i1, i2);
                      return;
                    }
                    if (paramString2.equals("defs"))
                    {
                      D = true;
                      return;
                    }
                    if (paramString2.equals("linearGradient"))
                    {
                      y = a(true, paramAttributes);
                      return;
                    }
                    if (paramString2.equals("radialGradient"))
                    {
                      y = a(false, paramAttributes);
                      return;
                    }
                    if (!paramString2.equals("stop")) {
                      break;
                    }
                  } while (y == null);
                  f1 = a("offset", paramAttributes, null).floatValue();
                  paramString1 = new mhf(mgw.b("style", paramAttributes));
                  paramString2 = paramString1.a("stop-color");
                  i1 = -16777216;
                  if (paramString2 != null)
                  {
                    if (paramString2.startsWith("#")) {
                      i1 = Integer.parseInt(paramString2.substring(1), 16);
                    }
                  }
                  else
                  {
                    i1 = a(i1);
                    paramString1 = paramString1.a("stop-opacity");
                    if (paramString1 == null) {
                      break label460;
                    }
                    i1 |= Math.round(Float.parseFloat(paramString1) * 255.0F) << 24;
                  }
                  for (;;)
                  {
                    y.k.add(Float.valueOf(f1));
                    y.l.add(Integer.valueOf(i1));
                    return;
                    i1 = Integer.parseInt(paramString2, 16);
                    break;
                    i1 |= 0xFF000000;
                  }
                  if (paramString2.equals("use"))
                  {
                    paramString2 = paramAttributes.getValue("xlink:href");
                    paramString1 = paramAttributes.getValue("transform");
                    localObject2 = paramAttributes.getValue("x");
                    localObject1 = paramAttributes.getValue("y");
                    paramString3 = new StringBuilder();
                    paramString3.append("<g");
                    paramString3.append(" xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' version='1.1'");
                    if ((paramString1 != null) || (localObject2 != null) || (localObject1 != null))
                    {
                      paramString3.append(" transform='");
                      if (paramString1 != null) {
                        paramString3.append(paramString1.replaceAll("\"", "&quot;").replaceAll("'", "&apos").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("&", "&amp;"));
                      }
                      if ((localObject2 != null) || (localObject1 != null))
                      {
                        paramString3.append("translate(");
                        if (localObject2 == null) {
                          break label971;
                        }
                        paramString1 = ((String)localObject2).replaceAll("\"", "&quot;").replaceAll("'", "&apos").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("&", "&amp;");
                        paramString3.append(paramString1);
                        paramString3.append(",");
                        if (localObject1 == null) {
                          break label978;
                        }
                      }
                    }
                    for (paramString1 = ((String)localObject1).replaceAll("\"", "&quot;").replaceAll("'", "&apos").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("&", "&amp;");; paramString1 = "0")
                    {
                      paramString3.append(paramString1);
                      paramString3.append(")");
                      paramString3.append("'");
                      i1 = 0;
                      while (i1 < paramAttributes.getLength())
                      {
                        paramString1 = paramAttributes.getQName(i1);
                        if ((!"x".equals(paramString1)) && (!"y".equals(paramString1)) && (!"width".equals(paramString1)) && (!"height".equals(paramString1)) && (!"xlink:href".equals(paramString1)) && (!"transform".equals(paramString1)))
                        {
                          paramString3.append(" ");
                          paramString3.append(paramString1);
                          paramString3.append("='");
                          paramString3.append(paramAttributes.getValue(i1).replaceAll("\"", "&quot;").replaceAll("'", "&apos").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("&", "&amp;"));
                          paramString3.append("'");
                        }
                        i1 += 1;
                      }
                      paramString1 = "0";
                      break;
                    }
                    paramString3.append(">");
                    paramString3.append((String)a.get(paramString2.substring(1)));
                    paramString3.append("</g>");
                    paramString1 = new InputSource(new StringReader(paramString3.toString()));
                    try
                    {
                      paramString2 = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
                      paramString2.setContentHandler(this);
                      paramString2.parse(paramString1);
                      return;
                    }
                    catch (Exception paramString1)
                    {
                      paramString1.printStackTrace();
                      return;
                    }
                  }
                  if (paramString2.equals("g"))
                  {
                    if ("bounds".equalsIgnoreCase(mgw.b("id", paramAttributes))) {
                      C = true;
                    }
                    if (A) {
                      B += 1;
                    }
                    if (("none".equals(mgw.b("display", paramAttributes))) && (!A))
                    {
                      A = true;
                      B = 1;
                    }
                    a(paramAttributes);
                    paramString1 = new mhc(paramAttributes);
                    j.push(new Paint(h));
                    f.push(new Paint(d));
                    k.push(Boolean.valueOf(i));
                    g.push(Boolean.valueOf(e));
                    m.push(Float.valueOf(l));
                    paramString2 = a("opacity", paramAttributes, null);
                    if (paramString2 != null)
                    {
                      f1 = l;
                      l = (paramString2.floatValue() * f1);
                    }
                    a(paramAttributes, h);
                    a(paramAttributes, d);
                    a(paramString1, w);
                    a(paramString1);
                    int i3 = i;
                    int i4;
                    if (paramString1.b("fill") != null)
                    {
                      i1 = 1;
                      i = (i1 | i3);
                      i4 = e;
                      if (paramString1.b("stroke") == null) {
                        break label1385;
                      }
                    }
                    for (i1 = 1;; i1 = 0)
                    {
                      e = (i1 | i4);
                      return;
                      i1 = 0;
                      break;
                    }
                  }
                  if ((!A) && (paramString2.equals("rect")))
                  {
                    paramString1 = a("x", paramAttributes, Float.valueOf(0.0F));
                    paramString2 = a("y", paramAttributes, Float.valueOf(0.0F));
                    paramString3 = a("width", paramAttributes, null);
                    localObject1 = a("height", paramAttributes, null);
                    localObject2 = a("rx", paramAttributes, Float.valueOf(0.0F));
                    localFloat = a("ry", paramAttributes, Float.valueOf(0.0F));
                    a(paramAttributes);
                    paramAttributes = new mhc(paramAttributes);
                    if (a(paramAttributes, w))
                    {
                      a(paramString1.floatValue(), paramString2.floatValue(), paramString3.floatValue(), ((Float)localObject1).floatValue());
                      if ((((Float)localObject2).floatValue() <= 0.0F) && (localFloat.floatValue() <= 0.0F)) {
                        c.drawRect(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue(), h);
                      }
                    }
                    else if (a(paramAttributes))
                    {
                      if ((((Float)localObject2).floatValue() > 0.0F) || (localFloat.floatValue() > 0.0F)) {
                        break label1732;
                      }
                      c.drawRect(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue(), d);
                    }
                    for (;;)
                    {
                      a();
                      return;
                      n.set(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue());
                      c.drawRoundRect(n, ((Float)localObject2).floatValue(), localFloat.floatValue(), h);
                      break;
                      n.set(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue());
                      c.drawRoundRect(n, ((Float)localObject2).floatValue(), localFloat.floatValue(), d);
                    }
                  }
                  if ((A) || (!paramString2.equals("image"))) {
                    break;
                  }
                  paramString1 = mgw.b("href", paramAttributes);
                } while ((!paramString1.startsWith("data")) || (paramString1.indexOf("base64") <= 0));
                paramString2 = paramString1.substring(paramString1.indexOf(",") + 1);
                paramString3 = a("x", paramAttributes, Float.valueOf(0.0F));
                localObject1 = a("y", paramAttributes, Float.valueOf(0.0F));
                Object localObject2 = a("width", paramAttributes, Float.valueOf(0.0F));
                Float localFloat = a("height", paramAttributes, Float.valueOf(0.0F));
                a(paramAttributes);
                a(paramString3.floatValue(), ((Float)localObject1).floatValue(), ((Float)localObject2).floatValue(), localFloat.floatValue());
                paramString1 = c;
                float f1 = paramString3.floatValue();
                float f2 = ((Float)localObject1).floatValue();
                float f3 = ((Float)localObject2).floatValue();
                float f4 = localFloat.floatValue();
                paramString2 = Base64.decode(paramString2, 0);
                paramString2 = BitmapFactory.decodeByteArray(paramString2, 0, paramString2.length);
                if (paramString2 != null)
                {
                  paramString2.prepareToDraw();
                  paramString3 = new Paint(3);
                  paramAttributes = new RectF(f1, f2, f3 + f1, f4 + f2);
                  paramString1.clipRect(paramAttributes, Region.Op.REPLACE);
                  paramString1.drawBitmap(paramString2, null, paramAttributes, paramString3);
                  paramString2.recycle();
                }
                a();
                return;
                if ((A) || (!paramString2.equals("line"))) {
                  break;
                }
                paramString1 = a("x1", paramAttributes, null);
                paramString2 = a("x2", paramAttributes, null);
                paramString3 = a("y1", paramAttributes, null);
                localObject1 = a("y2", paramAttributes, null);
              } while (!a(new mhc(paramAttributes)));
              a(paramAttributes);
              a(paramString1.floatValue(), paramString3.floatValue());
              a(paramString2.floatValue(), ((Float)localObject1).floatValue());
              c.drawLine(paramString1.floatValue(), paramString3.floatValue(), paramString2.floatValue(), ((Float)localObject1).floatValue(), d);
              a();
              return;
              if ((A) || (!paramString2.equals("circle"))) {
                break;
              }
              paramString1 = a("cx", paramAttributes, null);
              paramString2 = a("cy", paramAttributes, null);
              paramString3 = a("r", paramAttributes, null);
            } while ((paramString1 == null) || (paramString2 == null) || (paramString3 == null));
            a(paramAttributes);
            paramAttributes = new mhc(paramAttributes);
            if (a(paramAttributes, w))
            {
              a(paramString1.floatValue() - paramString3.floatValue(), paramString2.floatValue() - paramString3.floatValue());
              a(paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + paramString3.floatValue());
              c.drawCircle(paramString1.floatValue(), paramString2.floatValue(), paramString3.floatValue(), h);
            }
            if (a(paramAttributes)) {
              c.drawCircle(paramString1.floatValue(), paramString2.floatValue(), paramString3.floatValue(), d);
            }
            a();
            return;
            if ((A) || (!paramString2.equals("ellipse"))) {
              break;
            }
            paramString1 = a("cx", paramAttributes, null);
            paramString2 = a("cy", paramAttributes, null);
            paramString3 = a("rx", paramAttributes, null);
            localObject1 = a("ry", paramAttributes, null);
          } while ((paramString1 == null) || (paramString2 == null) || (paramString3 == null) || (localObject1 == null));
          a(paramAttributes);
          paramAttributes = new mhc(paramAttributes);
          n.set(paramString1.floatValue() - paramString3.floatValue(), paramString2.floatValue() - ((Float)localObject1).floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue());
          if (a(paramAttributes, w))
          {
            a(paramString1.floatValue() - paramString3.floatValue(), paramString2.floatValue() - ((Float)localObject1).floatValue());
            a(paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue());
            c.drawOval(n, h);
          }
          if (a(paramAttributes)) {
            c.drawOval(n, d);
          }
          a();
          return;
          if ((A) || ((!paramString2.equals("polygon")) && (!paramString2.equals("polyline")))) {
            break;
          }
          paramString3 = mgw.a("points", paramAttributes);
        } while (paramString3 == null);
        paramString1 = new Path();
        paramString3 = a;
      } while (paramString3.size() <= 1);
      a(paramAttributes);
      paramAttributes = new mhc(paramAttributes);
      paramString1.moveTo(((Float)paramString3.get(0)).floatValue(), ((Float)paramString3.get(1)).floatValue());
      int i1 = 2;
      while (i1 < paramString3.size())
      {
        paramString1.lineTo(((Float)paramString3.get(i1)).floatValue(), ((Float)paramString3.get(i1 + 1)).floatValue());
        i1 += 2;
      }
      if (paramString2.equals("polygon")) {
        paramString1.close();
      }
      if (a(paramAttributes, w))
      {
        a(paramString1);
        c.drawPath(paramString1, h);
      }
      if (a(paramAttributes)) {
        c.drawPath(paramString1, d);
      }
      a();
      return;
      if ((!A) && (paramString2.equals("path")))
      {
        paramString1 = mgw.b(mgw.b("d", paramAttributes));
        a(paramAttributes);
        paramString2 = new mhc(paramAttributes);
        if (a(paramString2, w))
        {
          a(paramString1);
          c.drawPath(paramString1, h);
        }
        if (a(paramString2)) {
          c.drawPath(paramString1, d);
        }
        a();
        return;
      }
      if ((!A) && (paramString2.equals("text")))
      {
        a(paramAttributes);
        z = new mhe(this, paramAttributes);
        return;
      }
    } while (A);
    String.format("Unrecognized tag: %s (%s)", new Object[] { paramString2, b(paramAttributes) });
  }
}

/* Location:
 * Qualified Name:     mhd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */