import java.io.IOException;

public abstract class lvg<BuilderType extends lvg>
  implements lwq
{
  public abstract BuilderType a();
  
  public BuilderType a(lvp paramlvp)
  {
    return a(paramlvp, lvt.a);
  }
  
  public abstract BuilderType a(lvp paramlvp, lvt paramlvt);
  
  public BuilderType a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public BuilderType a(int paramInt)
  {
    try
    {
      int i;
      paramInt = lvp.a(paramInt, 0, i, false);
      a(paramInt);
      paramInt.a(0);
      return this;
    }
    catch (lwk paramInt)
    {
      throw paramInt;
    }
    catch (IOException paramInt)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     lvg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */