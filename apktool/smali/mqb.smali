.class final Lmqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic a:Lmpe;

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lmqa;


# direct methods
.method constructor <init>(Lmqa;Lmpe;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lmqb;->c:Lmqa;

    iput-object p2, p0, Lmqb;->a:Lmpe;

    iput-object p3, p0, Lmqb;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lmqb;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    iget-object v1, p0, Lmqb;->c:Lmqa;

    iget-object v1, v1, Lmqa;->j:Lmpe;

    .line 1418
    sget-object v2, Lmqh;->b:Lmqh;

    new-instance v3, Lorg/chromium/net/UrlRequestException;

    const-string v4, "Exception received from UploadDataProvider"

    invoke-direct {v3, v4, v0}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lmpe;->a(Lmqh;Lorg/chromium/net/UrlRequestException;)V

    goto :goto_0
.end method
