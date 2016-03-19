import android.graphics.RectF;

final class idf
{
  private static final char[] a = "http://".toCharArray();
  private static final char[] b = "https://".toCharArray();
  private static final char[] c = "lh".toCharArray();
  private static final char[] d = "ap".toCharArray();
  private static final char[] e = "sp".toCharArray();
  private static final char[] f = "bp".toCharArray();
  private static final char[] g = ".googleusercontent.com/".toCharArray();
  private static final char[] h = "www.google.com/visualsearch/lh/".toCharArray();
  private static final char[] i = ".google.com/".toCharArray();
  private static final char[] j = ".blogger.com/".toCharArray();
  private static final char[] k = ".bp.blogspot.com/".toCharArray();
  private static final char[] l = ".ggpht.com/".toCharArray();
  private static final char[] m = "public".toCharArray();
  private static final char[] n = "proxy".toCharArray();
  private static final char[] o = "image".toCharArray();
  private static final char[] p = "%3D".toCharArray();
  private static final char[] q = "%3d".toCharArray();
  private static final char[][] r = { { 'O' }, { 'J' }, { 85, 116 }, { 'U' }, { 'I' } };
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D = true;
  private int E;
  private int F;
  private int G;
  private int[] H = new int[8];
  private int[] I = new int[8];
  private char[] s = new char['ߐ'];
  private int t;
  private int u;
  private int v;
  private int w;
  private int x;
  private boolean y;
  private boolean z;
  
  private static String a(float paramFloat)
  {
    if ((paramFloat < 0.0F) || (paramFloat > 1.0F)) {
      throw new IllegalArgumentException("Cropping requires values between 0 and 1");
    }
    String str = String.valueOf(Integer.toHexString((int)Math.floor(65535.0F * paramFloat)));
    if (str.length() != 0) {}
    for (str = "0000".concat(str);; str = new String("0000")) {
      return str.substring(str.length() - 4, str.length());
    }
  }
  
  private void a(StringBuilder paramStringBuilder)
  {
    int i1 = w;
    int i7 = w + E;
    int i4;
    label25:
    int i2;
    char[] arrayOfChar1;
    label49:
    int i5;
    int i6;
    if (i1 < i7)
    {
      i4 = 0;
      i2 = i1;
      if (i4 < r.length)
      {
        arrayOfChar1 = r[i4];
        i3 = 0;
        i2 = i1;
        if ((i3 >= arrayOfChar1.length) || (i2 >= i7)) {
          break label221;
        }
        i5 = i3 + 1;
        i6 = arrayOfChar1[i3];
        char[] arrayOfChar2 = s;
        i3 = i2 + 1;
        if (i6 == arrayOfChar2[i2]) {
          break label211;
        }
        i2 = i3;
      }
    }
    for (int i3 = 0;; i3 = 1)
    {
      i6 = i3;
      if (i3 != 0) {
        if (i5 == arrayOfChar1.length)
        {
          i6 = i3;
          if (i2 != i7)
          {
            i6 = i3;
            if (s[i2] == '-') {}
          }
        }
        else
        {
          i6 = 0;
        }
      }
      if (i6 != 0)
      {
        paramStringBuilder.append(r[i4]).append('-');
        i2 = i1;
        while ((i2 < i7) && (s[i2] != '-')) {
          i2 += 1;
        }
      }
      i4 += 1;
      break label25;
      i1 = i2 + 1;
      break;
      return;
      label211:
      i2 = i3;
      i3 = i5;
      break label49;
      label221:
      i5 = i3;
    }
  }
  
  private boolean a(int paramInt, char[] paramArrayOfChar)
  {
    int i2 = paramArrayOfChar.length;
    if (paramInt + i2 > t) {
      return false;
    }
    int i1 = 0;
    for (;;)
    {
      if (i1 >= i2) {
        break label46;
      }
      if (s[(paramInt + i1)] != paramArrayOfChar[i1]) {
        break;
      }
      i1 += 1;
    }
    label46:
    return true;
  }
  
  private boolean a(char[] paramArrayOfChar)
  {
    int i1 = u;
    int i3 = paramArrayOfChar.length;
    if (i1 + i3 > t) {
      return false;
    }
    int i2 = 0;
    for (;;)
    {
      if (i2 >= i3) {
        break label53;
      }
      if (s[i1] != paramArrayOfChar[i2]) {
        break;
      }
      i2 += 1;
      i1 += 1;
    }
    label53:
    u = i1;
    return true;
  }
  
  private int b(int paramInt, char[] paramArrayOfChar)
  {
    int i3 = paramArrayOfChar.length;
    int i4 = t;
    while (paramInt <= i4 - i3)
    {
      int i1 = 0;
      for (;;)
      {
        i2 = paramInt;
        if (i1 >= i3) {
          break label61;
        }
        if (s[(paramInt + i1)] != paramArrayOfChar[i1]) {
          break;
        }
        i1 += 1;
      }
      paramInt += 1;
    }
    int i2 = -1;
    label61:
    return i2;
  }
  
  private void b(String paramString)
  {
    t = paramString.length();
    if (t >= 2000)
    {
      D = false;
      return;
    }
    paramString.getChars(0, t, s, 0);
    u = 0;
    A = false;
    B = false;
    C = false;
    boolean bool;
    if ((!a(a)) && (!a(b))) {
      bool = false;
    }
    for (;;)
    {
      y = bool;
      if (y) {
        break;
      }
      D = false;
      return;
      v = u;
      if (a(c))
      {
        A = true;
        if ((s[u] >= '3') && (s[u] <= '6'))
        {
          u += 1;
          if ((s[u] == '-') && (s[(u + 1)] == 'd'))
          {
            z = true;
            u += 2;
            if (((s[u] >= 'a') && (s[u] <= 'g')) || (s[u] == 'z'))
            {
              u += 1;
              if (!a(g)) {
                bool = false;
              }
            }
            else
            {
              bool = false;
            }
          }
          else if ((s[u] == '-') && (s[(u + 1)] == 't') && (s[(u + 2)] == 't'))
          {
            z = true;
            u += 3;
            if (!a(g)) {
              bool = false;
            }
          }
          else
          {
            if (!a(i)) {
              break label388;
            }
            B = true;
          }
        }
      }
      label388:
      label499:
      label505:
      label570:
      label576:
      label645:
      label651:
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
                do
                {
                  F = (u - 1);
                  bool = true;
                  break;
                } while ((a(g)) || (a(l)));
                bool = false;
                break;
                bool = false;
                break;
                if (!a(e)) {
                  break label505;
                }
                A = true;
                if ((s[u] < '1') || (s[u] > '3')) {
                  break label499;
                }
                u += 1;
              } while ((a(g)) || (a(l)));
              bool = false;
              break;
              bool = false;
              break;
              if (!a(d)) {
                break label576;
              }
              A = true;
              if (s[u] != '2') {
                break label570;
              }
              u += 1;
            } while ((a(g)) || (a(l)));
            bool = false;
            break;
            bool = false;
            break;
            A = false;
            if (!a(f)) {
              break label651;
            }
            if ((s[u] < '0') || (s[u] > '3')) {
              break label645;
            }
            u += 1;
          } while (a(j));
          bool = false;
          break;
          bool = false;
          break;
        } while (a(h));
        if ((s[u] < '1') || (s[u] > '4')) {
          break label715;
        }
        u += 1;
      } while (a(k));
      bool = false;
      continue;
      label715:
      bool = false;
    }
    int i2 = u;
    int i3 = u;
    G = 0;
    if (i2 != t)
    {
      i1 = i3;
      if (s[i2] != '/') {}
    }
    else
    {
      if ((i2 != i3) || (i2 == t)) {
        break label795;
      }
      i1 = i2 + 1;
    }
    for (;;)
    {
      if (i2 == t) {
        break label851;
      }
      i2 += 1;
      i3 = i1;
      break;
      label795:
      if (G >= 8)
      {
        D = false;
        return;
      }
      H[G] = i3;
      I[G] = (i2 - i3);
      i1 = i2 + 1;
      G += 1;
    }
    label851:
    if ((G > 1) && (I[0] == o.length) && (a(H[0], o))) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((i1 == 0) && (G == 5))
      {
        w = H[4];
        E = 0;
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          break label1042;
        }
        C = true;
        D = true;
        return;
        if ((i1 != 0) && (G == 6))
        {
          w = H[5];
          E = 0;
          break;
        }
        if ((i1 == 0) && (G == 6))
        {
          w = H[4];
          E = I[4];
          break;
        }
        if ((i1 != 0) && (G == 7))
        {
          w = H[5];
          E = I[5];
          break;
        }
      }
      label1042:
      if ((G > 1) && (((I[0] == m.length) && (a(H[0], m))) || ((I[0] == n.length) && (a(H[0], n))))) {}
      for (i1 = 1;; i1 = 0)
      {
        if ((i1 == 0) && (G == 1))
        {
          i1 = H[0];
          i3 = I[0];
          i2 = i1;
          label1139:
          if (i2 >= t) {
            break label1261;
          }
          if (s[i2] != '=') {
            break label1254;
          }
          label1158:
          x = i2;
          if (x == -1) {
            break label1266;
          }
          w = (x + 1);
          label1181:
          if (x == -1) {
            break label1319;
          }
        }
        for (E = (i3 - (w - i1));; E = 0)
        {
          for (i1 = 1;; i1 = 0)
          {
            if (i1 == 0) {
              break label1343;
            }
            C = false;
            D = true;
            return;
            if ((i1 != 0) && (G == 2))
            {
              i1 = H[1];
              i3 = I[1];
              break;
            }
          }
          label1254:
          i2 += 1;
          break label1139;
          label1261:
          i2 = -1;
          break label1158;
          label1266:
          x = b(i1, p);
          if (x == -1) {
            x = b(i1, q);
          }
          if (x == -1) {
            break label1181;
          }
          w = (x + 3);
          break label1181;
          label1319:
          x = (i3 + i1);
          w = x;
        }
        label1343:
        D = false;
        return;
      }
    }
  }
  
  private void b(StringBuilder paramStringBuilder)
  {
    int i1 = w;
    int i2 = w;
    int i3 = E + i2;
    while (i1 < i3)
    {
      if (s[i1] == 'f') {
        i2 = 1;
      }
      while ((i1 < i3) && (s[i1] != '-'))
      {
        if (i2 != 0) {
          paramStringBuilder.append(s[i1]);
        }
        i1 += 1;
        continue;
        i2 = 0;
      }
      if (i2 != 0) {
        paramStringBuilder.append('-');
      }
      i1 += 1;
    }
  }
  
  String a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, RectF paramRectF, int paramInt7, int paramInt8)
  {
    for (;;)
    {
      int i4;
      int i1;
      try
      {
        b(paramString);
        boolean bool = D;
        if (!bool)
        {
          paramString = null;
          return paramString;
        }
        paramString = new StringBuilder(t + 50);
        i4 = 0;
        if ((paramInt1 & 0x2000) == 0) {
          break label867;
        }
        i1 = 1;
      }
      finally {}
      int i3 = i4;
      if (A) {
        if ((paramInt7 <= 0) && (i1 == 0))
        {
          i3 = i4;
          if (i2 == 0) {}
        }
        else
        {
          paramString.append(s, 0, v);
          if ((B) || (i2 == 0) || (z)) {
            continue;
          }
          paramString.append(e);
          paramString.append((char)(paramInt7 % 3 + 49));
          paramInt7 = v + 3;
          paramString.append(s, paramInt7, F - paramInt7);
          i3 = F;
        }
      }
      if (C)
      {
        paramString.append(s, i3, w - i3);
        paramInt7 = paramString.length();
        if ((paramInt2 != 0) || ((paramInt3 == 0) && (paramInt4 == 0))) {
          paramString.append('s').append(paramInt2).append('-');
        }
        if (paramInt3 != 0) {
          paramString.append('w').append(paramInt3).append('-');
        }
        if (paramInt4 != 0) {
          paramString.append('h').append(paramInt4).append('-');
        }
        if ((paramInt1 & 0x20) != 0) {
          paramString.append("rw-");
        }
        if ((paramInt1 & 0x4000) != 0) {
          paramString.append("rwa-");
        }
        if ((paramInt1 & 0x1) != 0) {
          paramString.append("c-");
        }
        if ((paramInt1 & 0x2) != 0) {
          paramString.append("d-");
        }
        if ((paramInt1 & 0x10) != 0) {
          paramString.append("k-");
        }
        if ((paramInt1 & 0x4) != 0) {
          paramString.append("no-");
        }
        if ((paramInt1 & 0x40) != 0) {
          paramString.append("nu-");
        }
        if ((paramInt1 & 0x8) != 0) {
          paramString.append("p-");
        }
        if ((paramInt1 & 0x1000) != 0) {
          paramString.append("lf-");
        }
        if ((paramInt1 & 0x100) != 0) {
          paramString.append("fSoften=0,25,0-");
        }
        if ((paramInt1 & 0x200) != 0) {
          paramString.append("ip-");
        }
        if ((paramInt1 & 0x800) != 0) {
          paramString.append("rj-");
        }
        if ((0x8000 & paramInt1) != 0) {
          paramString.append("fBoxBlur=2,24,24-");
        }
        if ((0x10000 & paramInt1) != 0) {
          paramString.append("al-");
        }
        if ((0x20000 & paramInt1) != 0)
        {
          paramString.append("rh-");
          break label826;
          label503:
          paramString.append(paramInt6).append('-');
          label515:
          if (((paramInt1 & 0x400) != 0) && (paramRectF != null))
          {
            paramString.append("fcrop64=1,");
            paramString.append(a(left));
            paramString.append(a(top));
            paramString.append(a(right));
            paramString.append(a(bottom));
            paramString.append('-');
          }
          if (paramInt8 >= 0) {
            paramString.append('a').append(paramInt8).append('-');
          }
          a(paramString);
          b(paramString);
          if (paramString.length() > paramInt7) {
            paramString.setLength(paramString.length() - 1);
          }
          if ((C) && (E == 0)) {
            paramString.append('/');
          }
          paramString.append(s, w + E, t - (w + E));
          paramString = paramString.toString();
          continue;
          if ((i1 != 0) && (!z))
          {
            paramString.append(d).append('2');
            continue;
          }
          paramString.append(c);
          paramString.append((char)(paramInt7 % 4 + 51));
          continue;
        }
      }
      else
      {
        paramString.append(s, i3, x - i3);
        paramString.append('=');
        continue;
        paramString.append('v');
        continue;
        paramString.append('l');
        continue;
      }
      for (;;)
      {
        if ((paramInt1 & 0x80) == 0) {
          break label873;
        }
        i2 = 1;
        break;
        label826:
        if ((paramInt5 == -1) || (paramInt6 == -1)) {
          break label515;
        }
        switch (paramInt5)
        {
        }
        break label503;
        label867:
        i1 = 0;
      }
      label873:
      int i2 = 0;
    }
  }
  
  boolean a(String paramString)
  {
    try
    {
      b(paramString);
      boolean bool = y;
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     idf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */