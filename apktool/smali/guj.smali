.class final Lguj;
.super Lguh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lguh",
        "<",
        "Lgro;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lfis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<",
            "Lgro;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lguh;-><init>(Lfis;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    new-instance v0, Lgro;

    invoke-direct {v0, p1}, Lgro;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lguj;->a(Ljava/lang/Object;)V

    return-void
.end method
