.class final Lhgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Liqi;

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Liqi;I)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lhgx;->a:Ljava/lang/String;

    iput-object p2, p0, Lhgx;->b:Ljava/lang/String;

    iput-object p3, p0, Lhgx;->c:Liqi;

    iput p4, p0, Lhgx;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 3

    .prologue
    .line 336
    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    const-string v2, "X-Auth-Time"

    iget-object v0, p0, Lhgx;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lhgx;->a:Ljava/lang/String;

    .line 337
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lhgx;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lhgx;->c:Liqi;

    invoke-virtual {v0, p1}, Liqi;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 343
    :cond_0
    iget v0, p0, Lhgx;->d:I

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 344
    iget v0, p0, Lhgx;->d:I

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 346
    :cond_1
    return-void

    .line 338
    :cond_2
    const-string v0, "none"

    goto :goto_0
.end method
