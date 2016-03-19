.class public final Lafj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laez;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private j:Z

.field private k:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput p8, p0, Lafj;->h:I

    .line 508
    iput-object p1, p0, Lafj;->a:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lafj;->b:Ljava/lang/String;

    .line 510
    iput-object p3, p0, Lafj;->c:Ljava/lang/String;

    .line 511
    iput-object p4, p0, Lafj;->d:Ljava/lang/String;

    .line 512
    iput-object p5, p0, Lafj;->e:Ljava/lang/String;

    .line 513
    iput-object p6, p0, Lafj;->f:Ljava/lang/String;

    .line 514
    iput-object p7, p0, Lafj;->g:Ljava/lang/String;

    .line 515
    iput-object p9, p0, Lafj;->i:Ljava/lang/String;

    .line 516
    iput-boolean p10, p0, Lafj;->j:Z

    .line 517
    iput p11, p0, Lafj;->k:I

    .line 518
    return-void
.end method

.method public static a(Ljava/util/List;ILjava/lang/String;ZI)Lafj;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lafj;"
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x7

    new-array v7, v0, [Ljava/lang/String;

    .line 527
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 528
    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    .line 529
    const/4 v0, 0x7

    move v1, v0

    .line 537
    :goto_0
    const/4 v0, 0x0

    .line 538
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 539
    aput-object v0, v7, v2

    .line 540
    add-int/lit8 v0, v2, 0x1

    if-lt v0, v1, :cond_1

    .line 544
    :goto_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 545
    add-int/lit8 v2, v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v7, v0

    move v0, v2

    goto :goto_2

    .line 548
    :cond_0
    new-instance v0, Lafj;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    const/4 v6, 0x5

    aget-object v6, v7, v6

    const/4 v8, 0x6

    aget-object v7, v7, v8

    move v8, p1

    move-object v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lafj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lafb;
    .locals 1

    .prologue
    .line 686
    sget-object v0, Lafb;->d:Lafb;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lafj;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lafj;->b:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-object v6, p0, Lafj;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lafj;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lafj;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lafj;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lafj;->g:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 599
    invoke-static {p1}, Laet;->e(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 601
    :goto_0
    if-ltz v2, :cond_5

    .line 602
    aget-object v5, v4, v2

    .line 603
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 604
    if-nez v0, :cond_1

    .line 605
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 607
    goto :goto_1

    :cond_2
    move v2, v1

    .line 613
    :goto_2
    if-ge v2, v7, :cond_5

    .line 614
    aget-object v5, v4, v2

    .line 615
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 616
    if-nez v0, :cond_4

    .line 617
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 619
    goto :goto_3

    .line 626
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lafj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lafj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lafj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lafj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 642
    if-ne p0, p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    instance-of v2, p1, Lafj;

    if-nez v2, :cond_2

    move v0, v1

    .line 646
    goto :goto_0

    .line 648
    :cond_2
    check-cast p1, Lafj;

    .line 649
    iget v2, p0, Lafj;->h:I

    iget v3, p1, Lafj;->h:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lafj;->h:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lafj;->i:Ljava/lang/String;

    iget-object v3, p1, Lafj;->i:Ljava/lang/String;

    .line 650
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lafj;->j:Z

    iget-boolean v3, p1, Lafj;->j:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lafj;->a:Ljava/lang/String;

    iget-object v3, p1, Lafj;->a:Ljava/lang/String;

    .line 653
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lafj;->b:Ljava/lang/String;

    iget-object v3, p1, Lafj;->b:Ljava/lang/String;

    .line 654
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lafj;->c:Ljava/lang/String;

    iget-object v3, p1, Lafj;->c:Ljava/lang/String;

    .line 655
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lafj;->d:Ljava/lang/String;

    iget-object v3, p1, Lafj;->d:Ljava/lang/String;

    .line 656
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lafj;->e:Ljava/lang/String;

    iget-object v3, p1, Lafj;->e:Ljava/lang/String;

    .line 657
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lafj;->f:Ljava/lang/String;

    iget-object v3, p1, Lafj;->f:Ljava/lang/String;

    .line 658
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lafj;->g:Ljava/lang/String;

    iget-object v3, p1, Lafj;->g:Ljava/lang/String;

    .line 659
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lafj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lafj;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lafj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x0

    .line 664
    iget v0, p0, Lafj;->h:I

    .line 665
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lafj;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafj;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 666
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lafj;->j:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    .line 668
    new-array v4, v6, [Ljava/lang/String;

    iget-object v2, p0, Lafj;->a:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lafj;->b:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lafj;->c:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lafj;->d:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lafj;->e:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lafj;->f:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lafj;->g:Ljava/lang/String;

    aput-object v3, v4, v2

    move v2, v1

    .line 670
    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v3, v4, v2

    .line 671
    mul-int/lit8 v5, v0, 0x1f

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int v3, v5, v0

    .line 670
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_0
    move v0, v1

    .line 665
    goto :goto_0

    .line 666
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    move v0, v1

    .line 671
    goto :goto_3

    .line 673
    :cond_3
    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lafj;->h:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lafj;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 678
    const-string v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lafj;->h:I

    .line 680
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lafj;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lafj;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lafj;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lafj;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lafj;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lafj;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lafj;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lafj;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lafj;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 678
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
