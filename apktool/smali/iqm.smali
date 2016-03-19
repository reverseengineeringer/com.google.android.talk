.class Liqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/HttpIOExceptionHandler;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Liqk;

.field private final c:Lcom/google/api/client/http/HttpIOExceptionHandler;

.field private final d:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Liqm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Liqm;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Liqk;Lcom/google/api/client/http/HttpRequest;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Liqk;

    iput-object v0, p0, Liqm;->b:Liqk;

    .line 53
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpRequest;->getIOExceptionHandler()Lcom/google/api/client/http/HttpIOExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Liqm;->c:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 54
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpRequest;->getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-result-object v0

    iput-object v0, p0, Liqm;->d:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/HttpRequest;->setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 57
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 58
    return-void
.end method


# virtual methods
.method public handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Liqm;->c:Lcom/google/api/client/http/HttpIOExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liqm;->c:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 62
    invoke-interface {v0, p1, p2}, Lcom/google/api/client/http/HttpIOExceptionHandler;->handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 66
    :goto_0
    if-eqz v1, :cond_0

    .line 68
    :try_start_0
    iget-object v0, p0, Liqm;->b:Liqk;

    invoke-virtual {v0}, Liqk;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_1
    return v1

    .line 62
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v2, Liqm;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "exception thrown while calling server callback"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Liqm;->d:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Liqm;->d:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 79
    invoke-interface {v0, p1, p2, p3}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 83
    :goto_0
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Liqm;->b:Liqk;

    invoke-virtual {v0}, Liqk;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_1
    return v1

    .line 79
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v2, Liqm;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "exception thrown while calling server callback"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
