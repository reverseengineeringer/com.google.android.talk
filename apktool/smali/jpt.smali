.class public final Ljpt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Ljpt;


# instance fields
.field public a:Ljpp;

.field public b:[Ljpp;

.field public c:Ljpq;

.field public d:[Ljqe;

.field public e:Ljpv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3680
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4685
    iput-object v1, p0, Ljpt;->a:Ljpp;

    .line 4686
    invoke-static {}, Ljpp;->d()[Ljpp;

    move-result-object v0

    iput-object v0, p0, Ljpt;->b:[Ljpp;

    .line 4687
    iput-object v1, p0, Ljpt;->c:Ljpq;

    .line 4688
    invoke-static {}, Ljqe;->d()[Ljqe;

    move-result-object v0

    iput-object v0, p0, Ljpt;->d:[Ljqe;

    .line 4689
    iput-object v1, p0, Ljpt;->e:Ljpv;

    .line 4690
    iput-object v1, p0, Ljpt;->eD:Llyd;

    .line 4691
    const/4 v0, -0x1

    iput v0, p0, Ljpt;->eE:I

    .line 3682
    return-void
.end method

.method public static d()[Ljpt;
    .locals 2

    .prologue
    .line 3652
    sget-object v0, Ljpt;->f:[Ljpt;

    if-nez v0, :cond_1

    .line 3653
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3655
    :try_start_0
    sget-object v0, Ljpt;->f:[Ljpt;

    if-nez v0, :cond_0

    .line 3656
    const/4 v0, 0x0

    new-array v0, v0, [Ljpt;

    sput-object v0, Ljpt;->f:[Ljpt;

    .line 3658
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3660
    :cond_1
    sget-object v0, Ljpt;->f:[Ljpt;

    return-object v0

    .line 3658
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4767
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4768
    sparse-switch v0, :sswitch_data_0

    .line 4772
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4773
    :sswitch_0
    return-object p0

    .line 4778
    :sswitch_1
    iget-object v0, p0, Ljpt;->a:Ljpp;

    if-nez v0, :cond_1

    .line 4779
    new-instance v0, Ljpp;

    invoke-direct {v0}, Ljpp;-><init>()V

    iput-object v0, p0, Ljpt;->a:Ljpp;

    .line 4781
    :cond_1
    iget-object v0, p0, Ljpt;->a:Ljpp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4785
    :sswitch_2
    const/16 v0, 0x12

    .line 4786
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4787
    iget-object v0, p0, Ljpt;->b:[Ljpp;

    if-nez v0, :cond_3

    move v0, v1

    .line 4788
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljpp;

    .line 4790
    if-eqz v0, :cond_2

    .line 4791
    iget-object v3, p0, Ljpt;->b:[Ljpp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4793
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 4794
    new-instance v3, Ljpp;

    invoke-direct {v3}, Ljpp;-><init>()V

    aput-object v3, v2, v0

    .line 4795
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4796
    invoke-virtual {p1}, Llxy;->a()I

    .line 4793
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4787
    :cond_3
    iget-object v0, p0, Ljpt;->b:[Ljpp;

    array-length v0, v0

    goto :goto_1

    .line 4799
    :cond_4
    new-instance v3, Ljpp;

    invoke-direct {v3}, Ljpp;-><init>()V

    aput-object v3, v2, v0

    .line 4800
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4801
    iput-object v2, p0, Ljpt;->b:[Ljpp;

    goto :goto_0

    .line 4805
    :sswitch_3
    iget-object v0, p0, Ljpt;->c:Ljpq;

    if-nez v0, :cond_5

    .line 4806
    new-instance v0, Ljpq;

    invoke-direct {v0}, Ljpq;-><init>()V

    iput-object v0, p0, Ljpt;->c:Ljpq;

    .line 4808
    :cond_5
    iget-object v0, p0, Ljpt;->c:Ljpq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4812
    :sswitch_4
    const/16 v0, 0x22

    .line 4813
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4814
    iget-object v0, p0, Ljpt;->d:[Ljqe;

    if-nez v0, :cond_7

    move v0, v1

    .line 4815
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljqe;

    .line 4817
    if-eqz v0, :cond_6

    .line 4818
    iget-object v3, p0, Ljpt;->d:[Ljqe;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4820
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 4821
    new-instance v3, Ljqe;

    invoke-direct {v3}, Ljqe;-><init>()V

    aput-object v3, v2, v0

    .line 4822
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4823
    invoke-virtual {p1}, Llxy;->a()I

    .line 4820
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4814
    :cond_7
    iget-object v0, p0, Ljpt;->d:[Ljqe;

    array-length v0, v0

    goto :goto_3

    .line 4826
    :cond_8
    new-instance v3, Ljqe;

    invoke-direct {v3}, Ljqe;-><init>()V

    aput-object v3, v2, v0

    .line 4827
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4828
    iput-object v2, p0, Ljpt;->d:[Ljqe;

    goto/16 :goto_0

    .line 4832
    :sswitch_5
    iget-object v0, p0, Ljpt;->e:Ljpv;

    if-nez v0, :cond_9

    .line 4833
    new-instance v0, Ljpv;

    invoke-direct {v0}, Ljpv;-><init>()V

    iput-object v0, p0, Ljpt;->e:Ljpv;

    .line 4835
    :cond_9
    iget-object v0, p0, Ljpt;->e:Ljpv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4768
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3698
    iget-object v0, p0, Ljpt;->a:Ljpp;

    if-eqz v0, :cond_0

    .line 3699
    const/4 v0, 0x1

    iget-object v2, p0, Ljpt;->a:Ljpp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 3701
    :cond_0
    iget-object v0, p0, Ljpt;->b:[Ljpp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljpt;->b:[Ljpp;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 3702
    :goto_0
    iget-object v2, p0, Ljpt;->b:[Ljpp;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3703
    iget-object v2, p0, Ljpt;->b:[Ljpp;

    aget-object v2, v2, v0

    .line 3704
    if-eqz v2, :cond_1

    .line 3705
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 3702
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3709
    :cond_2
    iget-object v0, p0, Ljpt;->c:Ljpq;

    if-eqz v0, :cond_3

    .line 3710
    const/4 v0, 0x3

    iget-object v2, p0, Ljpt;->c:Ljpq;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 3712
    :cond_3
    iget-object v0, p0, Ljpt;->d:[Ljqe;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljpt;->d:[Ljqe;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 3713
    :goto_1
    iget-object v0, p0, Ljpt;->d:[Ljqe;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 3714
    iget-object v0, p0, Ljpt;->d:[Ljqe;

    aget-object v0, v0, v1

    .line 3715
    if-eqz v0, :cond_4

    .line 3716
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 3713
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3720
    :cond_5
    iget-object v0, p0, Ljpt;->e:Ljpv;

    if-eqz v0, :cond_6

    .line 3721
    const/4 v0, 0x5

    iget-object v1, p0, Ljpt;->e:Ljpv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3723
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3724
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3728
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3729
    iget-object v2, p0, Ljpt;->a:Ljpp;

    if-eqz v2, :cond_0

    .line 3730
    const/4 v2, 0x1

    iget-object v3, p0, Ljpt;->a:Ljpp;

    .line 3731
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3733
    :cond_0
    iget-object v2, p0, Ljpt;->b:[Ljpp;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljpt;->b:[Ljpp;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 3734
    :goto_0
    iget-object v3, p0, Ljpt;->b:[Ljpp;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 3735
    iget-object v3, p0, Ljpt;->b:[Ljpp;

    aget-object v3, v3, v0

    .line 3736
    if-eqz v3, :cond_1

    .line 3737
    const/4 v4, 0x2

    .line 3738
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3734
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3742
    :cond_3
    iget-object v2, p0, Ljpt;->c:Ljpq;

    if-eqz v2, :cond_4

    .line 3743
    const/4 v2, 0x3

    iget-object v3, p0, Ljpt;->c:Ljpq;

    .line 3744
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3746
    :cond_4
    iget-object v2, p0, Ljpt;->d:[Ljqe;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljpt;->d:[Ljqe;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 3747
    :goto_1
    iget-object v2, p0, Ljpt;->d:[Ljqe;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 3748
    iget-object v2, p0, Ljpt;->d:[Ljqe;

    aget-object v2, v2, v1

    .line 3749
    if-eqz v2, :cond_5

    .line 3750
    const/4 v3, 0x4

    .line 3751
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3747
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3755
    :cond_6
    iget-object v1, p0, Ljpt;->e:Ljpv;

    if-eqz v1, :cond_7

    .line 3756
    const/4 v1, 0x5

    iget-object v2, p0, Ljpt;->e:Ljpv;

    .line 3757
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3759
    :cond_7
    return v0
.end method
