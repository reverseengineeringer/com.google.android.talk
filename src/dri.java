import java.util.ArrayList;

public class dri
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final ArrayList<dts> g = new ArrayList();
  
  private dri(mgf parammgf)
  {
    mgd[] arrayOfmgd = a;
    int k = arrayOfmgd.length;
    int i = 0;
    if (i < k)
    {
      parammgf = arrayOfmgd[i];
      String str = a;
      boolean bool1 = aal.a(b, false);
      boolean bool2 = aal.a(c, false);
      boolean bool3 = aal.a(d, false);
      int j;
      if (e != null)
      {
        j = aal.a(e.b, 0);
        label94:
        if (f == null) {
          break label148;
        }
      }
      label148:
      for (parammgf = f.a;; parammgf = null)
      {
        parammgf = new dts(str, bool1, bool2, bool3, j, parammgf);
        g.add(parammgf);
        i += 1;
        break;
        j = 0;
        break label94;
      }
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      paramArrayOfByte = (mgf)lyi.b(new mgf(), paramArrayOfByte, paramArrayOfByte.length);
      if (paramArrayOfByte != null) {
        return new dri(paramArrayOfByte);
      }
    }
    return null;
  }
  
  public ArrayList<dts> k()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     dri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */