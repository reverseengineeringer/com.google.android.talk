final class ihq
{
  String a;
  long b;
  long c;
  long d;
  long e;
  long f;
  long g;
  final hq<String, Long> h = new hq();
  String i;
  public String[] j;
  
  public String toString()
  {
    String str1 = a;
    long l1 = b;
    long l2 = b;
    long l3 = c;
    long l4 = g;
    long l5 = c;
    long l6 = d;
    long l7 = f;
    long l8 = e;
    String str2 = i;
    return String.valueOf(str1).length() + 240 + String.valueOf(str2).length() + "[" + str1 + "], duration: " + l1 + "ms, network: " + (l2 - l3) + "ms, server: " + l4 + "ms, processing: " + l5 + "ms, requests: " + l6 + ", sent: " + l7 + ", received: " + l8 + ", protocol:" + str2;
  }
}

/* Location:
 * Qualified Name:     ihq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */