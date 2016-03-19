.class public final Lefw;
.super Left;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public final l:I

.field public final m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llyt;Llzp;)V
    .locals 12

    .prologue
    .line 594
    const/4 v2, 0x0

    iget-object v3, p2, Llzp;->f:Ljava/lang/String;

    iget-object v4, p2, Llzp;->c:Ljava/lang/String;

    iget-object v0, p2, Llzp;->j:[Llyt;

    .line 595
    invoke-static {v0}, Lefw;->a([Llyt;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "image/image_search"

    move-object v0, p0

    move-object v1, p1

    .line 594
    invoke-direct/range {v0 .. v6}, Left;-><init>(Llyt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p2, Llzp;->h:Llzf;

    .line 597
    if-eqz v0, :cond_1

    .line 598
    iget-object v1, v0, Llzf;->b:Ljava/lang/Integer;

    .line 5043
    const/4 v2, 0x0

    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 598
    iput v1, p0, Lefw;->l:I

    .line 599
    iget-object v0, v0, Llzf;->c:Ljava/lang/Integer;

    .line 6043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 599
    iput v0, p0, Lefw;->m:I

    .line 605
    :goto_0
    const/4 v2, 0x0

    .line 606
    const/4 v1, 0x0

    .line 607
    iget-object v4, p2, Llzp;->j:[Llyt;

    array-length v5, v4

    const/4 v0, 0x0

    move v11, v0

    move-object v0, v2

    move v2, v1

    move v1, v11

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 608
    iget-object v7, v6, Llyt;->a:[I

    array-length v8, v7

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_0

    aget v9, v7, v3

    .line 609
    const/16 v10, 0x151

    if-ne v9, v10, :cond_2

    .line 610
    sget-object v0, Lmbb;->a:Llyc;

    invoke-virtual {v6, v0}, Llyt;->b(Llyc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmbb;

    .line 611
    if-eqz v0, :cond_2

    .line 612
    const/4 v2, 0x1

    .line 617
    :cond_0
    if-nez v2, :cond_3

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lefw;->l:I

    .line 602
    const/4 v0, 0x0

    iput v0, p0, Lefw;->m:I

    goto :goto_0

    .line 608
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 621
    if-eqz v1, :cond_4

    .line 622
    iget-object v0, v1, Lmbb;->f:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lefw;->p:Ljava/lang/String;

    .line 623
    if-eqz v1, :cond_5

    iget-object v0, v1, Lmbb;->e:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lefw;->o:Ljava/lang/String;

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lefw;->i:Ljava/lang/String;

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lefw;->k:Ljava/lang/String;

    .line 629
    const/4 v0, 0x1

    iput v0, p0, Lefw;->n:I

    .line 630
    return-void

    .line 622
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 623
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public constructor <init>(Llyt;Lmap;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 547
    iget-object v4, p2, Lmap;->i:Ljava/lang/String;

    iget-object v0, p2, Lmap;->p:Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 549
    iget-object v1, p2, Lmap;->i:Ljava/lang/String;

    .line 1572
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v6, v2

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    .line 547
    invoke-direct/range {v0 .. v6}, Left;-><init>(Llyt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p2, Lmap;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lmap;->f:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lefw;->i:Ljava/lang/String;

    .line 553
    iget-object v0, p2, Lmap;->d:Ljava/lang/String;

    iput-object v0, p0, Lefw;->j:Ljava/lang/String;

    .line 554
    iget-object v0, p2, Lmap;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lmap;->e:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lefw;->k:Ljava/lang/String;

    .line 555
    iget-object v0, p2, Lmap;->c:Llzo;

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p2, Lmap;->c:Llzo;

    iget-object v0, v0, Llzo;->k:Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 556
    iput v0, p0, Lefw;->l:I

    .line 557
    iget-object v0, p2, Lmap;->c:Llzo;

    iget-object v0, v0, Llzo;->l:Ljava/lang/Integer;

    .line 4043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 557
    iput v0, p0, Lefw;->m:I

    .line 563
    :goto_3
    const/4 v0, 0x1

    iput v0, p0, Lefw;->n:I

    .line 566
    iput-object v2, p0, Lefw;->p:Ljava/lang/String;

    .line 567
    iput-object v2, p0, Lefw;->o:Ljava/lang/String;

    .line 568
    return-void

    .line 1574
    :pswitch_1
    const-string v0, "image/*"

    invoke-static {v1, v0}, Laen;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1577
    :pswitch_2
    const-string v6, "image/gif"

    goto :goto_0

    .line 1581
    :pswitch_3
    const-string v0, "video/*"

    .line 1582
    invoke-static {v1, v0}, Laen;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2092
    invoke-static {v6}, Laal;->d(Ljava/lang/String;)Z

    move-result v0

    .line 1584
    if-nez v0, :cond_0

    .line 1585
    const-string v6, "video/*"

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 552
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 554
    goto :goto_2

    .line 559
    :cond_3
    iput v7, p0, Lefw;->l:I

    .line 560
    iput v7, p0, Lefw;->m:I

    goto :goto_3

    .line 1572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>([ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 10

    .prologue
    .line 653
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Left;-><init>([ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iput-object p2, p0, Lefw;->i:Ljava/lang/String;

    .line 657
    const/4 v1, 0x0

    iput-object v1, p0, Lefw;->j:Ljava/lang/String;

    .line 658
    const/4 v1, 0x0

    iput-object v1, p0, Lefw;->k:Ljava/lang/String;

    .line 659
    iput p4, p0, Lefw;->l:I

    .line 660
    iput p5, p0, Lefw;->m:I

    .line 661
    move/from16 v0, p7

    iput v0, p0, Lefw;->n:I

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lefw;->p:Ljava/lang/String;

    .line 663
    const/4 v1, 0x0

    iput-object v1, p0, Lefw;->o:Ljava/lang/String;

    .line 664
    return-void
.end method

.method private static a([Llyt;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 633
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, p0, v3

    .line 634
    iget-object v6, v5, Llyt;->a:[I

    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_1

    aget v0, v6, v1

    .line 635
    const/16 v8, 0x151

    if-ne v0, v8, :cond_0

    .line 636
    sget-object v0, Lmbb;->a:Llyc;

    .line 637
    invoke-virtual {v5, v0}, Llyt;->b(Llyc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmbb;

    .line 638
    if-eqz v0, :cond_0

    .line 639
    iget-object v0, v0, Lmbb;->c:Ljava/lang/String;

    .line 644
    :goto_2
    return-object v0

    .line 634
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 633
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 644
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 668
    iget-object v0, p0, Lefw;->b:Ljava/lang/String;

    iget-object v1, p0, Lefw;->c:Ljava/lang/String;

    iget-object v2, p0, Lefw;->i:Ljava/lang/String;

    iget-object v3, p0, Lefw;->j:Ljava/lang/String;

    iget-object v4, p0, Lefw;->f:Ljava/lang/String;

    iget v5, p0, Lefw;->l:I

    iget v6, p0, Lefw;->m:I

    iget-object v7, p0, Lefw;->h:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x6a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " canonicalId "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " photoId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " photoOwnerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imageUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
