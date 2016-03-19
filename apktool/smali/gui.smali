.class final Lgui;
.super Lguh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lguh",
        "<",
        "Lgrj;",
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
            "Lgrj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lguh;-><init>(Lfis;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;)V
    .locals 3

    new-instance v0, Lgrj;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;->b:I

    invoke-static {v1}, Laal;->r(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;->c:I

    invoke-direct {v0, v1, v2}, Lgrj;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, v0}, Lgui;->a(Ljava/lang/Object;)V

    return-void
.end method
