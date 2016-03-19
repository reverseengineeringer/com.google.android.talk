.class public final Lgcq;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfzr;


# direct methods
.method public constructor <init>(Lfzr;Lfib;Lfic;)V
    .locals 1

    iput-object p1, p0, Lgcq;->a:Lfzr;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lfir;-><init>(Lfib;Lfic;B)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 2

    .prologue
    .line 2000
    new-instance v0, Lfzs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lfzs;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lfzz;

    .line 1000
    invoke-virtual {p1}, Lfzz;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lgcs;

    new-instance v1, Lgcr;

    invoke-direct {v1, p0, p0}, Lgcr;-><init>(Lgcq;Lfis;)V

    invoke-interface {v0, v1}, Lgcs;->a(Lfzt;)V

    .line 0
    return-void
.end method
