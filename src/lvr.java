import java.io.IOException;

public final class lvr
  extends IOException
{
  private static final long serialVersionUID = -6947486886997889499L;
  
  lvr()
  {
    super("CodedOutputStream was writing to a flat byte array and ran out of space.");
  }
  
  lvr(Throwable paramThrowable)
  {
    super("CodedOutputStream was writing to a flat byte array and ran out of space.", paramThrowable);
  }
}

/* Location:
 * Qualified Name:     lvr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */