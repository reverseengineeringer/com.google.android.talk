import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

public final class efc
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.p;
  }
  
  public static cwi a(byte[] paramArrayOfByte)
  {
    return (cwi)c(paramArrayOfByte);
  }
  
  public static byte[] a(cwi paramcwi)
  {
    return a(paramcwi);
  }
  
  public static byte[] a(dqf paramdqf)
  {
    return a(paramdqf);
  }
  
  private static byte[] a(Serializable paramSerializable)
  {
    try
    {
      Object localObject1 = new ByteArrayOutputStream();
      Object localObject2 = new ObjectOutputStream((OutputStream)localObject1);
      ((ObjectOutputStream)localObject2).writeObject(paramSerializable);
      ((ObjectOutputStream)localObject2).close();
      localObject1 = ((ByteArrayOutputStream)localObject1).toByteArray();
      if (a)
      {
        Object localObject3 = c((byte[])localObject1);
        localObject2 = String.valueOf(paramSerializable);
        localObject3 = String.valueOf(localObject3);
        new StringBuilder(String.valueOf(localObject2).length() + 37 + String.valueOf(localObject3).length()).append("encoded ").append((String)localObject2).append(" ==> ...;  testing decode... ").append((String)localObject3);
      }
      return (byte[])localObject1;
    }
    catch (IOException localIOException)
    {
      paramSerializable = String.valueOf(paramSerializable);
      ezi.d("Babel_RequestWriter", String.valueOf(paramSerializable).length() + 33 + "got exception serializing object " + paramSerializable, localIOException);
    }
    return null;
  }
  
  public static dqf b(byte[] paramArrayOfByte)
  {
    return (dqf)c(paramArrayOfByte);
  }
  
  private static Serializable c(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = (Serializable)new ObjectInputStream(new ByteArrayInputStream(paramArrayOfByte)).readObject();
      return paramArrayOfByte;
    }
    catch (ClassNotFoundException paramArrayOfByte)
    {
      ezi.d("Babel_RequestWriter", "error decoding serialized stream", paramArrayOfByte);
      return null;
    }
    catch (IOException paramArrayOfByte)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     efc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */