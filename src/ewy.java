import android.content.Intent;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public final class ewy
  extends Exception
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public Intent a;
  public int b;
  
  public ewy(int paramInt)
  {
    a = null;
    b = paramInt;
  }
  
  public ewy(Intent paramIntent)
  {
    a = paramIntent;
    b = 0;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    b = paramObjectInputStream.readInt();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     ewy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */