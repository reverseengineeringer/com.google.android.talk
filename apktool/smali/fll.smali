.class public final Lfll;
.super Lfld;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfld;"
    }
.end annotation


# instance fields
.field final synthetic e:Lflc;


# direct methods
.method public constructor <init>(Lflc;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lfll;->e:Lflc;

    invoke-direct {p0, p1, p2, p3}, Lfld;-><init>(Lflc;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lfll;->e:Lflc;

    invoke-static {v0}, Lflc;->a(Lflc;)Lfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lfig;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lfll;->e:Lflc;

    invoke-virtual {v0}, Lflc;->g()V

    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lfll;->e:Lflc;

    invoke-static {v0}, Lflc;->a(Lflc;)Lfig;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lfig;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
