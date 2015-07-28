.class public Lcom/google/android/videochat/Stats$VideoMediaEngineStats;
.super Lcom/google/android/videochat/Stats;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoMediaEngineStats"
.end annotation


# instance fields
.field public receivedFrameHeight:I

.field public receivedFrameWidth:I

.field public receivedFramerate:F

.field public sentFrameHeight:I

.field public sentFrameWidth:I

.field public sentFramerate:F


# direct methods
.method public constructor <init>(FIIFII)V
    .locals 1
    .param p1, "receivedFramerate"    # F
    .param p2, "receivedFrameWidth"    # I
    .param p3, "receivedFrameHeight"    # I
    .param p4, "sentFramerate"    # F
    .param p5, "sentFrameWidth"    # I
    .param p6, "sentFrameHeight"    # I

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/videochat/Stats;-><init>(I)V

    .line 47
    iput p1, p0, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->receivedFramerate:F

    .line 48
    iput p2, p0, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->receivedFrameWidth:I

    .line 49
    iput p3, p0, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->receivedFrameHeight:I

    .line 50
    iput p4, p0, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->sentFramerate:F

    .line 51
    iput p5, p0, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->sentFrameWidth:I

    .line 52
    iput p6, p0, Lcom/google/android/videochat/Stats$VideoMediaEngineStats;->sentFrameHeight:I

    .line 53
    return-void
.end method
