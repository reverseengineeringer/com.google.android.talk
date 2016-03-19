.class public final Lbxn;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lbxn;->a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lbxn;->a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 1018
    iget-object v0, v0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->c:Landroid/animation/Animator;

    .line 36
    if-eq v0, p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lbxn;->a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 2018
    iput-boolean v2, v0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->b:Z

    .line 41
    iget-object v0, p0, Lbxn;->a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    iget-object v1, p0, Lbxn;->a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 3018
    iget v1, v1, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->d:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lbxn;->a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 4018
    iput-boolean v2, v0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->a:Z

    .line 43
    iget-object v0, p0, Lbxn;->a:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 5018
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->c:Landroid/animation/Animator;

    goto :goto_0
.end method
