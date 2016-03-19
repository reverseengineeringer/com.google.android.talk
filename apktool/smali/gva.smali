.class public final Lgva;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgrg;


# direct methods
.method public constructor <init>(Lgrg;Lfic;)V
    .locals 1

    iput-object p1, p0, Lgva;->a:Lgrg;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lfir;-><init>(Lfic;S)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 2

    .prologue
    .line 2000
    new-instance v0, Lgro;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lgro;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 0

    .prologue
    .line 0
    check-cast p1, Lgun;

    .line 1000
    invoke-virtual {p1, p0}, Lgun;->a(Lfis;)V

    .line 0
    return-void
.end method
