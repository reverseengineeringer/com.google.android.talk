.class final Lmph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmpz;

.field final synthetic b:Lmpe;


# direct methods
.method constructor <init>(Lmpe;Lmpz;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lmph;->b:Lmpe;

    iput-object p2, p0, Lmph;->a:Lmpz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 615
    :try_start_0
    iget-object v0, p0, Lmph;->a:Lmpz;

    invoke-interface {v0}, Lmpz;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    iget-object v1, p0, Lmph;->b:Lmpe;

    .line 1418
    sget-object v2, Lmqh;->b:Lmqh;

    new-instance v3, Lorg/chromium/net/UrlRequestException;

    const-string v4, "Exception received from UploadDataProvider"

    invoke-direct {v3, v4, v0}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lmpe;->a(Lmqh;Lorg/chromium/net/UrlRequestException;)V

    goto :goto_0
.end method
