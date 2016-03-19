import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.RectF;
import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

public final class mgw
{
  public static float a = 72.0F;
  
  public static mgu a(InputStream paramInputStream, Integer paramInteger1, Integer paramInteger2, float paramFloat)
  {
    long l1 = System.currentTimeMillis();
    try
    {
      XMLReader localXMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
      Picture localPicture = new Picture();
      mhd localmhd = new mhd(localPicture);
      localmhd.a(paramInteger1, paramInteger2);
      localmhd.a(false);
      localmhd.b(false);
      localmhd.a(paramFloat);
      paramInputStream = new mgx(paramInputStream);
      paramInteger1 = new mgz();
      localXMLReader.setContentHandler(paramInteger1);
      localXMLReader.parse(new InputSource(paramInputStream.a()));
      a = a;
      localXMLReader.setContentHandler(localmhd);
      localXMLReader.parse(new InputSource(paramInputStream.a()));
      long l2 = System.currentTimeMillis();
      new StringBuilder(48).append("Parsing complete in ").append(l2 - l1).append(" millis.");
      paramInputStream = new mgu(localPicture, o);
      if (!Float.isInfinite(p.top)) {
        paramInputStream.a(p);
      }
      return paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      paramInteger1 = String.valueOf(paramInputStream);
      new StringBuilder(String.valueOf(paramInteger1).length() + 13).append("Parse error: ").append(paramInteger1);
      throw new ax(paramInputStream);
    }
  }
  
  static mhb a(String paramString)
  {
    int m = paramString.length();
    ArrayList localArrayList = new ArrayList();
    int j = 1;
    int k = 0;
    int i = 0;
    if (j < m)
    {
      if (k != 0) {
        k = 0;
      }
      for (;;)
      {
        j += 1;
        break;
        int n = paramString.charAt(j);
        switch (n)
        {
        default: 
          break;
        case 9: 
        case 10: 
        case 32: 
        case 44: 
        case 45: 
          str = paramString.substring(i, j);
          if (str.trim().length() > 0)
          {
            localArrayList.add(Float.valueOf(Float.parseFloat(str)));
            if (n == 45) {
              i = j;
            }
          }
          break;
        case 41: 
        case 65: 
        case 67: 
        case 72: 
        case 76: 
        case 77: 
        case 81: 
        case 83: 
        case 84: 
        case 86: 
        case 90: 
        case 97: 
        case 99: 
        case 104: 
        case 108: 
        case 109: 
        case 113: 
        case 115: 
        case 116: 
        case 118: 
        case 122: 
          paramString = paramString.substring(i, j);
          if (paramString.trim().length() > 0) {
            localArrayList.add(Float.valueOf(Float.parseFloat(paramString)));
          }
          return new mhb(localArrayList, j);
          i = j + 1;
          k = 1;
          continue;
          i += 1;
        }
      }
    }
    String str = paramString.substring(i);
    if (str.length() > 0) {}
    try
    {
      localArrayList.add(Float.valueOf(Float.parseFloat(str)));
      i = paramString.length();
      return new mhb(localArrayList, i);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;) {}
    }
  }
  
  static mhb a(String paramString, Attributes paramAttributes)
  {
    int j = paramAttributes.getLength();
    int i = 0;
    while (i < j)
    {
      if (paramAttributes.getLocalName(i).equals(paramString)) {
        return a(paramAttributes.getValue(i));
      }
      i += 1;
    }
    return null;
  }
  
  static Path b(String paramString)
  {
    int k = paramString.length();
    mgt localmgt = new mgt(paramString);
    localmgt.a();
    Path localPath = new Path();
    RectF localRectF = new RectF();
    float f1 = 0.0F;
    float f2 = 0.0F;
    float f4 = 0.0F;
    float f3 = 0.0F;
    char c1 = 'x';
    float f6 = 0.0F;
    float f5 = 0.0F;
    if (a < k)
    {
      char c2 = paramString.charAt(a);
      if ((!Character.isDigit(c2)) && (c2 != '.') && (c2 != '-'))
      {
        localmgt.b();
        c1 = c2;
      }
    }
    label106:
    label1344:
    label1353:
    label1535:
    label1729:
    label1792:
    label1936:
    label1948:
    label1953:
    label1958:
    label2229:
    label2255:
    for (;;)
    {
      localPath.computeBounds(localRectF, true);
      float f7;
      int i;
      float f8;
      float f9;
      float f10;
      float f11;
      float f12;
      switch (c1)
      {
      default: 
        new StringBuilder(23).append("Invalid path command: ").append(c1);
        localmgt.b();
        f7 = f3;
        f3 = f1;
        i = 0;
        f1 = f6;
        f8 = f2;
        f2 = f5;
        f6 = f7;
        f5 = f4;
        f4 = f8;
      case 'M': 
      case 'm': 
      case 'Z': 
      case 'z': 
      case 'L': 
      case 'l': 
      case 'H': 
      case 'h': 
      case 'V': 
      case 'v': 
        for (;;)
        {
          if (i == 0)
          {
            f5 = f1;
            f6 = f2;
          }
          localmgt.a();
          f7 = f5;
          f8 = f6;
          f5 = f2;
          f6 = f1;
          f1 = f3;
          f2 = f4;
          f4 = f7;
          f3 = f8;
          break;
          if (c1 == 'M')
          {
            c1 = 'L';
            break label106;
          }
          if (c1 != 'm') {
            break label2255;
          }
          c1 = 'l';
          break label106;
          f1 = localmgt.c();
          f2 = localmgt.c();
          if (c1 == 'm')
          {
            localPath.rMoveTo(f1, f2);
            f2 = f6 + f2;
            f1 += f5;
          }
          for (;;)
          {
            i = 0;
            f5 = f4;
            f6 = f3;
            f7 = f1;
            f8 = f2;
            f3 = f2;
            f4 = f1;
            f1 = f8;
            f2 = f7;
            break;
            localPath.moveTo(f1, f2);
          }
          localPath.close();
          f8 = f1;
          f5 = f2;
          f6 = f4;
          f7 = f3;
          i = 0;
          f3 = f8;
          f4 = f5;
          f5 = f6;
          f6 = f7;
          continue;
          f9 = localmgt.c();
          f10 = localmgt.c();
          if (c1 == 'l')
          {
            localPath.rLineTo(f9, f10);
            f7 = f4;
            f8 = f3;
            i = 0;
            f10 += f6;
            f9 = f5 + f9;
            f3 = f1;
            f4 = f2;
            f5 = f7;
            f6 = f8;
            f1 = f10;
            f2 = f9;
          }
          else
          {
            localPath.lineTo(f9, f10);
            f5 = f1;
            f7 = f2;
            f6 = f3;
            i = 0;
            f1 = f10;
            f2 = f9;
            f8 = f4;
            f3 = f5;
            f4 = f7;
            f5 = f8;
            continue;
            f9 = localmgt.c();
            if (c1 == 'h')
            {
              localPath.rLineTo(f9, 0.0F);
              f7 = f4;
              f8 = f3;
              f9 = f5 + f9;
              f3 = f1;
              i = 0;
              f1 = f6;
              f4 = f2;
              f5 = f7;
              f6 = f8;
              f2 = f9;
            }
            else
            {
              localPath.lineTo(f9, f6);
              f8 = f1;
              f5 = f4;
              f1 = f3;
              i = 0;
              f7 = f6;
              f3 = f8;
              f4 = f2;
              f6 = f1;
              f1 = f7;
              f2 = f9;
              continue;
              f9 = localmgt.c();
              if (c1 == 'v')
              {
                localPath.rLineTo(0.0F, f9);
                f7 = f4;
                f8 = f3;
                i = 0;
                f10 = f9 + f6;
                f9 = f5;
                f3 = f1;
                f4 = f2;
                f5 = f7;
                f6 = f8;
                f1 = f10;
                f2 = f9;
              }
              else
              {
                localPath.lineTo(f5, f9);
                f6 = f4;
                f7 = f3;
                i = 0;
                f8 = f9;
                f9 = f5;
                f3 = f1;
                f4 = f2;
                f5 = f6;
                f6 = f7;
                f1 = f8;
                f2 = f9;
              }
            }
          }
        }
      case 'C': 
      case 'c': 
        f10 = localmgt.c();
        f11 = localmgt.c();
        f12 = localmgt.c();
        f4 = localmgt.c();
        f9 = localmgt.c();
        f3 = localmgt.c();
        if (c1 == 'c')
        {
          f7 = f12 + f5;
          f8 = f9 + f5;
          f9 = f4 + f6;
          f3 += f6;
          f11 += f6;
          f10 += f5;
          f4 = f8;
          f5 = f9;
          f6 = f7;
          f8 = f11;
          f7 = f10;
        }
        break;
      }
      for (;;)
      {
        localPath.cubicTo(f7, f8, f6, f5, f4, f3);
        f7 = f2;
        i = 1;
        f2 = f4;
        f8 = f3;
        f3 = f1;
        f4 = f7;
        f1 = f8;
        break;
        float f14 = localmgt.c();
        f12 = localmgt.c();
        float f13 = localmgt.c();
        f11 = localmgt.c();
        f10 = f14;
        f9 = f12;
        f8 = f13;
        f7 = f11;
        if (c1 == 's')
        {
          f10 = f14 + f5;
          f8 = f13 + f5;
          f9 = f12 + f6;
          f7 = f11 + f6;
        }
        localPath.cubicTo(f5 * 2.0F - f3, f6 * 2.0F - f4, f10, f9, f8, f7);
        f4 = f2;
        i = 1;
        f6 = f10;
        f5 = f9;
        f2 = f8;
        f3 = f1;
        f1 = f7;
        break;
        f11 = localmgt.c();
        f12 = localmgt.c();
        f13 = localmgt.c();
        i = (int)localmgt.c();
        int j = (int)localmgt.c();
        f10 = localmgt.c();
        f9 = localmgt.c();
        f7 = f10;
        f8 = f9;
        if (c1 == 'a')
        {
          f7 = f10 + f5;
          f8 = f9 + f6;
        }
        double d12 = f5;
        double d9 = f6;
        double d13 = f7;
        double d10 = f8;
        double d2 = f11;
        double d1 = f12;
        double d5 = f13;
        double d3;
        double d4;
        double d8;
        double d11;
        double d6;
        double d7;
        double d14;
        double d15;
        if (i == 1)
        {
          i = 1;
          if (j != 1) {
            break label1936;
          }
          j = 1;
          d3 = (d12 - d13) / 2.0D;
          d4 = (d9 - d10) / 2.0D;
          d5 = Math.toRadians(d5 % 360.0D);
          d8 = Math.cos(d5);
          d11 = Math.sin(d5);
          d6 = d8 * d3 + d11 * d4;
          d7 = -d11 * d3 + d8 * d4;
          d3 = Math.abs(d2);
          d2 = Math.abs(d1);
          d4 = d3 * d3;
          d1 = d2 * d2;
          d14 = d6 * d6;
          d15 = d7 * d7;
          d5 = d14 / d4 + d15 / d1;
          if (d5 <= 1.0D) {
            break label2229;
          }
          d4 = d3 * Math.sqrt(d5);
          d1 = d2 * Math.sqrt(d5);
          d2 = d1;
          d3 = d4;
          d1 *= d1;
          d4 *= d4;
        }
        for (;;)
        {
          if (i == j)
          {
            d5 = -1.0D;
            d4 = (d4 * d1 - d4 * d15 - d1 * d14) / (d1 * d14 + d4 * d15);
            d1 = d4;
            if (d4 < 0.0D) {
              d1 = 0.0D;
            }
            d4 = Math.sqrt(d1) * d5;
            d1 = d3 * d7 / d2 * d4;
            d14 = d4 * -(d2 * d6 / d3);
            d4 = (d12 + d13) / 2.0D;
            d9 = (d9 + d10) / 2.0D;
            d5 = d4 + (d8 * d1 - d11 * d14);
            d8 = d9 + (d11 * d1 + d8 * d14);
            d4 = (d6 - d1) / d3;
            d9 = (d7 - d14) / d2;
            d6 = (-d6 - d1) / d3;
            d7 = (-d7 - d14) / d2;
            d10 = Math.sqrt(d4 * d4 + d9 * d9);
            if (d9 >= 0.0D) {
              break label1948;
            }
            d1 = -1.0D;
            d10 = Math.toDegrees(d1 * Math.acos(d4 / d10));
            d11 = Math.sqrt((d4 * d4 + d9 * d9) * (d6 * d6 + d7 * d7));
            if (d4 * d7 - d6 * d9 >= 0.0D) {
              break label1953;
            }
            d1 = -1.0D;
            d4 = Math.toDegrees(d1 * Math.acos((d9 * d7 + d4 * d6) / d11));
            if ((j != 0) || (d4 <= 0.0D)) {
              break label1958;
            }
            d1 = d4 - 360.0D;
          }
          for (;;)
          {
            localPath.addArc(new RectF((float)(d5 - d3), (float)(d8 - d2), (float)(d5 + d3), (float)(d8 + d2)), (float)(d10 % 360.0D), (float)(d1 % 360.0D));
            f5 = f1;
            f6 = f2;
            f9 = f4;
            i = 0;
            f1 = f8;
            f2 = f7;
            f7 = f3;
            f3 = f5;
            f4 = f6;
            f5 = f9;
            f6 = f7;
            break;
            i = 0;
            break label1344;
            j = 0;
            break label1353;
            d5 = 1.0D;
            break label1535;
            d1 = 1.0D;
            break label1729;
            d1 = 1.0D;
            break label1792;
            d1 = d4;
            if (j != 0)
            {
              d1 = d4;
              if (d4 < 0.0D) {
                d1 = d4 + 360.0D;
              }
            }
          }
          f10 = localmgt.c();
          f9 = localmgt.c();
          f8 = f10;
          f7 = f9;
          if (c1 == 't')
          {
            f8 = f10 + f5;
            f7 = f9 + f6;
          }
          f3 = 2.0F * f5 - f3;
          f9 = 2.0F * f6 - f4;
          localPath.cubicTo(f5, f6, f3, f9, f8, f7);
          f4 = f2;
          i = 1;
          f6 = f3;
          f5 = f9;
          f2 = f8;
          f3 = f1;
          f1 = f7;
          break;
          f10 = localmgt.c();
          f9 = localmgt.c();
          f12 = localmgt.c();
          f11 = localmgt.c();
          f8 = f10;
          f7 = f9;
          f4 = f12;
          f3 = f11;
          if (c1 == 'q')
          {
            f4 = f12 + f5;
            f3 = f11 + f6;
            f8 = f10 + f5;
            f7 = f9 + f6;
          }
          localPath.cubicTo(f5, f6, f8, f7, f4, f3);
          f5 = f2;
          i = 1;
          f6 = f8;
          f2 = f4;
          f8 = f3;
          f3 = f1;
          f4 = f5;
          f5 = f7;
          f1 = f8;
          break;
          return localPath;
        }
        f8 = f11;
        f7 = f10;
        f6 = f12;
        f5 = f4;
        f4 = f9;
      }
    }
  }
  
  static String b(String paramString, Attributes paramAttributes)
  {
    int j = paramAttributes.getLength();
    int i = 0;
    while (i < j)
    {
      if (paramAttributes.getLocalName(i).equals(paramString)) {
        return paramAttributes.getValue(i);
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     mgw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */