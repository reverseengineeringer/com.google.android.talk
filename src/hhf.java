final class hhf
  implements Runnable
{
  hhf(hhe paramhhe) {}
  
  public void run()
  {
    hlk.a(3, "vclib", "Fetching new token...");
    if (a.j != null) {
      a.d.b(a.b, a.j);
    }
    if (a.i != null)
    {
      hlk.a(5, "vclib", "Cancelling prior AuthenticationTask!");
      a.i.cancel(true);
    }
    a.i = new hhg(a);
    a.i.a(new Void[0]);
    aal.a(this, hhe.a);
  }
}

/* Location:
 * Qualified Name:     hhf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */