.class final Ldah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxs;


# instance fields
.field final synthetic a:Ldad;


# direct methods
.method constructor <init>(Ldad;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Ldah;->a:Ldad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    iget-object v3, p0, Ldah;->a:Ldad;

    .line 1399
    iget-object v2, v3, Ldad;->c:Laxq;

    invoke-virtual {v2}, Laxq;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Ldad;->c:Laxq;

    .line 1400
    invoke-virtual {v2}, Laxq;->b()I

    move-result v2

    if-lez v2, :cond_2

    .line 1401
    invoke-virtual {v3}, Ldad;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 1402
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ldad;->a()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1403
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1406
    :cond_0
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1407
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v1

    .line 1401
    goto :goto_0

    .line 1409
    :cond_3
    if-nez v2, :cond_1

    .line 2394
    iget-object v2, v3, Ldad;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iget v4, v3, Ldad;->am:I

    if-ne v2, v4, :cond_5

    .line 1409
    :goto_2
    if-nez v0, :cond_1

    .line 1410
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1411
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1413
    :cond_4
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1414
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2394
    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 427
    iget-object v3, p0, Ldah;->a:Ldad;

    .line 3399
    iget-object v2, v3, Ldad;->c:Laxq;

    invoke-virtual {v2}, Laxq;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Ldad;->c:Laxq;

    .line 3400
    invoke-virtual {v2}, Laxq;->b()I

    move-result v2

    if-lez v2, :cond_2

    .line 3401
    invoke-virtual {v3}, Ldad;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 3402
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ldad;->a()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3403
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3404
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3406
    :cond_0
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3407
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v1

    .line 3401
    goto :goto_0

    .line 3409
    :cond_3
    if-nez v2, :cond_1

    .line 4394
    iget-object v2, v3, Ldad;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iget v4, v3, Ldad;->am:I

    if-ne v2, v4, :cond_5

    .line 3409
    :goto_2
    if-nez v0, :cond_1

    .line 3410
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3411
    iget-object v0, v3, Ldad;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3413
    :cond_4
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3414
    iget-object v0, v3, Ldad;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 4394
    goto :goto_2
.end method
