.class public final Lyc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 13577
    iput-object p1, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 12668
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 12669
    if-eqz v0, :cond_0

    .line 13530
    iget-object v1, v0, Laao;->a:Landroid/view/View;

    iget v2, v0, Laao;->n:I

    invoke-static {v1, v2}, Lks;->c(Landroid/view/View;I)V

    .line 13532
    const/4 v1, 0x0

    iput v1, v0, Laao;->n:I

    .line 12672
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 8580
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 10591
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 10596
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10597
    if-eqz v0, :cond_0

    .line 10598
    iget-object v1, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    .line 11144
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 10600
    :cond_0
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 10601
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 8585
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 8586
    iget-object v1, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    .line 9689
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    .line 9694
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9695
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9696
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 9697
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9696
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8587
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 12625
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 12626
    if-eqz v0, :cond_1

    .line 12627
    invoke-virtual {v0}, Laao;->n()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Laao;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12628
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called attach on a child which is not detached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12634
    :cond_0
    invoke-virtual {v0}, Laao;->i()V

    .line 12636
    :cond_1
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12637
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 11605
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 11610
    invoke-virtual {p0}, Lyc;->a()I

    move-result v1

    .line 11611
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 11612
    iget-object v2, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lyc;->b(I)Landroid/view/View;

    move-result-object v3

    .line 12144
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 11611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11614
    :cond_0
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 11615
    return-void
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 12641
    invoke-virtual {p0, p1}, Lyc;->b(I)Landroid/view/View;

    move-result-object v0

    .line 12642
    if-eqz v0, :cond_1

    .line 12643
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 12644
    if-eqz v0, :cond_1

    .line 12645
    invoke-virtual {v0}, Laao;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Laao;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12646
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called detach on an already detached child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12652
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Laao;->b(I)V

    .line 12655
    :cond_1
    iget-object v0, p0, Lyc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 12656
    return-void
.end method
