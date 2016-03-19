final class hcj
  implements Runnable
{
  hcj(hci paramhci) {}
  
  public void run()
  {
    throw new IllegalStateException("Call termination timed out");
  }
}

/* Location:
 * Qualified Name:     hcj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */