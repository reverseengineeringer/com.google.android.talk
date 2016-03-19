.class public final Lguz;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/PutDataRequest;

.field final synthetic b:Lgrg;


# direct methods
.method public constructor <init>(Lgrg;Lfic;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 1

    iput-object p1, p0, Lguz;->b:Lgrg;

    iput-object p3, p0, Lguz;->a:Lcom/google/android/gms/wearable/PutDataRequest;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lfir;-><init>(Lfic;S)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 2

    .prologue
    .line 2000
    new-instance v0, Lgrh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgrh;-><init>(Lcom/google/android/gms/common/api/Status;Lgrm;)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lgun;

    .line 1000
    iget-object v0, p0, Lguz;->a:Lcom/google/android/gms/wearable/PutDataRequest;

    invoke-virtual {p1, p0, v0}, Lgun;->a(Lfis;Lcom/google/android/gms/wearable/PutDataRequest;)V

    .line 0
    return-void
.end method
