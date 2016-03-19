.class public final Laag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laao;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laao;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laao;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Landroid/support/v7/widget/RecyclerView;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laao;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Laaf;

.field private h:Laak;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 4184
    iput-object p1, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    .line 4186
    const/4 v0, 0x0

    iput-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    .line 4188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    .line 4190
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laag;->e:Ljava/util/List;

    .line 4193
    const/4 v0, 0x2

    iput v0, p0, Laag;->f:I

    return-void
.end method

.method private a(IZ)Laao;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 4802
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 4805
    :goto_0
    if-ge v2, v3, :cond_2

    .line 4806
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4807
    invoke-virtual {v0}, Laao;->g()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Laao;->d()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v0}, Laao;->j()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 38343
    iget-boolean v4, v4, Laam;->f:Z

    .line 4807
    if-nez v4, :cond_0

    invoke-virtual {v0}, Laao;->m()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4815
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Laao;->b(I)V

    .line 4857
    :goto_1
    return-object v0

    .line 4805
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 4821
    :cond_2
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Lya;

    invoke-virtual {v0, p1, v5}, Lya;->a(II)Landroid/view/View;

    move-result-object v2

    .line 4822
    if-eqz v2, :cond_4

    .line 4825
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 4826
    iget-object v1, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Lya;

    invoke-virtual {v1, v2}, Lya;->f(Landroid/view/View;)V

    .line 4827
    iget-object v1, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Lya;

    invoke-virtual {v1, v2}, Lya;->c(Landroid/view/View;)I

    move-result v1

    .line 4828
    if-ne v1, v5, :cond_3

    .line 4829
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4832
    :cond_3
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->d:Lya;

    invoke-virtual {v3, v1}, Lya;->d(I)V

    .line 4833
    invoke-virtual {p0, v2}, Laag;->c(Landroid/view/View;)V

    .line 4834
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Laao;->b(I)V

    goto :goto_1

    .line 4841
    :cond_4
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4842
    :goto_2
    if-ge v1, v2, :cond_6

    .line 4843
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4846
    invoke-virtual {v0}, Laao;->j()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Laao;->d()I

    move-result v3

    if-ne v3, p1, :cond_5

    .line 4848
    iget-object v2, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4842
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 4857
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(JIZ)Laao;
    .locals 5

    .prologue
    .line 4862
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4863
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 4864
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 38390
    iget-wide v2, v0, Laao;->d:J

    .line 4865
    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Laao;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 38397
    iget v2, v0, Laao;->e:I

    .line 4866
    if-ne p3, v2, :cond_1

    .line 4867
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Laao;->b(I)V

    .line 4868
    invoke-virtual {v0}, Laao;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4877
    iget-object v1, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v1}, Laam;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4878
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Laao;->a(II)V

    .line 4909
    :cond_0
    :goto_1
    return-object v0

    .line 4887
    :cond_1
    iget-object v2, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4888
    iget-object v2, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Laao;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4889
    iget-object v0, v0, Laao;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Laag;->b(Landroid/view/View;)V

    .line 4863
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4895
    :cond_3
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4896
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 4897
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 39390
    iget-wide v2, v0, Laao;->d:J

    .line 4898
    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 39397
    iget v2, v0, Laao;->e:I

    .line 4899
    if-ne p3, v2, :cond_4

    .line 4901
    iget-object v2, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4905
    :cond_4
    invoke-direct {p0, v1}, Laag;->d(I)V

    .line 4896
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 4909
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 4532
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 4533
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4534
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4535
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Laag;->a(Landroid/view/ViewGroup;Z)V

    .line 4532
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4538
    :cond_1
    if-nez p2, :cond_2

    .line 4550
    :goto_1
    return-void

    .line 4542
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 4543
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4544
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4546
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 4547
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4548
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(Laao;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4681
    iget-object v0, p1, Laao;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lks;->a(Landroid/view/View;Lii;)V

    .line 27913
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)La;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27914
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;)La;

    .line 27916
    :cond_0
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 28144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 27916
    if-eqz v0, :cond_1

    .line 27917
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 29144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 27919
    :cond_1
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    if-eqz v0, :cond_2

    .line 27920
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Labg;

    invoke-virtual {v0, p1}, Labg;->e(Laao;)V

    .line 4683
    :cond_2
    iput-object v1, p1, Laao;->o:Landroid/support/v7/widget/RecyclerView;

    .line 4684
    invoke-direct {p0}, Laag;->i()Laaf;

    move-result-object v0

    invoke-virtual {v0, p1}, Laaf;->a(Laao;)V

    .line 4685
    return-void
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 4609
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4613
    invoke-direct {p0, v0}, Laag;->c(Laao;)V

    .line 4614
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4615
    return-void
.end method

.method private e(I)Laao;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 4764
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 4789
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 4768
    :goto_1
    if-ge v3, v4, :cond_3

    .line 4769
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4770
    invoke-virtual {v0}, Laao;->g()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Laao;->d()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 4771
    invoke-virtual {v0, v10}, Laao;->b(I)V

    goto :goto_0

    .line 4768
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4776
    :cond_3
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 35144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 35314
    iget-boolean v0, v0, Lzu;->b:Z

    .line 4776
    if-eqz v0, :cond_5

    .line 4777
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lzn;

    invoke-virtual {v0, p1}, Lzn;->b(I)I

    move-result v0

    .line 4778
    if-lez v0, :cond_5

    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 36144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 4778
    invoke-virtual {v3}, Lzu;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 4779
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 37144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 4779
    invoke-virtual {v3, v0}, Lzu;->b(I)J

    move-result-wide v6

    .line 4780
    :goto_2
    if-ge v2, v4, :cond_5

    .line 4781
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4782
    invoke-virtual {v0}, Laao;->g()Z

    move-result v3

    if-nez v3, :cond_4

    .line 37390
    iget-wide v8, v0, Laao;->d:J

    .line 4782
    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 4783
    invoke-virtual {v0, v10}, Laao;->b(I)V

    goto :goto_0

    .line 4780
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 4789
    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 4587
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4588
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4589
    invoke-direct {p0, v0}, Laag;->d(I)V

    .line 4588
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4591
    :cond_0
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4592
    return-void
.end method

.method private i()Laaf;
    .locals 1

    .prologue
    .line 5017
    iget-object v0, p0, Laag;->g:Laaf;

    if-nez v0, :cond_0

    .line 5018
    new-instance v0, Laaf;

    invoke-direct {v0}, Laaf;-><init>()V

    iput-object v0, p0, Laag;->g:Laaf;

    .line 5020
    :cond_0
    iget-object v0, p0, Laag;->g:Laaf;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .prologue
    .line 4338
    if-ltz p1, :cond_0

    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v0}, Laam;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4339
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v2}, Laam;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4342
    :cond_1
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v0}, Laam;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4345
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lzn;

    invoke-virtual {v0, p1}, Lzn;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 4206
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4207
    invoke-direct {p0}, Laag;->h()V

    .line 4208
    return-void
.end method

.method public a(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 4933
    if-ge p1, p2, :cond_1

    .line 4936
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    .line 4942
    :goto_0
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 4943
    :goto_1
    if-ge v4, v6, :cond_3

    .line 4944
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4945
    if-eqz v0, :cond_0

    iget v7, v0, Laao;->b:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Laao;->b:I

    if-gt v7, v2, :cond_0

    .line 4948
    iget v7, v0, Laao;->b:I

    if-ne v7, p1, :cond_2

    .line 4949
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Laao;->a(IZ)V

    .line 4943
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 4940
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    .line 4951
    :cond_2
    invoke-virtual {v0, v1, v5}, Laao;->a(IZ)V

    goto :goto_2

    .line 4958
    :cond_3
    return-void
.end method

.method public a(IIZ)V
    .locals 4

    .prologue
    .line 4981
    add-int v2, p1, p2

    .line 4982
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4983
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 4984
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4985
    if-eqz v0, :cond_0

    .line 4986
    invoke-virtual {v0}, Laao;->d()I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 4992
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Laao;->a(IZ)V

    .line 4983
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4993
    :cond_1
    invoke-virtual {v0}, Laao;->d()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 4995
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Laao;->b(I)V

    .line 4996
    invoke-direct {p0, v1}, Laag;->d(I)V

    goto :goto_1

    .line 5000
    :cond_2
    return-void
.end method

.method a(Laao;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4623
    invoke-virtual {p1}, Laao;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Laao;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4624
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Laao;->e()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Laao;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 4630
    :cond_2
    invoke-virtual {p1}, Laao;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4635
    :cond_3
    invoke-virtual {p1}, Laao;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25612
    :cond_4
    iget v2, p1, Laao;->i:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_8

    iget-object v2, p1, Laao;->a:Landroid/view/View;

    .line 25868
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v2}, Llc;->l(Landroid/view/View;)Z

    move-result v2

    .line 25612
    if-eqz v2, :cond_8

    move v2, v0

    .line 4642
    :goto_1
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 26144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 4642
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 27144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 4651
    :cond_5
    invoke-virtual {p1}, Laao;->s()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4652
    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Laao;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 4655
    iget-object v3, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4656
    iget v4, p0, Laag;->f:I

    if-ne v3, v4, :cond_6

    if-lez v3, :cond_6

    .line 4657
    invoke-direct {p0, v1}, Laag;->d(I)V

    .line 4659
    :cond_6
    iget v4, p0, Laag;->f:I

    if-ge v3, v4, :cond_a

    .line 4660
    iget-object v3, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v0

    .line 4664
    :goto_2
    if-nez v3, :cond_9

    .line 4665
    invoke-direct {p0, p1}, Laag;->c(Laao;)V

    move v1, v0

    move v0, v3

    .line 4674
    :goto_3
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->e:Labg;

    invoke-virtual {v3, p1}, Labg;->e(Laao;)V

    .line 4675
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 4676
    const/4 v0, 0x0

    iput-object v0, p1, Laao;->o:Landroid/support/v7/widget/RecyclerView;

    .line 4678
    :cond_7
    return-void

    :cond_8
    move v2, v1

    .line 25612
    goto :goto_1

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    move v3, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4565
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 4566
    invoke-virtual {v0}, Laao;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4567
    iget-object v1, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4569
    :cond_0
    invoke-virtual {v0}, Laao;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4570
    invoke-virtual {v0}, Laao;->f()V

    .line 4574
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Laag;->a(Laao;)V

    .line 4575
    return-void

    .line 4571
    :cond_2
    invoke-virtual {v0}, Laao;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4572
    invoke-virtual {v0}, Laao;->h()V

    goto :goto_0
.end method

.method public a(Lzu;Lzu;Z)V
    .locals 2

    .prologue
    .line 4927
    invoke-virtual {p0}, Laag;->a()V

    .line 4928
    invoke-direct {p0}, Laag;->i()Laaf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Laaf;->a(Lzu;Lzu;Z)V

    .line 4929
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x2000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9367
    if-ltz p1, :cond_0

    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v0}, Laam;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 9368
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v2}, Laam;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9374
    :cond_1
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v0}, Laam;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9375
    invoke-direct {p0, p1}, Laag;->e(I)Laao;

    move-result-object v4

    .line 9376
    if-eqz v4, :cond_4

    move v0, v1

    :goto_0
    move-object v11, v4

    move v4, v0

    move-object v0, v11

    .line 9379
    :goto_1
    if-nez v0, :cond_1e

    .line 9380
    invoke-direct {p0, p1, v2}, Laag;->a(IZ)Laao;

    move-result-object v0

    .line 9381
    if-eqz v0, :cond_1e

    .line 10243
    invoke-virtual {v0}, Laao;->m()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10248
    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v5}, Laam;->a()Z

    move-result v5

    .line 9382
    :goto_2
    if-nez v5, :cond_b

    .line 9387
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Laao;->b(I)V

    .line 9388
    invoke-virtual {v0}, Laao;->e()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 9389
    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Laao;->a:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9390
    invoke-virtual {v0}, Laao;->f()V

    .line 9394
    :cond_2
    :goto_3
    invoke-virtual {p0, v0}, Laag;->a(Laao;)V

    move-object v0, v3

    move v3, v4

    .line 9402
    :goto_4
    if-nez v0, :cond_1d

    .line 9403
    iget-object v4, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->c:Lzn;

    invoke-virtual {v4, p1}, Lzn;->b(I)I

    move-result v4

    .line 9404
    if-ltz v4, :cond_3

    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 15144
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 9404
    invoke-virtual {v5}, Lzu;->a()I

    move-result v5

    if-lt v4, v5, :cond_c

    .line 9405
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v2}, Laam;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 9376
    goto :goto_0

    .line 10250
    :cond_5
    iget v5, v0, Laao;->b:I

    if-ltz v5, :cond_6

    iget v5, v0, Laao;->b:I

    iget-object v6, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 11144
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 10250
    invoke-virtual {v6}, Lzu;->a()I

    move-result v6

    if-lt v5, v6, :cond_7

    .line 10251
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10254
    :cond_7
    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v5}, Laam;->a()Z

    move-result v5

    if-nez v5, :cond_8

    .line 10256
    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 12144
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 10256
    iget v6, v0, Laao;->b:I

    invoke-virtual {v5, v6}, Lzu;->a(I)I

    move-result v5

    .line 12397
    iget v6, v0, Laao;->e:I

    .line 10257
    if-eq v5, v6, :cond_8

    move v5, v2

    .line 10258
    goto/16 :goto_2

    .line 10261
    :cond_8
    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 13144
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 13314
    iget-boolean v5, v5, Lzu;->b:Z

    .line 10261
    if-eqz v5, :cond_9

    .line 13390
    iget-wide v6, v0, Laao;->d:J

    .line 10262
    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 14144
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 10262
    iget v8, v0, Laao;->b:I

    invoke-virtual {v5, v8}, Lzu;->b(I)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_9

    move v5, v2

    goto/16 :goto_2

    :cond_9
    move v5, v1

    .line 10264
    goto/16 :goto_2

    .line 9391
    :cond_a
    invoke-virtual {v0}, Laao;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9392
    invoke-virtual {v0}, Laao;->h()V

    goto/16 :goto_3

    :cond_b
    move v3, v1

    .line 9398
    goto/16 :goto_4

    .line 9410
    :cond_c
    iget-object v5, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 16144
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 9410
    invoke-virtual {v5, v4}, Lzu;->a(I)I

    move-result v5

    .line 9412
    iget-object v6, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 17144
    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 17314
    iget-boolean v6, v6, Lzu;->b:Z

    .line 9412
    if-eqz v6, :cond_d

    .line 9413
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 18144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 9413
    invoke-virtual {v0, v4}, Lzu;->b(I)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v5, v2}, Laag;->a(JIZ)Laao;

    move-result-object v0

    .line 9414
    if-eqz v0, :cond_d

    .line 9416
    iput v4, v0, Laao;->b:I

    move v3, v1

    .line 9420
    :cond_d
    if-nez v0, :cond_f

    iget-object v4, p0, Laag;->h:Laak;

    if-eqz v4, :cond_f

    .line 9423
    iget-object v4, p0, Laag;->h:Laak;

    invoke-virtual {v4}, Laak;->e()Landroid/view/View;

    move-result-object v4

    .line 9425
    if-eqz v4, :cond_f

    .line 9426
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Laao;

    move-result-object v0

    .line 9427
    if-nez v0, :cond_e

    .line 9428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9430
    :cond_e
    invoke-virtual {v0}, Laao;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 9431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9437
    :cond_f
    if-nez v0, :cond_11

    .line 9444
    invoke-direct {p0}, Laag;->i()Laaf;

    move-result-object v0

    invoke-virtual {v0, v5}, Laaf;->a(I)Laao;

    move-result-object v4

    .line 9445
    if-eqz v4, :cond_10

    .line 9446
    invoke-virtual {v4}, Laao;->r()V

    .line 19144
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->a:Z

    .line 9447
    if-eqz v0, :cond_10

    .line 19526
    iget-object v0, v4, Laao;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 19527
    iget-object v0, v4, Laao;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Laag;->a(Landroid/view/ViewGroup;Z)V

    :cond_10
    move-object v0, v4

    .line 9452
    :cond_11
    if-nez v0, :cond_1d

    .line 9453
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 20144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 9453
    iget-object v4, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 20227
    const-string v6, "RV CreateView"

    invoke-static {v6}, Laal;->a(Ljava/lang/String;)V

    .line 20228
    invoke-virtual {v0, v4, v5}, Lzu;->a(Landroid/view/ViewGroup;I)Laao;

    move-result-object v0

    .line 20229
    iput v5, v0, Laao;->e:I

    .line 20230
    invoke-static {}, Laal;->b()V

    move-object v4, v0

    move v5, v3

    .line 9463
    :goto_5
    if-eqz v5, :cond_12

    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v0}, Laam;->a()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4, v10}, Laao;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 9465
    invoke-virtual {v4, v2, v10}, Laao;->a(II)V

    .line 9466
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    .line 20343
    iget-boolean v0, v0, Laam;->g:Z

    .line 9466
    if-eqz v0, :cond_12

    .line 9467
    invoke-static {v4}, Lzx;->c(Laao;)I

    .line 9470
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v4}, Laao;->q()Ljava/util/List;

    invoke-virtual {v0, v4}, Lzx;->a(Laao;)Lzz;

    move-result-object v0

    .line 9472
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 21144
    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Laao;Lzz;)V

    .line 9477
    :cond_12
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v0}, Laam;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v4}, Laao;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9479
    iput p1, v4, Laao;->f:I

    move v3, v2

    .line 9495
    :goto_6
    iget-object v0, v4, Laao;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 9497
    if-nez v0, :cond_19

    .line 9498
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 9499
    iget-object v6, v4, Laao;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9506
    :goto_7
    iput-object v4, v0, Laac;->c:Laao;

    .line 9507
    if-eqz v5, :cond_1b

    if-eqz v3, :cond_1b

    :goto_8
    iput-boolean v1, v0, Laac;->f:Z

    .line 9508
    iget-object v0, v4, Laao;->a:Landroid/view/View;

    .line 4363
    return-object v0

    .line 9480
    :cond_13
    invoke-virtual {v4}, Laao;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Laao;->k()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v4}, Laao;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 9485
    :cond_14
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Lzn;

    invoke-virtual {v0, p1}, Lzn;->b(I)I

    move-result v0

    .line 9486
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v4, Laao;->o:Landroid/support/v7/widget/RecyclerView;

    .line 9487
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 22144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 22242
    iput v0, v4, Laao;->b:I

    .line 22314
    iget-boolean v6, v3, Lzu;->b:Z

    .line 22243
    if-eqz v6, :cond_15

    .line 22244
    invoke-virtual {v3, v0}, Lzu;->b(I)J

    move-result-wide v6

    iput-wide v6, v4, Laao;->d:J

    .line 22246
    :cond_15
    const/16 v6, 0x207

    invoke-virtual {v4, v1, v6}, Laao;->a(II)V

    .line 22249
    const-string v6, "RV OnBindView"

    invoke-static {v6}, Laal;->a(Ljava/lang/String;)V

    .line 22250
    invoke-virtual {v4}, Laao;->q()Ljava/util/List;

    invoke-virtual {v3, v4, v0}, Lzu;->b(Laao;I)V

    .line 22251
    invoke-virtual {v4}, Laao;->p()V

    .line 22252
    invoke-static {}, Laal;->b()V

    .line 9488
    iget-object v0, v4, Laao;->a:Landroid/view/View;

    .line 22512
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->q()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 22959
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v0}, Llc;->n(Landroid/view/View;)I

    move-result v3

    .line 22513
    if-nez v3, :cond_16

    .line 22515
    invoke-static {v0, v1}, Lks;->c(Landroid/view/View;I)V

    .line 23856
    :cond_16
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v0}, Llc;->j(Landroid/view/View;)Z

    move-result v3

    .line 22518
    if-nez v3, :cond_17

    .line 22519
    iget-object v3, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 24144
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->y:Laap;

    .line 22519
    invoke-virtual {v3}, Laap;->b()Lii;

    move-result-object v3

    invoke-static {v0, v3}, Lks;->a(Landroid/view/View;Lii;)V

    .line 9490
    :cond_17
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Laam;

    invoke-virtual {v0}, Laam;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 9491
    iput p1, v4, Laao;->f:I

    :cond_18
    move v3, v1

    goto/16 :goto_6

    .line 9500
    :cond_19
    iget-object v6, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 9501
    iget-object v6, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 9502
    iget-object v6, v4, Laao;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 9504
    :cond_1a
    check-cast v0, Laac;

    goto/16 :goto_7

    :cond_1b
    move v1, v2

    .line 9507
    goto/16 :goto_8

    :cond_1c
    move v3, v2

    goto/16 :goto_6

    :cond_1d
    move-object v4, v0

    move v5, v3

    goto/16 :goto_5

    :cond_1e
    move v3, v4

    goto/16 :goto_4

    :cond_1f
    move-object v0, v3

    move v4, v2

    goto/16 :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laao;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4229
    iget-object v0, p0, Laag;->e:Ljava/util/List;

    return-object v0
.end method

.method public b(II)V
    .locals 4

    .prologue
    .line 4961
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4962
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4963
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 4964
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laao;->d()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 4969
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Laao;->a(IZ)V

    .line 4962
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4972
    :cond_1
    return-void
.end method

.method public b(Laao;)V
    .locals 1

    .prologue
    .line 33126
    iget-boolean v0, p1, Laao;->m:Z

    .line 4736
    if-eqz v0, :cond_0

    .line 4737
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34126
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Laao;->l:Laag;

    .line 35126
    const/4 v0, 0x0

    iput-boolean v0, p1, Laao;->m:Z

    .line 4743
    invoke-virtual {p1}, Laao;->h()V

    .line 4744
    return-void

    .line 4739
    :cond_0
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4693
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v0

    .line 30126
    const/4 v1, 0x0

    iput-object v1, v0, Laao;->l:Laag;

    .line 31126
    const/4 v1, 0x0

    iput-boolean v1, v0, Laao;->m:Z

    .line 4696
    invoke-virtual {v0}, Laao;->h()V

    .line 4697
    invoke-virtual {p0, v0}, Laag;->a(Laao;)V

    .line 4698
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 4747
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 4751
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    iget-object v0, v0, Laao;->a:Landroid/view/View;

    return-object v0
.end method

.method public c(II)V
    .locals 4

    .prologue
    .line 5024
    add-int v2, p1, p2

    .line 5025
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5026
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5027
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 5028
    if-eqz v0, :cond_0

    .line 5032
    invoke-virtual {v0}, Laao;->d()I

    move-result v3

    .line 5033
    if-lt v3, p1, :cond_0

    if-ge v3, v2, :cond_0

    .line 5034
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Laao;->b(I)V

    .line 5035
    invoke-direct {p0, v1}, Laag;->d(I)V

    .line 5026
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5040
    :cond_1
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4710
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v3

    .line 4711
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Laao;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Laao;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 31342
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    invoke-virtual {v0, v3}, Lzx;->f(Laao;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 4711
    :goto_0
    if-eqz v0, :cond_4

    .line 4713
    :cond_1
    invoke-virtual {v3}, Laao;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Laao;->m()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 32144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 32314
    iget-boolean v0, v0, Lzu;->b:Z

    .line 4713
    if-nez v0, :cond_3

    .line 4714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 31342
    goto :goto_0

    .line 4718
    :cond_3
    invoke-virtual {v3, p0, v1}, Laao;->a(Laag;Z)V

    .line 4719
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4727
    :goto_1
    return-void

    .line 4721
    :cond_4
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 4722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    .line 4724
    :cond_5
    invoke-virtual {v3, p0, v2}, Laao;->a(Laag;Z)V

    .line 4725
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method d()V
    .locals 1

    .prologue
    .line 4755
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4756
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4757
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4759
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 5053
    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 40144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 5053
    if-eqz v0, :cond_1

    iget-object v0, p0, Laag;->d:Landroid/support/v7/widget/RecyclerView;

    .line 41144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Lzu;

    .line 41314
    iget-boolean v0, v0, Lzu;->b:Z

    .line 5053
    if-eqz v0, :cond_1

    .line 5054
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5055
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 5056
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 5057
    if-eqz v0, :cond_0

    .line 5058
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Laao;->b(I)V

    .line 5059
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Laao;->a(Ljava/lang/Object;)V

    .line 5055
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5064
    :cond_1
    invoke-direct {p0}, Laag;->h()V

    .line 5066
    :cond_2
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5069
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5070
    :goto_0
    if-ge v2, v3, :cond_0

    .line 5071
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 5072
    invoke-virtual {v0}, Laao;->a()V

    .line 5070
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5074
    :cond_0
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5075
    :goto_1
    if-ge v2, v3, :cond_1

    .line 5076
    iget-object v0, p0, Laag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    invoke-virtual {v0}, Laao;->a()V

    .line 5075
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5078
    :cond_1
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5079
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5080
    :goto_2
    if-ge v1, v2, :cond_2

    .line 5081
    iget-object v0, p0, Laag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    invoke-virtual {v0}, Laao;->a()V

    .line 5080
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5084
    :cond_2
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 5087
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5088
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 5089
    iget-object v0, p0, Laag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 5090
    iget-object v0, v0, Laao;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 5091
    if-eqz v0, :cond_0

    .line 5092
    const/4 v3, 0x1

    iput-boolean v3, v0, Laac;->e:Z

    .line 5088
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5095
    :cond_1
    return-void
.end method
