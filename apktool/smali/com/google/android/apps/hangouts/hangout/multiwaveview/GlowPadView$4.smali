.class Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$500(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    # getter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$500(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;)I

    move-result v1

    # invokes: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$600(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    # setter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$502(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;I)I

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    # invokes: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$700(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;ZZ)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView$4;->this$0:Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;

    # setter for: Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;->access$802(Lcom/google/android/apps/hangouts/hangout/multiwaveview/GlowPadView;Z)Z

    .line 205
    return-void
.end method
