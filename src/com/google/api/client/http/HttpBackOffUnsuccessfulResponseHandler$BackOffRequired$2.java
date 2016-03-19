package com.google.api.client.http;

final class HttpBackOffUnsuccessfulResponseHandler$BackOffRequired$2
  implements HttpBackOffUnsuccessfulResponseHandler.BackOffRequired
{
  public boolean isRequired(HttpResponse paramHttpResponse)
  {
    return paramHttpResponse.getStatusCode() / 100 == 5;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */