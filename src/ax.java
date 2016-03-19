import android.os.Parcel;
import android.os.RemoteException;

public final class ax
  extends RuntimeException
{
  public ax(RemoteException paramRemoteException)
  {
    super(paramRemoteException);
  }
  
  public ax(Class<?> paramClass)
  {
    this(String.valueOf(paramClass).length() + 50 + "Failed to find result encoder for resource class: " + paramClass);
  }
  
  public ax(byte paramByte)
  {
    this(String.valueOf(paramByte).length() + 46 + "Failed to find source encoder for data class: " + paramByte);
  }
  
  public ax(Class paramClass1, Class paramClass2)
  {
    this(String.valueOf(paramClass1).length() + 54 + String.valueOf(paramClass2).length() + "Failed to find any ModelLoaders for model: " + paramClass1 + " and data: " + paramClass2);
  }
  
  public ax(Object paramObject)
  {
    this(String.valueOf(paramObject).length() + 43 + "Failed to find any ModelLoaders for model: " + (String)paramObject);
  }
  
  private ax(String paramString)
  {
    super(paramString);
  }
  
  public ax(String paramString, Parcel paramParcel)
  {
    super(paramString + " Parcel: pos=" + paramParcel.dataPosition() + " size=" + paramParcel.dataSize());
  }
  
  public ax(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
  
  public ax(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */