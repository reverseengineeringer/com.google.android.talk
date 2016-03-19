import java.util.Objects;

public final class erc
{
  public final int a;
  public final int b;
  public final int c;
  public final String d;
  public final int e;
  public final int f;
  
  erc(int paramInt1, int paramInt2, int paramInt3, String paramString, int paramInt4, int paramInt5)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramString;
    e = paramInt4;
    f = paramInt5;
  }
  
  public boolean a()
  {
    return (a != 0) || (b == -1) || (b == 0);
  }
  
  public boolean a(int paramInt)
  {
    return (a == 0) && (b != -1) && (b > paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (erc)paramObject;
    } while ((a == a) && (b == b) && (c == c) && (Objects.equals(d, d)) && (e == e) && (f == f));
    return false;
  }
  
  public int hashCode()
  {
    int j = ((a + 31) * 31 + b) * 31 + c;
    int i = j;
    if (d != null) {
      i = j * 31 + d.hashCode();
    }
    return (i * 31 + e) * 31 + f;
  }
  
  public String toString()
  {
    String str1 = String.valueOf("CellState, serviceState: ");
    int i = a;
    int j = b;
    int k = c;
    String str2 = d;
    int m = e;
    int n = f;
    return String.valueOf(str1).length() + 136 + String.valueOf(str2).length() + str1 + i + ", signalLevelPercent: " + j + ", phoneType: " + k + ", networkOperator: " + str2 + ", networkType: " + m + ", systemId: " + n;
  }
}

/* Location:
 * Qualified Name:     erc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */