import java.lang.ref.WeakReference;

abstract class fsx
  extends fmx
{
  private static final WeakReference<byte[]> b = new WeakReference(null);
  private WeakReference<byte[]> a = b;
  
  fsx(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  byte[] a()
  {
    try
    {
      byte[] arrayOfByte2 = (byte[])a.get();
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null)
      {
        arrayOfByte1 = b();
        a = new WeakReference(arrayOfByte1);
      }
      return arrayOfByte1;
    }
    finally {}
  }
  
  protected abstract byte[] b();
}

/* Location:
 * Qualified Name:     fsx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */