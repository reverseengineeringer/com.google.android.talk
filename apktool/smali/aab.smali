.class public abstract Laab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field q:Lya;

.field public r:Landroid/support/v7/widget/RecyclerView;

.field s:Laak;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5726
    iput-boolean v0, p0, Laab;->t:Z

    .line 5728
    iput-boolean v0, p0, Laab;->a:Z

    .line 7859
    return-void
.end method

.method private static a(IIIZ)I
    .locals 4

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 6890
    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6894
    if-eqz p3, :cond_2

    .line 6895
    if-ltz p2, :cond_1

    .line 6916
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    .line 6902
    goto :goto_0

    .line 6905
    :cond_2
    if-gez p2, :cond_0

    .line 6908
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    .line 6910
    goto :goto_0

    .line 6911
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 6913
    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 6216
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v1

    .line 6217
    if-nez p3, :cond_0

    invoke-virtual {v1}, Laao;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6219
    :cond_0
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Labg;

    invoke-virtual {v0, v1}, Labg;->c(Laao;)V

    .line 6228
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 6229
    invoke-virtual {v1}, Laao;->g()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Laao;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6230
    :cond_1
    invoke-virtual {v1}, Laao;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6231
    invoke-virtual {v1}, Laao;->f()V

    .line 6235
    :goto_1
    iget-object v2, p0, Laab;->q:Lya;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Lya;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6260
    :cond_2
    :goto_2
    iget-boolean v2, v0, Laac;->f:Z

    if-eqz v2, :cond_3

    .line 6264
    iget-object v1, v1, Laao;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6265
    iput-boolean v4, v0, Laac;->f:Z

    .line 6267
    :cond_3
    return-void

    .line 6226
    :cond_4
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Labg;

    invoke-virtual {v0, v1}, Labg;->d(Laao;)V

    goto :goto_0

    .line 6233
    :cond_5
    invoke-virtual {v1}, Laao;->h()V

    goto :goto_1

    .line 6239
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-ne v2, v3, :cond_9

    .line 6241
    iget-object v2, p0, Laab;->q:Lya;

    invoke-virtual {v2, p1}, Lya;->c(Landroid/view/View;)I

    move-result v2

    .line 6242
    if-ne p2, v5, :cond_7

    .line 6243
    iget-object v3, p0, Laab;->q:Lya;

    invoke-virtual {v3}, Lya;->b()I

    move-result p2

    .line 6245
    :cond_7
    if-ne v2, v5, :cond_8

    .line 6246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6250
    :cond_8
    if-eq v2, p2, :cond_2

    .line 6251
    iget-object v3, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 9144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->h:Laab;

    .line 6251
    invoke-virtual {v3, v2, p2}, Laab;->a(II)V

    goto :goto_2

    .line 6254
    :cond_9
    iget-object v2, p0, Laab;->q:Lya;

    invoke-virtual {v2, p1, p2, v4}, Lya;->a(Landroid/view/View;IZ)V

    .line 6255
    const/4 v2, 0x1

    iput-boolean v2, v0, Laac;->e:Z

    .line 6256
    iget-object v2, p0, Laab;->s:Laak;

    if-eqz v2, :cond_2

    iget-object v2, p0, Laab;->s:Laak;

    invoke-virtual {v2}, Laak;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6257
    iget-object v2, p0, Laab;->s:Laak;

    invoke-virtual {v2, p1}, Laak;->b(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 6599
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 6608
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6655
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 6662
    :cond_0
    :goto_0
    return-object v0

    .line 6658
    :cond_1
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 6659
    if-eqz v1, :cond_0

    iget-object v2, p0, Laab;->q:Lya;

    invoke-virtual {v2, v1}, Lya;->d(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 6662
    goto :goto_0
.end method

.method public D()V
    .locals 1

    .prologue
    .line 7517
    iget-object v0, p0, Laab;->s:Laak;

    if-eqz v0, :cond_0

    .line 7518
    iget-object v0, p0, Laab;->s:Laak;

    invoke-virtual {v0}, Laak;->a()V

    .line 7520
    :cond_0
    return-void
.end method

.method E()Z
    .locals 1

    .prologue
    .line 7809
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILaag;Laam;)I
    .locals 1

    .prologue
    .line 6045
    const/4 v0, 0x0

    return v0
.end method

.method public a(Laag;Laam;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7721
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 14144
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 7721
    if-nez v1, :cond_1

    .line 7724
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Laab;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 15144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 7724
    invoke-virtual {v0}, Lzu;->a()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Laac;
    .locals 1

    .prologue
    .line 6028
    new-instance v0, Laac;

    invoke-direct {v0, p1, p2}, Laac;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Laac;
    .locals 1

    .prologue
    .line 6004
    instance-of v0, p1, Laac;

    if-eqz v0, :cond_0

    .line 6005
    new-instance v0, Laac;

    check-cast p1, Laac;

    invoke-direct {v0, p1}, Laac;-><init>(Laac;)V

    .line 6009
    :goto_0
    return-object v0

    .line 6006
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6007
    new-instance v0, Laac;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Laac;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6009
    :cond_1
    new-instance v0, Laac;

    invoke-direct {v0, p1}, Laac;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 7310
    return-void
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 6478
    invoke-virtual {p0, p1}, Laab;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6479
    if-nez v0, :cond_0

    .line 6480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6483
    :cond_0
    invoke-virtual {p0, p1}, Laab;->e(I)V

    .line 6484
    invoke-virtual {p0, v0, p2}, Laab;->c(Landroid/view/View;I)V

    .line 6485
    return-void
.end method

.method public a(ILaag;)V
    .locals 1

    .prologue
    .line 6533
    invoke-virtual {p0, p1}, Laab;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6534
    invoke-virtual {p0, p1}, Laab;->d(I)V

    .line 6535
    invoke-virtual {p2, v0}, Laag;->a(Landroid/view/View;)V

    .line 6536
    return-void
.end method

.method public a(Laag;)V
    .locals 4

    .prologue
    .line 6755
    invoke-virtual {p0}, Laab;->v()I

    move-result v0

    .line 6756
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6757
    invoke-virtual {p0, v0}, Laab;->f(I)Landroid/view/View;

    move-result-object v1

    .line 9763
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v2

    .line 9764
    invoke-virtual {v2}, Laao;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9770
    invoke-virtual {v2}, Laao;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Laao;->m()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 10144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 10314
    iget-boolean v3, v3, Lzu;->b:Z

    .line 9770
    if-nez v3, :cond_1

    .line 9772
    invoke-virtual {p0, v0}, Laab;->d(I)V

    .line 9773
    invoke-virtual {p1, v2}, Laag;->a(Laao;)V

    .line 6756
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9775
    :cond_1
    invoke-virtual {p0, v0}, Laab;->e(I)V

    .line 9776
    invoke-virtual {p1, v1}, Laag;->c(Landroid/view/View;)V

    goto :goto_1

    .line 6760
    :cond_2
    return-void
.end method

.method public a(Laag;Laam;Landroid/view/View;Lmy;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 7667
    invoke-virtual {p0}, Laab;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Laab;->d(Landroid/view/View;)I

    move-result v0

    .line 7668
    :goto_0
    invoke-virtual {p0}, Laab;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Laab;->d(Landroid/view/View;)I

    move-result v2

    .line 7669
    :goto_1
    invoke-static {v0, v3, v2, v3, v1}, Lnh;->a(IIIIZ)Lnh;

    move-result-object v0

    .line 7672
    invoke-virtual {p4, v0}, Lmy;->b(Ljava/lang/Object;)V

    .line 7673
    return-void

    :cond_0
    move v0, v1

    .line 7667
    goto :goto_0

    :cond_1
    move v2, v1

    .line 7668
    goto :goto_1
.end method

.method public a(Laag;Laam;Lmy;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 7589
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Lks;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Lks;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7591
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lmy;->a(I)V

    .line 7592
    invoke-virtual {p3, v1}, Lmy;->i(Z)V

    .line 7594
    :cond_1
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lks;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lks;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7596
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lmy;->a(I)V

    .line 7597
    invoke-virtual {p3, v1}, Lmy;->i(Z)V

    .line 7599
    :cond_3
    invoke-virtual {p0, p1, p2}, Laab;->a(Laag;Laam;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Laab;->b(Laag;Laam;)I

    move-result v1

    .line 11391
    new-instance v2, Lng;

    .line 12035
    sget-object v3, Lmy;->a:Lnc;

    .line 11391
    invoke-virtual {v3, v0, v1, v4, v4}, Lnc;->a(IIZI)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Lng;-><init>(Ljava/lang/Object;)V

    .line 7605
    invoke-virtual {p3, v2}, Lmy;->a(Ljava/lang/Object;)V

    .line 7606
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 7514
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5731
    if-nez p1, :cond_0

    .line 5732
    iput-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 5733
    iput-object v0, p0, Laab;->q:Lya;

    .line 5739
    :goto_0
    return-void

    .line 5735
    :cond_0
    iput-object p1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 5736
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->d:Lya;

    iput-object v0, p0, Laab;->q:Lya;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Laag;)V
    .locals 0

    .prologue
    .line 5893
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 6171
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Laab;->a(Landroid/view/View;I)V

    .line 6172
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6189
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Laab;->a(Landroid/view/View;IZ)V

    .line 6190
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 6975
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    iget-object v0, v0, Laac;->d:Landroid/graphics/Rect;

    .line 6976
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p5, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 6978
    return-void
.end method

.method public a(Landroid/view/View;ILaac;)V
    .locals 2

    .prologue
    .line 6426
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 6427
    invoke-virtual {v0}, Laao;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6428
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Labg;

    invoke-virtual {v1, v0}, Labg;->c(Laao;)V

    .line 6432
    :goto_0
    iget-object v1, p0, Laab;->q:Lya;

    invoke-virtual {v0}, Laao;->m()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lya;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6436
    return-void

    .line 6430
    :cond_0
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Labg;

    invoke-virtual {v1, v0}, Labg;->d(Laao;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Laag;)V
    .locals 0

    .prologue
    .line 6522
    invoke-virtual {p0, p1}, Laab;->c(Landroid/view/View;)V

    .line 6523
    invoke-virtual {p2, p1}, Laag;->a(Landroid/view/View;)V

    .line 6524
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7046
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7047
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7052
    :goto_0
    return-void

    .line 7050
    :cond_0
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7051
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;Lmy;)V
    .locals 2

    .prologue
    .line 7643
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 7645
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laao;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laab;->q:Lya;

    iget-object v0, v0, Laao;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Lya;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7646
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {p0, v0, v1, p1, p2}, Laab;->a(Laag;Laam;Landroid/view/View;Lmy;)V

    .line 7649
    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 7610
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {p0, p1}, Laab;->b(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7611
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5771
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5772
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5774
    :cond_0
    return-void
.end method

.method a(Lmy;)V
    .locals 2

    .prologue
    .line 7559
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {p0, v0, v1, p1}, Laab;->a(Laag;Laam;Lmy;)V

    .line 7560
    return-void
.end method

.method public a(Laac;)Z
    .locals 1

    .prologue
    .line 5987
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    .prologue
    .line 7174
    invoke-virtual {p0}, Laab;->y()I

    move-result v3

    .line 7175
    invoke-virtual {p0}, Laab;->z()I

    move-result v4

    .line 7176
    invoke-virtual {p0}, Laab;->w()I

    move-result v0

    invoke-virtual {p0}, Laab;->A()I

    move-result v1

    sub-int v5, v0, v1

    .line 7177
    invoke-virtual {p0}, Laab;->x()I

    move-result v0

    invoke-virtual {p0}, Laab;->B()I

    move-result v1

    sub-int v6, v0, v1

    .line 7178
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int v7, v0, v1

    .line 7179
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v0, v1

    .line 7180
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v9, v7, v0

    .line 7181
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v10, v8, v0

    .line 7183
    const/4 v0, 0x0

    sub-int v1, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7184
    const/4 v0, 0x0

    sub-int v2, v8, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7185
    const/4 v0, 0x0

    sub-int v11, v9, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7186
    const/4 v11, 0x0

    sub-int v6, v10, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 7192
    invoke-virtual {p0}, Laab;->u()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 7193
    if-eqz v0, :cond_1

    :goto_0
    move v1, v0

    .line 7202
    :goto_1
    if-eqz v2, :cond_4

    move v0, v2

    .line 7205
    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 7206
    :cond_0
    if-eqz p4, :cond_5

    .line 7207
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 7211
    :goto_3
    const/4 v0, 0x1

    .line 7213
    :goto_4
    return v0

    .line 7193
    :cond_1
    sub-int v0, v9, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 7196
    :cond_2
    if-eqz v1, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    sub-int v1, v7, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 7202
    :cond_4
    sub-int v0, v8, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 7209
    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_3

    .line 7213
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public b(ILaag;Laam;)I
    .locals 1

    .prologue
    .line 6062
    const/4 v0, 0x0

    return v0
.end method

.method public b(Laag;Laam;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7740
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 16144
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 7740
    if-nez v1, :cond_1

    .line 7743
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Laab;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 17144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 7743
    invoke-virtual {v0}, Lzu;->a()I

    move-result v0

    goto :goto_0
.end method

.method public b(Laam;)I
    .locals 1

    .prologue
    .line 7392
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 6353
    invoke-virtual {p0}, Laab;->v()I

    move-result v2

    .line 6354
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 6355
    invoke-virtual {p0, v1}, Laab;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6356
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v3

    .line 6357
    if-eqz v3, :cond_1

    .line 6360
    invoke-virtual {v3}, Laao;->d()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Laao;->c()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v4}, Laam;->a()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Laao;->m()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6365
    :cond_0
    :goto_1
    return-object v0

    .line 6354
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6365
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 7298
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 7470
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 11144
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 7471
    return-void
.end method

.method public b(Laag;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6790
    invoke-virtual {p1}, Laag;->c()I

    move-result v1

    .line 6792
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6793
    invoke-virtual {p1, v0}, Laag;->c(I)Landroid/view/View;

    move-result-object v2

    .line 6794
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v3

    .line 6795
    invoke-virtual {v3}, Laao;->c()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6803
    invoke-virtual {v3, v5}, Laao;->a(Z)V

    .line 6804
    invoke-virtual {v3}, Laao;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6805
    iget-object v4, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6807
    :cond_0
    iget-object v4, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    if-eqz v4, :cond_1

    .line 6808
    iget-object v4, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    invoke-virtual {v4, v3}, Lzx;->d(Laao;)V

    .line 6810
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Laao;->a(Z)V

    .line 6811
    invoke-virtual {p1, v2}, Laag;->b(Landroid/view/View;)V

    .line 6792
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6813
    :cond_3
    invoke-virtual {p1}, Laag;->d()V

    .line 6814
    if-lez v1, :cond_4

    .line 6815
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 6817
    :cond_4
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;Laag;)V
    .locals 1

    .prologue
    .line 5806
    const/4 v0, 0x0

    iput-boolean v0, p0, Laab;->a:Z

    .line 5807
    invoke-virtual {p0, p1, p2}, Laab;->a(Landroid/support/v7/widget/RecyclerView;Laag;)V

    .line 5808
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 6200
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Laab;->b(Landroid/view/View;I)V

    .line 6201
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Laab;->a(Landroid/view/View;IZ)V

    .line 6213
    return-void
.end method

.method public b(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 7626
    invoke-static {p1}, Lms;->a(Landroid/view/accessibility/AccessibilityEvent;)Lnq;

    move-result-object v1

    .line 7628
    iget-object v2, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 7639
    :cond_0
    :goto_0
    return-void

    .line 7631
    :cond_1
    iget-object v2, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Lks;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Lks;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Lks;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Lks;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lnq;->a(Z)V

    .line 7636
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 12144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 7636
    if-eqz v0, :cond_0

    .line 7637
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 13144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 7637
    invoke-virtual {v0}, Lzu;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lnq;->a(I)V

    goto :goto_0

    .line 7631
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7222
    invoke-virtual {p0}, Laab;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Laam;)I
    .locals 1

    .prologue
    .line 7437
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 7320
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 6095
    return-void
.end method

.method public c(Laag;)V
    .locals 2

    .prologue
    .line 7549
    invoke-virtual {p0}, Laab;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7550
    invoke-virtual {p0, v0}, Laab;->f(I)Landroid/view/View;

    move-result-object v1

    .line 7551
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v1

    invoke-virtual {v1}, Laao;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7552
    invoke-virtual {p0, v0, p1}, Laab;->a(ILaag;)V

    .line 7549
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7555
    :cond_1
    return-void
.end method

.method public c(Laag;Laam;)V
    .locals 2

    .prologue
    .line 5956
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5957
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 6278
    iget-object v0, p0, Laab;->q:Lya;

    invoke-virtual {v0, p1}, Lya;->b(Landroid/view/View;)V

    .line 6279
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6447
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    invoke-virtual {p0, p1, p2, v0}, Laab;->a(Landroid/view/View;ILaac;)V

    .line 6448
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 7244
    invoke-virtual {p0, p1}, Laab;->b(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    return v0
.end method

.method public d(Laam;)I
    .locals 1

    .prologue
    .line 7377
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6326
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    invoke-virtual {v0}, Laac;->e()I

    move-result v0

    return v0
.end method

.method public d(ILaag;Laam;)Landroid/view/View;
    .locals 1

    .prologue
    .line 7134
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 7346
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 6290
    invoke-virtual {p0, p1}, Laab;->f(I)Landroid/view/View;

    move-result-object v0

    .line 6291
    if-eqz v0, :cond_0

    .line 6292
    iget-object v0, p0, Laab;->q:Lya;

    invoke-virtual {v0, p1}, Lya;->a(I)V

    .line 6294
    :cond_0
    return-void
.end method

.method public e(Laam;)I
    .locals 1

    .prologue
    .line 7422
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 7362
    return-void
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 6406
    invoke-virtual {p0, p1}, Laab;->f(I)Landroid/view/View;

    .line 9413
    iget-object v0, p0, Laab;->q:Lya;

    invoke-virtual {v0, p1}, Lya;->d(I)V

    .line 6407
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 6860
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 6862
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 6863
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x0

    .line 6864
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x0

    .line 6866
    invoke-virtual {p0}, Laab;->w()I

    move-result v3

    invoke-virtual {p0}, Laab;->y()I

    move-result v4

    invoke-virtual {p0}, Laab;->A()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Laac;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Laac;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v0, Laac;->width:I

    invoke-virtual {p0}, Laab;->i()Z

    move-result v5

    invoke-static {v3, v2, v4, v5}, Laab;->a(IIIZ)I

    move-result v2

    .line 6870
    invoke-virtual {p0}, Laab;->x()I

    move-result v3

    invoke-virtual {p0}, Laab;->z()I

    move-result v4

    invoke-virtual {p0}, Laab;->B()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Laac;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Laac;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iget v0, v0, Laac;->height:I

    invoke-virtual {p0}, Laab;->j()Z

    move-result v4

    invoke-static {v3, v1, v0, v4}, Laab;->a(IIIZ)I

    move-result v0

    .line 6874
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 6875
    return-void
.end method

.method public f(Laam;)I
    .locals 1

    .prologue
    .line 7407
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6929
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    iget-object v0, v0, Laac;->d:Landroid/graphics/Rect;

    .line 6930
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract f()Laac;
.end method

.method public f(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6554
    iget-object v0, p0, Laab;->q:Lya;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->q:Lya;

    invoke-virtual {v0, p1}, Lya;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Laam;)I
    .locals 1

    .prologue
    .line 7452
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    iget-object v0, v0, Laac;->d:Landroid/graphics/Rect;

    .line 6944
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 6687
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6688
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->f(I)V

    .line 6690
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 5797
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 6989
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Laab;->n(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 7508
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 6699
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6700
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->e(I)V

    .line 6702
    :cond_0
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7001
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Laab;->l(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 6072
    const/4 v0, 0x0

    return v0
.end method

.method i(I)Z
    .locals 1

    .prologue
    .line 7762
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {p0, p1}, Laab;->j(I)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7013
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Laab;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 6082
    const/4 v0, 0x0

    return v0
.end method

.method public j(I)Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7778
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 7804
    :cond_0
    :goto_0
    return v1

    .line 7782
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 7800
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 7803
    :cond_2
    iget-object v1, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 7804
    goto :goto_0

    .line 7784
    :sswitch_0
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v4}, Lks;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7785
    invoke-virtual {p0}, Laab;->x()I

    move-result v0

    invoke-virtual {p0}, Laab;->z()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Laab;->B()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 7787
    :goto_2
    iget-object v3, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4}, Lks;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7788
    invoke-virtual {p0}, Laab;->w()I

    move-result v3

    invoke-virtual {p0}, Laab;->y()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Laab;->A()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    .line 7792
    :sswitch_1
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Lks;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7793
    invoke-virtual {p0}, Laab;->x()I

    move-result v0

    invoke-virtual {p0}, Laab;->z()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Laab;->B()I

    move-result v3

    sub-int/2addr v0, v3

    .line 7795
    :goto_3
    iget-object v3, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Lks;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7796
    invoke-virtual {p0}, Laab;->w()I

    move-result v3

    invoke-virtual {p0}, Laab;->y()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Laab;->A()I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 7782
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public k(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7025
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Laab;->m(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    iget-object v0, v0, Laac;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7081
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    iget-object v0, v0, Laac;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7096
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    iget-object v0, v0, Laac;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7111
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    iget-object v0, v0, Laac;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 5745
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5746
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5748
    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 5801
    const/4 v0, 0x1

    iput-boolean v0, p0, Laab;->a:Z

    .line 5803
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 6129
    iget-object v0, p0, Laab;->s:Laak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->s:Laak;

    invoke-virtual {v0}, Laak;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()I
    .locals 2

    .prologue
    .line 6142
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    .line 8174
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->u(Landroid/view/View;)I

    move-result v0

    .line 6142
    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 6545
    iget-object v0, p0, Laab;->q:Lya;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->q:Lya;

    invoke-virtual {v0}, Lya;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 6563
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 6572
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 6581
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 6590
    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laab;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
