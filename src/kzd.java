import java.io.Closeable;
import java.util.logging.Level;
import java.util.logging.Logger;

final class kzd
  implements kzf
{
  static final kzd a = new kzd();
  
  public void a(Closeable paramCloseable, Throwable paramThrowable1, Throwable paramThrowable2)
  {
    paramThrowable1 = kzb.a;
    Level localLevel = Level.WARNING;
    paramCloseable = String.valueOf(paramCloseable);
    paramThrowable1.log(localLevel, String.valueOf(paramCloseable).length() + 42 + "Suppressing exception thrown when closing " + paramCloseable, paramThrowable2);
  }
}

/* Location:
 * Qualified Name:     kzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */