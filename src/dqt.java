public class dqt
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final dnx g;
  
  private dqt(mgl parammgl)
  {
    String str1;
    if ((a != null) && (a.a != null) && (a.a.a != null))
    {
      str1 = a.a.a.a;
      if (b == null) {
        break label145;
      }
    }
    label145:
    for (String str2 = b.a;; str2 = null)
    {
      long l2 = aal.a(c, 0L);
      long l1 = l2;
      if (l2 != 0L) {
        l1 = l2 + System.currentTimeMillis();
      }
      boolean bool1 = bool2;
      if (l1 != 0L)
      {
        bool1 = bool2;
        if (aal.a(d, false)) {
          bool1 = true;
        }
      }
      g = new dnx(str1, str2, l1, bool1);
      return;
      str1 = null;
      break;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      paramArrayOfByte = (mgl)lyi.b(new mgl(), paramArrayOfByte, paramArrayOfByte.length);
      if (paramArrayOfByte != null) {
        return new dqt(paramArrayOfByte);
      }
    }
    return null;
  }
  
  public dnx k()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     dqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */