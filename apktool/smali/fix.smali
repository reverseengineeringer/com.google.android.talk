.class final Lfix;
.super Lgqg;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfiv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfiv;)V
    .locals 1

    invoke-direct {p0}, Lgqg;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfix;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lfix;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfiv;

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v1, v0, Lfiv;->a:Lfjj;

    .line 0
    new-instance v2, Lfiy;

    invoke-direct {v2, p0, v0, v0, p1}, Lfiy;-><init>(Lfix;Lfjs;Lfiv;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lfjj;->a(Lfjo;)V

    goto :goto_0
.end method
