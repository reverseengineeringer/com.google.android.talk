public class dot
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final int a;
  
  public dot(int paramInt)
  {
    a = paramInt;
    if (ezi.a("Babel_RequestWriter", 3)) {
      ezi.b("Babel_RequestWriter", "declineAllInvitesRequest constructor", new Object[0]);
    }
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    if (ezi.a("Babel_RequestWriter", 3)) {
      ezi.b("Babel_RequestWriter", "declineAllInvitesRequest build protobuf", new Object[0]);
    }
    jyh localjyh = new jyh();
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    paramString = new jyi();
    b = Integer.valueOf(a);
    a = new jyi[1];
    a[0] = paramString;
    return localjyh;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    super.a(parambfd, paramdvn);
  }
  
  public String f()
  {
    return "conversations/declineallinvites";
  }
  
  public int l()
  {
    return 4;
  }
}

/* Location:
 * Qualified Name:     dot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */