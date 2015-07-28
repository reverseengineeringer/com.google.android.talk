.class Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;
.super Ljava/lang/Object;
.source "SelfRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/SelfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfRendererInputData"
.end annotation


# instance fields
.field public lastCameraFrameTimeNs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/videochat/SelfRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/videochat/SelfRenderer$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;-><init>()V

    return-void
.end method
