.class public abstract Lfir;
.super Lfio;

# interfaces
.implements Lfis;
.implements Lfjr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lfim;",
        "A::",
        "Lfia;",
        ">",
        "Lfio",
        "<TR;>;",
        "Lfis",
        "<TR;>;",
        "Lfjr",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lfjq;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfib;Lfic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfib",
            "<TA;>;",
            "Lfic;",
            ")V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfic;

    invoke-interface {v0}, Lfic;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lfio;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfir;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfib;

    iput-object v0, p0, Lfir;->h:Lfib;

    return-void
.end method

.method public constructor <init>(Lfib;Lfic;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 2000
    invoke-direct {p0, p1, p2}, Lfir;-><init>(Lfib;Lfic;)V

    return-void
.end method

.method public constructor <init>(Lfic;)V
    .locals 1

    .prologue
    .line 1000
    sget-object v0, Lfgr;->a:Lfib;

    invoke-direct {p0, v0, p1}, Lfir;-><init>(Lfib;Lfic;)V

    return-void
.end method

.method public constructor <init>(Lfic;B)V
    .locals 1

    .prologue
    .line 4000
    sget-object v0, Lgdj;->a:Lfib;

    .line 3000
    invoke-direct {p0, v0, p1}, Lfir;-><init>(Lfib;Lfic;)V

    return-void
.end method

.method public constructor <init>(Lfic;C)V
    .locals 1

    .prologue
    .line 5000
    sget-object v0, Lglu;->a:Lfib;

    invoke-direct {p0, v0, p1}, Lfir;-><init>(Lfib;Lfic;)V

    return-void
.end method

.method public constructor <init>(Lfic;I)V
    .locals 1

    .prologue
    .line 8000
    sget-object v0, Lfyc;->a:Lfib;

    .line 7000
    invoke-direct {p0, v0, p1}, Lfir;-><init>(Lfib;Lfic;)V

    return-void
.end method

.method public constructor <init>(Lfic;S)V
    .locals 1

    .prologue
    .line 6000
    sget-object v0, Lgry;->k:Lfib;

    invoke-direct {p0, v0, p1}, Lfir;-><init>(Lfib;Lfic;)V

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lfir;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 1

    .prologue
    .line 10000
    invoke-virtual {p0, p1}, Lfir;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lfia;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public a(Lfjq;)V
    .locals 1

    iget-object v0, p0, Lfir;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfim;

    invoke-super {p0, p1}, Lfio;->a(Lfim;)V

    return-void
.end method

.method public final b(Lfia;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lfir;->a(Lfia;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lfir;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lfir;->a(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Laal;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lfir;->a(Lcom/google/android/gms/common/api/Status;)Lfim;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfir;->a(Lfim;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    .prologue
    .line 9000
    return-object p1
.end method

.method protected e()V
    .locals 2

    iget-object v0, p0, Lfir;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfjq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lfjq;->a(Lfjr;)V

    :cond_0
    return-void
.end method

.method public final f()Lfib;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfib",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lfir;->h:Lfib;

    return-object v0
.end method
