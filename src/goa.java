final class goa
  extends Thread
{
  public goa(gny paramgny)
  {
    super("PeopleAggregator-contacts");
  }
  
  public final void run()
  {
    a.i.a("contacts query start");
    try
    {
      a.a(a.c(), null);
      return;
    }
    catch (Exception localException)
    {
      aal.a("PeopleAggregator", "Error while quering contacts", localException);
      a.a(null, localException);
    }
  }
}

/* Location:
 * Qualified Name:     goa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */