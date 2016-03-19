.class abstract Lgde;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# direct methods
.method constructor <init>(Lfic;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfir;-><init>(Lfic;C)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 1

    .prologue
    .line 1000
    new-instance v0, Lgdf;

    invoke-direct {v0, p0, p1}, Lgdf;-><init>(Lgde;Lcom/google/android/gms/common/api/Status;)V

    .line 0
    return-object v0
.end method
