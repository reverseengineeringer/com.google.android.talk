.class public final Llqf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Llqf;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Llqh;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Llof;

.field public f:Llql;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 651
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1656
    iput-object v0, p0, Llqf;->a:Ljava/lang/Integer;

    .line 1657
    iput-object v0, p0, Llqf;->b:Llqh;

    .line 1658
    iput-object v0, p0, Llqf;->c:Ljava/lang/String;

    .line 1659
    iput-object v0, p0, Llqf;->d:Ljava/lang/String;

    .line 1660
    iput-object v0, p0, Llqf;->e:Llof;

    .line 1661
    iput-object v0, p0, Llqf;->f:Llql;

    .line 1662
    iput-object v0, p0, Llqf;->g:Ljava/lang/Integer;

    .line 1663
    iput-object v0, p0, Llqf;->eD:Llyd;

    .line 1664
    const/4 v0, -0x1

    iput v0, p0, Llqf;->eE:I

    .line 653
    return-void
.end method

.method public static d()[Llqf;
    .locals 2

    .prologue
    .line 617
    sget-object v0, Llqf;->h:[Llqf;

    if-nez v0, :cond_1

    .line 618
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_0
    sget-object v0, Llqf;->h:[Llqf;

    if-nez v0, :cond_0

    .line 621
    const/4 v0, 0x0

    new-array v0, v0, [Llqf;

    sput-object v0, Llqf;->h:[Llqf;

    .line 623
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :cond_1
    sget-object v0, Llqf;->h:[Llqf;

    return-object v0

    .line 623
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1734
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1735
    sparse-switch v0, :sswitch_data_0

    .line 1739
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    :sswitch_0
    return-object p0

    .line 1745
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1746
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1753
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llqf;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1759
    :sswitch_2
    iget-object v0, p0, Llqf;->b:Llqh;

    if-nez v0, :cond_1

    .line 1760
    new-instance v0, Llqh;

    invoke-direct {v0}, Llqh;-><init>()V

    iput-object v0, p0, Llqf;->b:Llqh;

    .line 1762
    :cond_1
    iget-object v0, p0, Llqf;->b:Llqh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1766
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llqf;->c:Ljava/lang/String;

    goto :goto_0

    .line 1770
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llqf;->d:Ljava/lang/String;

    goto :goto_0

    .line 1774
    :sswitch_5
    iget-object v0, p0, Llqf;->e:Llof;

    if-nez v0, :cond_2

    .line 1775
    new-instance v0, Llof;

    invoke-direct {v0}, Llof;-><init>()V

    iput-object v0, p0, Llqf;->e:Llof;

    .line 1777
    :cond_2
    iget-object v0, p0, Llqf;->e:Llof;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1781
    :sswitch_6
    iget-object v0, p0, Llqf;->f:Llql;

    if-nez v0, :cond_3

    .line 1782
    new-instance v0, Llql;

    invoke-direct {v0}, Llql;-><init>()V

    iput-object v0, p0, Llqf;->f:Llql;

    .line 1784
    :cond_3
    iget-object v0, p0, Llqf;->f:Llql;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1788
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llqf;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 1735
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
    .end sparse-switch

    .line 1746
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Llqf;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x1

    iget-object v1, p0, Llqf;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 674
    :cond_0
    iget-object v0, p0, Llqf;->b:Llqh;

    if-eqz v0, :cond_1

    .line 675
    const/4 v0, 0x2

    iget-object v1, p0, Llqf;->b:Llqh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 677
    :cond_1
    iget-object v0, p0, Llqf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 678
    const/4 v0, 0x4

    iget-object v1, p0, Llqf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 680
    :cond_2
    iget-object v0, p0, Llqf;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 681
    const/4 v0, 0x5

    iget-object v1, p0, Llqf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 683
    :cond_3
    iget-object v0, p0, Llqf;->e:Llof;

    if-eqz v0, :cond_4

    .line 684
    const/4 v0, 0x6

    iget-object v1, p0, Llqf;->e:Llof;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 686
    :cond_4
    iget-object v0, p0, Llqf;->f:Llql;

    if-eqz v0, :cond_5

    .line 687
    const/4 v0, 0x7

    iget-object v1, p0, Llqf;->f:Llql;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 689
    :cond_5
    iget-object v0, p0, Llqf;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 690
    const/16 v0, 0x8

    iget-object v1, p0, Llqf;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 692
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 693
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 697
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 698
    iget-object v1, p0, Llqf;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 699
    const/4 v1, 0x1

    iget-object v2, p0, Llqf;->a:Ljava/lang/Integer;

    .line 700
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 702
    :cond_0
    iget-object v1, p0, Llqf;->b:Llqh;

    if-eqz v1, :cond_1

    .line 703
    const/4 v1, 0x2

    iget-object v2, p0, Llqf;->b:Llqh;

    .line 704
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 706
    :cond_1
    iget-object v1, p0, Llqf;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 707
    const/4 v1, 0x4

    iget-object v2, p0, Llqf;->c:Ljava/lang/String;

    .line 708
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 710
    :cond_2
    iget-object v1, p0, Llqf;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 711
    const/4 v1, 0x5

    iget-object v2, p0, Llqf;->d:Ljava/lang/String;

    .line 712
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 714
    :cond_3
    iget-object v1, p0, Llqf;->e:Llof;

    if-eqz v1, :cond_4

    .line 715
    const/4 v1, 0x6

    iget-object v2, p0, Llqf;->e:Llof;

    .line 716
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 718
    :cond_4
    iget-object v1, p0, Llqf;->f:Llql;

    if-eqz v1, :cond_5

    .line 719
    const/4 v1, 0x7

    iget-object v2, p0, Llqf;->f:Llql;

    .line 720
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    :cond_5
    iget-object v1, p0, Llqf;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 723
    const/16 v1, 0x8

    iget-object v2, p0, Llqf;->g:Ljava/lang/Integer;

    .line 724
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_6
    return v0
.end method
