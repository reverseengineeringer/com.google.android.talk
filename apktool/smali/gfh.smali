.class public final Lgfh;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lgfq;


# direct methods
.method protected constructor <init>(Lgfq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfq;

    iput-object v0, p0, Lgfh;->a:Lgfq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lgjh;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lgfh;->a:Lgfq;

    invoke-interface {v0, p1}, Lgfq;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lgka;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lgjh;

    invoke-direct {v0, v1}, Lgjh;-><init>(Lgka;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
