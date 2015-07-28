package com.google.android.talk.videochat;

public class JingleStanzaSender$IQ
{
  String extension;
  String from;
  String id;
  String to;
  String type;
  
  public JingleStanzaSender$IQ(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    id = paramString1;
    from = paramString2;
    to = paramString3;
    type = paramString4;
    extension = paramString5;
  }
  
  public String getExtension()
  {
    return extension;
  }
  
  public String getFrom()
  {
    return from;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getTo()
  {
    return to;
  }
  
  public String getType()
  {
    return type;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.JingleStanzaSender.IQ
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */