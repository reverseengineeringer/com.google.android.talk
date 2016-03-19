.class Lcom/google/android/libraries/componentview/components/elements/CardComponent$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3$1;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3$1;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->e:Lcom/google/android/libraries/componentview/components/elements/CardComponent;

    .line 1055
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->f:Z

    .line 448
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3$1;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3$1;->a:Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 451
    :cond_0
    return-void
.end method
