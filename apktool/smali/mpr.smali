.class final Lmpr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmpz;

.field final synthetic b:Lmqh;

.field final synthetic c:Lmpe;


# direct methods
.method constructor <init>(Lmpe;Lmpz;Lmqh;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lmpr;->c:Lmpe;

    iput-object p2, p0, Lmpr;->a:Lmpz;

    iput-object p3, p0, Lmpr;->b:Lmqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 589
    :try_start_0
    iget-object v0, p0, Lmpr;->a:Lmpz;

    invoke-interface {v0}, Lmpz;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    iget-object v1, p0, Lmpr;->c:Lmpe;

    iget-object v2, p0, Lmpr;->b:Lmqh;

    .line 1425
    new-instance v3, Lorg/chromium/net/UrlRequestException;

    const-string v4, "System error"

    invoke-direct {v3, v4, v0}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lmpe;->a(Lmqh;Lorg/chromium/net/UrlRequestException;)V

    goto :goto_0
.end method
