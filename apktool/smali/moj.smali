.class public final Lmoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/chromium/net/CronetUrlRequest;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetUrlRequest;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lmoj;->a:Lorg/chromium/net/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lmoj;->a:Lorg/chromium/net/CronetUrlRequest;

    .line 1042
    iget-object v1, v0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    .line 635
    monitor-enter v1

    .line 636
    :try_start_0
    iget-object v0, p0, Lmoj;->a:Lorg/chromium/net/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/CronetUrlRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    monitor-exit v1

    .line 649
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lmoj;->a:Lorg/chromium/net/CronetUrlRequest;

    .line 2042
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/net/CronetUrlRequest;->a(Z)V

    .line 642
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :try_start_1
    iget-object v0, p0, Lmoj;->a:Lorg/chromium/net/CronetUrlRequest;

    .line 3042
    iget-object v0, v0, Lorg/chromium/net/CronetUrlRequest;->e:Lorg/chromium/net/UrlRequest$Callback;

    .line 644
    iget-object v1, p0, Lmoj;->a:Lorg/chromium/net/CronetUrlRequest;

    .line 4042
    iget-object v1, v1, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    .line 644
    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Callback;->a(Lorg/chromium/net/UrlResponseInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    const-string v1, "ChromiumNetwork"

    const-string v2, "Exception in onComplete method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
