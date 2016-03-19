.class final Laem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Laej;


# direct methods
.method constructor <init>(Laej;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Laem;->a:Laej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Laem;->a:Laej;

    .line 1072
    iget-object v0, v0, Laej;->c:Laen;

    .line 414
    if-eqz v0, :cond_0

    .line 1367
    iget-object v1, v0, Laen;->h:Ljava/lang/String;

    iget v2, v0, Laen;->i:I

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 415
    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 419
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 2072
    const/4 v1, 0x0

    invoke-static {p1, v1}, Laej;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    .line 2374
    iget v2, v0, Laen;->i:I

    iget-object v0, v0, Laen;->h:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    return-void
.end method
