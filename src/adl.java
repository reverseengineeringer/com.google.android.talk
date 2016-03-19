import java.io.ByteArrayOutputStream;

final class adl
{
  int a = 0;
  private adm c = null;
  private adm d = null;
  
  adl(adk paramadk) {}
  
  void a()
  {
    if (d != null) {
      throw new RuntimeException("BUG: Invalid newbuf() before copy()");
    }
    adm localadm = new adm();
    a = b.a;
    b = b.b;
    c = c;
    c = localadm;
    a += 1;
    b.a = new ByteArrayOutputStream();
    b.b = 0;
  }
  
  void b()
  {
    ByteArrayOutputStream localByteArrayOutputStream = b.a;
    int i = b.b;
    b.a = c.a;
    b.b = c.b;
    d = c;
    c = c.c;
    a -= 1;
    d.a = localByteArrayOutputStream;
    d.b = i;
  }
  
  void c()
  {
    b.a(d.a.toByteArray(), d.b);
    d = null;
  }
  
  adn d()
  {
    adn localadn = new adn(b);
    a = b.b;
    b = a;
    return localadn;
  }
}

/* Location:
 * Qualified Name:     adl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */