import android.os.Parcelable;

public class bcr<T extends bcn,  extends Parcelable>
{
  public final Class<T> a;
  public final String b;
  
  public bcr(Class<T> paramClass)
  {
    a = paramClass;
    b = paramClass.getName();
  }
}

/* Location:
 * Qualified Name:     bcr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */