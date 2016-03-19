.class public Lfzs;
.super Ljava/lang/Object;

# interfaces
.implements Lfim;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/Status;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;)V
    .locals 0

    .prologue
    .line 4000
    invoke-direct {p0, p1, p2}, Lfzs;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzs;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lfzs;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/herrevad/PredictedNetworkQuality;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lfzs;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

    return-object v0
.end method

.method public j()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 3000
    iget-object v0, p0, Lfzs;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
