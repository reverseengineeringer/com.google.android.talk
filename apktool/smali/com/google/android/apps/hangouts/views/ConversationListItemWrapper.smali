.class public Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcrq;


# instance fields
.field public a:Landroid/view/View;

.field final b:Ljava/lang/Runnable;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->c:I

    .line 25
    new-instance v0, Lfbk;

    invoke-direct {v0, p0}, Lfbk;-><init>(Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->b:Ljava/lang/Runnable;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v3, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->e:Landroid/view/View;

    if-gez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->f:Landroid/view/View;

    if-lez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    return-void

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    :cond_1
    move v1, v2

    .line 198
    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    sget v0, Laen;->bg:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->a:Landroid/view/View;

    .line 51
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->a:Landroid/view/View;

    instance-of v0, v0, Lfan;

    return v0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->b:Ljava/lang/Runnable;

    .line 1182
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->getMeasuredHeight()I

    move-result v1

    .line 1183
    const-string v2, "animatedHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v4, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1184
    new-instance v2, Laxc;

    invoke-direct {v2, v4}, Laxc;-><init>(B)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1185
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1096
    new-instance v2, Lfbl;

    invoke-direct {v2, p0, v0}, Lfbl;-><init>(Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1112
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 70
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->a:Landroid/view/View;

    return-object v0
.end method

.method public f()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->c:I

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->setAlpha(F)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->d()V

    .line 90
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    sget v0, Laen;->bd:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->d:Landroid/view/View;

    .line 44
    sget v0, Laen;->be:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->e:Landroid/view/View;

    .line 45
    sget v0, Laen;->bf:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->f:Landroid/view/View;

    .line 46
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 210
    iget v0, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->setMeasuredDimension(II)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAnimatedHeight(I)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->c:I

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->requestLayout()V

    .line 192
    return-void
.end method
