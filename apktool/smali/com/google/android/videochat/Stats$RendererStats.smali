.class public Lcom/google/android/videochat/Stats$RendererStats;
.super Lcom/google/android/videochat/Stats;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererStats"
.end annotation


# instance fields
.field public incomingVideoDroppedFramerate:F

.field public incomingVideoFramerate:F

.field public incomingVideoRenderedFramerate:F

.field public rendererFramerate:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "rendererFramerate"    # F
    .param p2, "incomingVideoFramerate"    # F
    .param p3, "incomingVideoRenderedFramerate"    # F
    .param p4, "incomingVideoDroppedFramerate"    # F

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/videochat/Stats;-><init>(I)V

    .line 27
    iput p1, p0, Lcom/google/android/videochat/Stats$RendererStats;->rendererFramerate:F

    .line 28
    iput p2, p0, Lcom/google/android/videochat/Stats$RendererStats;->incomingVideoFramerate:F

    .line 29
    iput p3, p0, Lcom/google/android/videochat/Stats$RendererStats;->incomingVideoRenderedFramerate:F

    .line 30
    iput p4, p0, Lcom/google/android/videochat/Stats$RendererStats;->incomingVideoDroppedFramerate:F

    .line 31
    return-void
.end method
