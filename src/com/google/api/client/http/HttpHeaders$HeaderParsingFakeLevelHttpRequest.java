package com.google.api.client.http;

class HttpHeaders$HeaderParsingFakeLevelHttpRequest
  extends LowLevelHttpRequest
{
  private final HttpHeaders.ParseHeaderState state;
  private final HttpHeaders target;
  
  HttpHeaders$HeaderParsingFakeLevelHttpRequest(HttpHeaders paramHttpHeaders, HttpHeaders.ParseHeaderState paramParseHeaderState)
  {
    target = paramHttpHeaders;
    state = paramParseHeaderState;
  }
  
  public void addHeader(String paramString1, String paramString2)
  {
    target.parseHeader(paramString1, paramString2, state);
  }
  
  public LowLevelHttpResponse execute()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpHeaders.HeaderParsingFakeLevelHttpRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */