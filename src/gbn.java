import java.io.IOException;

public abstract class gbn
{
  public volatile int p = -1;
  
  public static final <T extends gbn> T a(int paramInt)
  {
    try
    {
      int i;
      Object localObject = new gbf((byte[])localObject, 0, i);
      paramInt.a((gbf)localObject);
      ((gbf)localObject).a(0);
      return paramInt;
    }
    catch (gbm paramInt)
    {
      throw paramInt;
    }
    catch (IOException paramInt)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public static final byte[] a(gbn paramgbn)
  {
    byte[] arrayOfByte = new byte[paramgbn.g()];
    int i = arrayOfByte.length;
    try
    {
      gbg localgbg = gbg.a(arrayOfByte, 0, i);
      paramgbn.a(localgbg);
      localgbg.a();
      return arrayOfByte;
    }
    catch (IOException paramgbn)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", paramgbn);
    }
  }
  
  protected int a()
  {
    return 0;
  }
  
  public abstract gbn a(gbf paramgbf);
  
  public void a(gbg paramgbg) {}
  
  public gbn e()
  {
    return (gbn)super.clone();
  }
  
  public int f()
  {
    if (p < 0) {
      g();
    }
    return p;
  }
  
  public int g()
  {
    int i = a();
    p = i;
    return i;
  }
  
  public String toString()
  {
    return aal.a(this);
  }
}

/* Location:
 * Qualified Name:     gbn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */