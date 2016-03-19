.class public final Lmop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lorg/chromium/net/CronetUrlRequestContext;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetUrlRequestContext;IJI)V
    .locals 1

    .prologue
    .line 406
    iput-object p1, p0, Lmop;->d:Lorg/chromium/net/CronetUrlRequestContext;

    iput p2, p0, Lmop;->a:I

    iput-wide p3, p0, Lmop;->b:J

    iput p5, p0, Lmop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lmop;->d:Lorg/chromium/net/CronetUrlRequestContext;

    .line 1041
    iget-object v1, v0, Lorg/chromium/net/CronetUrlRequestContext;->c:Ljava/lang/Object;

    .line 409
    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lmop;->d:Lorg/chromium/net/CronetUrlRequestContext;

    .line 2041
    iget-object v0, v0, Lorg/chromium/net/CronetUrlRequestContext;->d:Lmnp;

    .line 410
    invoke-virtual {v0}, Lmnp;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
