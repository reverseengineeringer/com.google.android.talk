.class final Lhwr;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lhwp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhwp;)V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 390
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhwr;->a:Ljava/lang/ref/WeakReference;

    .line 391
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0, v2}, Lhwr;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const-wide/16 v0, 0x320

    invoke-virtual {p0, v2, v0, v1}, Lhwr;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhwr;->removeMessages(I)V

    .line 401
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 405
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lhwr;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhwp;

    .line 407
    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0}, Lhwp;->c()V

    .line 411
    :cond_0
    return-void
.end method
