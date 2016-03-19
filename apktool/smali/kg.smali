.class public final Lkg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lri;


# direct methods
.method public constructor <init>(Lri;)V
    .locals 0

    .prologue
    .line 5393
    iput-object p1, p0, Lkg;->a:Lri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lmq;)Lmq;
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3397
    invoke-virtual {p2}, Lmq;->b()I

    move-result v2

    .line 3398
    iget-object v6, p0, Lkg;->a:Lri;

    .line 4570
    iget-object v0, v6, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_d

    .line 4571
    iget-object v0, v6, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_d

    .line 4572
    iget-object v0, v6, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4576
    iget-object v1, v6, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4577
    iget-object v1, v6, Lri;->L:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 4578
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lri;->L:Landroid/graphics/Rect;

    .line 4579
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lri;->M:Landroid/graphics/Rect;

    .line 4581
    :cond_0
    iget-object v1, v6, Lri;->L:Landroid/graphics/Rect;

    .line 4582
    iget-object v5, v6, Lri;->M:Landroid/graphics/Rect;

    .line 4583
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4585
    iget-object v7, v6, Lri;->y:Landroid/view/ViewGroup;

    invoke-static {v7, v1, v5}, Lvz;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4586
    iget v1, v5, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, v2

    .line 4587
    :goto_0
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v5, v1, :cond_c

    .line 4589
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4591
    iget-object v1, v6, Lri;->A:Landroid/view/View;

    if-nez v1, :cond_5

    .line 4592
    new-instance v1, Landroid/view/View;

    iget-object v5, v6, Lri;->a:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lri;->A:Landroid/view/View;

    .line 4593
    iget-object v1, v6, Lri;->A:Landroid/view/View;

    iget-object v5, v6, Lri;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Laal;->B:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4595
    iget-object v1, v6, Lri;->y:Landroid/view/ViewGroup;

    iget-object v5, v6, Lri;->A:Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v4

    .line 4609
    :goto_1
    iget-object v5, v6, Lri;->A:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 4615
    :goto_2
    iget-boolean v5, v6, Lri;->j:Z

    if-nez v5, :cond_b

    if-eqz v4, :cond_b

    move v5, v3

    :goto_3
    move v9, v1

    move v1, v4

    move v4, v5

    move v5, v9

    .line 4625
    :goto_4
    if-eqz v5, :cond_1

    .line 4626
    iget-object v5, v6, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move v0, v1

    move v1, v4

    .line 4630
    :goto_5
    iget-object v4, v6, Lri;->A:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 4631
    iget-object v4, v6, Lri;->A:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_6
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3400
    :cond_2
    if-eq v2, v1, :cond_3

    .line 3401
    invoke-virtual {p2}, Lmq;->a()I

    move-result v0

    invoke-virtual {p2}, Lmq;->c()I

    move-result v2

    invoke-virtual {p2}, Lmq;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lmq;->a(IIII)Lmq;

    move-result-object p2

    .line 4803
    :cond_3
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p1, p2}, Llc;->a(Landroid/view/View;Lmq;)Lmq;

    move-result-object v0

    .line 3409
    return-object v0

    :cond_4
    move v1, v3

    .line 4586
    goto :goto_0

    .line 4599
    :cond_5
    iget-object v1, v6, Lri;->A:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4600
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v2, :cond_6

    .line 4601
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4602
    iget-object v5, v6, Lri;->A:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v4

    goto :goto_1

    :cond_7
    move v4, v3

    .line 4609
    goto :goto_2

    .line 4620
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 4622
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v5, v4

    move v1, v3

    move v4, v2

    goto :goto_4

    .line 4631
    :cond_9
    const/16 v3, 0x8

    goto :goto_6

    :cond_a
    move v5, v3

    move v1, v3

    move v4, v2

    goto :goto_4

    :cond_b
    move v5, v2

    goto :goto_3

    :cond_c
    move v1, v3

    goto :goto_1

    :cond_d
    move v0, v3

    move v1, v2

    goto :goto_5
.end method
