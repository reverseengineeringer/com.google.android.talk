.class public Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->radius:F

    .line 47
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->width:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->alpha:F

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->width:F

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->alpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->alpha:F

    .line 60
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->radius:F

    .line 52
    return-void
.end method
