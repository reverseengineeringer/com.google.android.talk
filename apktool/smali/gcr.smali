.class final Lgcr;
.super Lfzu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfzu;"
    }
.end annotation


# instance fields
.field final synthetic b:Lgcq;


# direct methods
.method constructor <init>(Lgcq;Lfis;)V
    .locals 0

    iput-object p1, p0, Lgcr;->b:Lgcq;

    invoke-direct {p0, p2}, Lfzu;-><init>(Lfis;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;)V
    .locals 2

    iget-object v0, p0, Lfzu;->a:Lfis;

    new-instance v1, Lfzs;

    invoke-direct {v1, p1, p2}, Lfzs;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;)V

    invoke-interface {v0, v1}, Lfis;->a(Ljava/lang/Object;)V

    return-void
.end method
