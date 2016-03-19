import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;

final class ext
  extends HandlerThread
  implements Handler.Callback
{
  public ext()
  {
    super("GifDecoder");
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    exs localexs = (exs)obj;
    if ((localexs == null) || (z == null) || (C)) {
      return true;
    }
    label100:
    label131:
    int i;
    label268:
    label316:
    int j;
    label433:
    int k;
    int m;
    int n;
    boolean bool;
    label559:
    label654:
    label685:
    label704:
    label866:
    label884:
    int i6;
    int i10;
    int i11;
    int i12;
    int i1;
    int i4;
    int i2;
    label1176:
    int i3;
    label1242:
    int i7;
    switch (what)
    {
    case 11: 
    default: 
      return false;
    case 10: 
      try
      {
        switch (p)
        {
        case 0: 
          p = 0;
          q = false;
          D = false;
          A = 100;
          g = null;
          for (;;)
          {
            paramMessage = E;
            i = L;
            L = (i + 1);
            switch (paramMessage[i] & 0xFF)
            {
            case 0: 
            case 33: 
              paramMessage = E;
              i = L;
              L = (i + 1);
              switch (paramMessage[i] & 0xFF)
              {
              case 249: 
                localexs.m();
              }
              break;
            }
          }
          if (!D) {}
          break;
        }
      }
      catch (ArrayIndexOutOfBoundsException paramMessage)
      {
        D = true;
      }
      for (;;)
      {
        if (y == 0)
        {
          b = true;
          ezi.d("Babel", "Could not read first frame of the gif.", new Object[0]);
          if ((D) && (!b) && (!c)) {
            break;
          }
          B.sendMessage(B.obtainMessage(11, A, 0));
          return true;
          w = false;
          break label100;
          if (!w) {
            break label100;
          }
          System.arraycopy(x, 0, H, 0, x.length);
          break label100;
          w = false;
          j = 0;
          if (q) {
            break label2183;
          }
          j = d;
          break label2183;
          if (k >= m) {
            break label100;
          }
          m = (k + k) * F + j;
          n = l;
          i = m;
          while (i < n + m)
          {
            H[i] = j;
            i += 1;
          }
          L += 1;
          paramMessage = E;
          i = L;
          L = (i + 1);
          i = paramMessage[i] & 0xFF;
          p = ((i & 0x1C) >> 2);
          if ((i & 0x1) == 0) {
            break label2198;
          }
          bool = true;
          q = bool;
          A = (localexs.l() * 10);
          if (A <= 10) {
            A = 100;
          }
          paramMessage = E;
          i = L;
          L = (i + 1);
          r = (paramMessage[i] & 0xFF);
          L += 1;
          break label131;
          localexs.k();
          k = 1;
          i = 0;
          j = k;
          if (i >= exs.a.length) {
            break label2204;
          }
          if (o[i] == exs.a[i]) {
            break label2211;
          }
          j = 0;
          break label2204;
          do
          {
            if (localexs.k() <= 0) {
              break;
            }
          } while (!b);
          break label131;
          localexs.m();
          break label131;
          localexs.m();
          break label131;
          localexs.m();
          break label131;
          j = localexs.l();
          k = localexs.l();
          i = localexs.l();
          j = localexs.l();
          l = Math.min(i, F - j);
          m = Math.min(j, G - k);
          n = i;
          i *= j;
          if (i > v.length) {
            v = new byte[i];
          }
          paramMessage = E;
          i = L;
          L = (i + 1);
          i = paramMessage[i] & 0xFF;
          if ((i & 0x40) == 0) {
            break label2218;
          }
          bool = true;
          i = bool;
          if ((i & 0x80) == 0) {
            break label2224;
          }
          bool = true;
          e = bool;
          f = ((int)Math.pow(2.0D, (i & 0x7) + 1));
          if (e)
          {
            if (g == null) {
              g = new int['Ā'];
            }
            L = exs.a(E, g, f, L);
            h = g;
          }
          for (;;)
          {
            i6 = 0;
            if (q)
            {
              i6 = h[r];
              h[r] = 0;
            }
            if (h == null)
            {
              b = true;
              ezi.d("Babel", "Could not read color table from the gif. Abort.", new Object[0]);
            }
            if (b) {
              break;
            }
            i10 = l * m;
            paramMessage = E;
            i = L;
            L = (i + 1);
            i11 = paramMessage[i] & 0xFF;
            i12 = 1 << i11;
            i1 = i12 + 2;
            i4 = -1;
            j = i11 + 1;
            i2 = (1 << j) - 1;
            i = 0;
            while (i < i12)
            {
              s[i] = 0;
              t[i] = ((byte)i);
              i += 1;
            }
            h = J;
            if (K == r) {
              d = 0;
            }
          }
          m = i;
          if (i < i10)
          {
            paramMessage = E;
            m = L;
            L = (m + 1);
            i3 = paramMessage[m] & 0xFF;
            m = i;
            if (i3 != 0)
            {
              int i13 = L + i3;
              m = i;
              i3 = k;
              if (L >= i13) {
                break label2378;
              }
              paramMessage = E;
              i = L;
              L = (i + 1);
              i7 = ((paramMessage[i] & 0xFF) << i3) + i7;
              i3 += 8;
              i = i2;
              i2 = i1;
              k = n;
              n = i;
              i1 = j;
              j = i3;
              i = i4;
              i4 = k;
              k = i7;
              break label2247;
              if (i3 == i12 + 1)
              {
                L = i13;
                label1344:
                localexs.m();
                if (b) {
                  continue;
                }
                if (p != 3) {
                  break label2304;
                }
                localexs.i();
                break label2304;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      if (i1 < m)
      {
        if (!i) {
          break label2099;
        }
        i = j;
        n = k;
        i2 = m;
        if (j < m) {
          break label2325;
        }
        i2 = m + 1;
      }
      label1444:
      label1505:
      int i5;
      switch (i2)
      {
      default: 
        m += k;
        if (m >= G) {
          break label2413;
        }
        n = F;
        i2 = j + m * n;
        i3 = l;
        m = n * i1;
        n = i2;
        if (n >= i2 + i3) {
          break label2413;
        }
        i4 = v[m];
        i4 = h[(i4 & 0xFF)];
        if (i4 != 0)
        {
          H[n] = i4;
          break label2347;
          if (i == -1)
          {
            v[m] = t[i3];
            m += 1;
            i4 = i3;
            i = i3;
          }
          else
          {
            if (i3 >= i2)
            {
              paramMessage = u;
              i7 = i5 + 1;
              paramMessage[i5] = ((byte)i4);
              if (i7 == 4097)
              {
                b = true;
                ezi.d("Babel", "Error while decoding Gif.", new Object[0]);
                break label1344;
              }
            }
            for (;;)
            {
              label1648:
              if (i4 >= i12)
              {
                if ((i4 >= 4097) || (i4 == s[i4]))
                {
                  b = true;
                  ezi.d("Babel", "Error while decoding Gif.", new Object[0]);
                  break label1344;
                }
                paramMessage = u;
                i7 = i5 + 1;
                paramMessage[i5] = t[i4];
                i4 = s[i4];
                if (i7 != 4097) {
                  break label2362;
                }
                b = true;
                ezi.d("Babel", "Error while decoding Gif.", new Object[0]);
                break label1344;
              }
              int i9 = t[i4];
              u[i5] = ((byte)i9);
              i4 = n;
              i7 = i1;
              i8 = i2;
              if (i2 >= 4096) {
                break label2369;
              }
              s[i2] = ((short)i);
              t[i2] = ((byte)i9);
              i = i2 + 1;
              i4 = n;
              i7 = i1;
              i8 = i;
              if ((i & n) != 0) {
                break label2369;
              }
              i4 = n;
              i7 = i1;
              i8 = i;
              if (i >= 4096) {
                break label2369;
              }
              i7 = i1 + 1;
              i4 = n + i;
              i8 = i;
              break label2369;
              for (;;)
              {
                label1879:
                paramMessage = v;
                i = m + 1;
                byte[] arrayOfByte = u;
                i5 -= 1;
                paramMessage[m] = arrayOfByte[i5];
                if (i5 <= 0)
                {
                  m = i;
                  i = i3;
                  n = i4;
                  i1 = i7;
                  i2 = i8;
                  i4 = i9;
                  break label2247;
                  while (m < i10)
                  {
                    v[m] = 0;
                    m += 1;
                  }
                  if (q) {
                    h[r] = i6;
                  }
                  y += 1;
                  break;
                  D = true;
                  break;
                  if ((y > 1) && (M))
                  {
                    L = I;
                    w = false;
                    y = 0;
                    p = 0;
                    break label316;
                  }
                  c = true;
                  break label316;
                  L = I;
                  w = false;
                  y = 0;
                  p = 0;
                  return true;
                  label2099:
                  i = j;
                  j = k;
                  k = m;
                  m = i1;
                  break label1444;
                }
                m = i;
              }
              i5 = i7;
              i4 = i;
              continue;
              i4 = i3;
            }
            label2138:
            int i8 = i4;
            i7 = i2;
            i3 = j;
            j = i1;
            i2 = n;
            i4 = i;
            n = i8;
            i1 = i7;
            i7 = k;
            break label1242;
            break;
            break label131;
            break label268;
            label2183:
            k = 0;
            break label433;
            k += 1;
            break label433;
            label2198:
            bool = false;
            break label559;
            label2204:
            if (j == 0) {
              break label704;
            }
            break label685;
            label2211:
            i += 1;
            break label654;
            label2218:
            bool = false;
            break label866;
            label2224:
            bool = false;
            break label884;
            i7 = 0;
            k = 0;
            n = 0;
            i5 = 0;
            i = 0;
            break label1176;
          }
          for (;;)
          {
            label2247:
            if (j < i1) {
              break label2138;
            }
            i3 = k & n;
            k >>= i1;
            j -= i1;
            if (i3 != i12) {
              break;
            }
            i1 = i11 + 1;
            n = (1 << i1) - 1;
            i2 = i12 + 2;
            i = -1;
          }
          label2304:
          m = 1;
          k = 8;
          j = 0;
          i1 = 0;
          continue;
          n = k;
          i = j;
        }
        break;
      }
      for (;;)
      {
        label2325:
        i3 = i + n;
        j = n;
        k = i2;
        m = i;
        i = i3;
        break label1444;
        label2347:
        n += 1;
        m += 1;
        break label1505;
        label2362:
        i5 = i7;
        break label1648;
        label2369:
        i5 += 1;
        break label1879;
        label2378:
        k = i3;
        i = m;
        break;
        i = 4;
        n = k;
        continue;
        i = 2;
        n = 4;
        continue;
        i = 1;
        n = 2;
      }
      label2413:
      i1 += 1;
      m = j;
      n = k;
      j = i;
      k = m;
      m = n;
    }
  }
}

/* Location:
 * Qualified Name:     ext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */