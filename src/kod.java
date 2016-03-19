import java.util.Random;

final class kod
  extends Random
{
  private static final long serialVersionUID = 898001275432099254L;
  private boolean a = false;
  
  public void setSeed(long paramLong)
  {
    if (a) {
      throw new UnsupportedOperationException("Setting the seed on the shared Random object is not permitted");
    }
    super.setSeed(paramLong);
  }
}

/* Location:
 * Qualified Name:     kod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */