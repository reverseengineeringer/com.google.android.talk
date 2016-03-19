.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$5;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 792
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$5;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$900(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 793
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$5;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mPointCloud:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;
    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$900(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud;->waveManager:Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 794
    return-void
.end method
