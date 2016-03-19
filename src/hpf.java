import java.security.Provider;

public class hpf
  extends Provider
{
  public hpf()
  {
    super("LinuxPRNG", 1.0D, "A Linux-specific random number provider that uses /dev/urandom");
    put("SecureRandom.SHA1PRNG", hpe.class.getName());
    put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
  }
}

/* Location:
 * Qualified Name:     hpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */