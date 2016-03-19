.class final Lhco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhb;


# instance fields
.field final synthetic a:Lhci;


# direct methods
.method constructor <init>(Lhci;)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lhco;->a:Lhci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 1566
    iget-object v0, p0, Lhco;->a:Lhci;

    .line 2423
    iget-object v0, v0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->c()Z

    move-result v0

    .line 1566
    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lhco;->a:Lhci;

    .line 3121
    iget-object v0, v0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    .line 1567
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->handleApiaryResponse(J[B)V

    .line 1571
    :goto_0
    return-void

    .line 1569
    :cond_0
    const-string v0, "vclib"

    const-string v1, "LibjingleRequestListener.onRequestError: not initialized"

    .line 4089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1562
    return-void
.end method

.method public a(J[B)V
    .locals 3

    .prologue
    .line 1575
    iget-object v0, p0, Lhco;->a:Lhci;

    .line 4423
    iget-object v0, v0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->c()Z

    move-result v0

    .line 1575
    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lhco;->a:Lhci;

    .line 5121
    iget-object v0, v0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    .line 1576
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->handleApiaryResponse(J[B)V

    .line 1580
    :goto_0
    return-void

    .line 1578
    :cond_0
    const-string v0, "vclib"

    const-string v1, "LibjingleRequestListener.onRequestCompleted: not initialized"

    .line 6089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
