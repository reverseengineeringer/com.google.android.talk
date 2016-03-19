.class public final Lkfk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Long;

.field public c:[Ljyc;

.field public d:Ljava/lang/Boolean;

.field public e:Lkbc;

.field public f:[Ljzh;

.field public g:Ljxc;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13757
    invoke-direct {p0}, Llyb;-><init>()V

    .line 14762
    iput-object v1, p0, Lkfk;->responseHeader:Lkdp;

    .line 14763
    iput-object v1, p0, Lkfk;->a:Ljava/lang/Boolean;

    .line 14764
    iput-object v1, p0, Lkfk;->b:Ljava/lang/Long;

    .line 14765
    invoke-static {}, Ljyc;->d()[Ljyc;

    move-result-object v0

    iput-object v0, p0, Lkfk;->c:[Ljyc;

    .line 14766
    iput-object v1, p0, Lkfk;->d:Ljava/lang/Boolean;

    .line 14767
    iput-object v1, p0, Lkfk;->e:Lkbc;

    .line 14768
    invoke-static {}, Ljzh;->d()[Ljzh;

    move-result-object v0

    iput-object v0, p0, Lkfk;->f:[Ljzh;

    .line 14769
    iput-object v1, p0, Lkfk;->g:Ljxc;

    .line 14770
    iput-object v1, p0, Lkfk;->eD:Llyd;

    .line 14771
    const/4 v0, -0x1

    iput v0, p0, Lkfk;->eE:I

    .line 13759
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 16868
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 16869
    sparse-switch v0, :sswitch_data_0

    .line 16873
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16874
    :sswitch_0
    return-object p0

    .line 16879
    :sswitch_1
    iget-object v0, p0, Lkfk;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 16880
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkfk;->responseHeader:Lkdp;

    .line 16882
    :cond_1
    iget-object v0, p0, Lkfk;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16886
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfk;->b:Ljava/lang/Long;

    goto :goto_0

    .line 16890
    :sswitch_3
    const/16 v0, 0x1a

    .line 16891
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 16892
    iget-object v0, p0, Lkfk;->c:[Ljyc;

    if-nez v0, :cond_3

    move v0, v1

    .line 16893
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljyc;

    .line 16895
    if-eqz v0, :cond_2

    .line 16896
    iget-object v3, p0, Lkfk;->c:[Ljyc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16898
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 16899
    new-instance v3, Ljyc;

    invoke-direct {v3}, Ljyc;-><init>()V

    aput-object v3, v2, v0

    .line 16900
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 16901
    invoke-virtual {p1}, Llxy;->a()I

    .line 16898
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16892
    :cond_3
    iget-object v0, p0, Lkfk;->c:[Ljyc;

    array-length v0, v0

    goto :goto_1

    .line 16904
    :cond_4
    new-instance v3, Ljyc;

    invoke-direct {v3}, Ljyc;-><init>()V

    aput-object v3, v2, v0

    .line 16905
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 16906
    iput-object v2, p0, Lkfk;->c:[Ljyc;

    goto :goto_0

    .line 16910
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkfk;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 16914
    :sswitch_5
    iget-object v0, p0, Lkfk;->e:Lkbc;

    if-nez v0, :cond_5

    .line 16915
    new-instance v0, Lkbc;

    invoke-direct {v0}, Lkbc;-><init>()V

    iput-object v0, p0, Lkfk;->e:Lkbc;

    .line 16917
    :cond_5
    iget-object v0, p0, Lkfk;->e:Lkbc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 16921
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkfk;->a:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 16925
    :sswitch_7
    const/16 v0, 0x3a

    .line 16926
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 16927
    iget-object v0, p0, Lkfk;->f:[Ljzh;

    if-nez v0, :cond_7

    move v0, v1

    .line 16928
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzh;

    .line 16930
    if-eqz v0, :cond_6

    .line 16931
    iget-object v3, p0, Lkfk;->f:[Ljzh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16933
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 16934
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 16935
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 16936
    invoke-virtual {p1}, Llxy;->a()I

    .line 16933
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 16927
    :cond_7
    iget-object v0, p0, Lkfk;->f:[Ljzh;

    array-length v0, v0

    goto :goto_3

    .line 16939
    :cond_8
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 16940
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 16941
    iput-object v2, p0, Lkfk;->f:[Ljzh;

    goto/16 :goto_0

    .line 16945
    :sswitch_8
    iget-object v0, p0, Lkfk;->g:Ljxc;

    if-nez v0, :cond_9

    .line 16946
    new-instance v0, Ljxc;

    invoke-direct {v0}, Ljxc;-><init>()V

    iput-object v0, p0, Lkfk;->g:Ljxc;

    .line 16948
    :cond_9
    iget-object v0, p0, Lkfk;->g:Ljxc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 16869
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13778
    iget-object v0, p0, Lkfk;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 13779
    const/4 v0, 0x1

    iget-object v2, p0, Lkfk;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 13781
    :cond_0
    iget-object v0, p0, Lkfk;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 13782
    const/4 v0, 0x2

    iget-object v2, p0, Lkfk;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 13784
    :cond_1
    iget-object v0, p0, Lkfk;->c:[Ljyc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkfk;->c:[Ljyc;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 13785
    :goto_0
    iget-object v2, p0, Lkfk;->c:[Ljyc;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 13786
    iget-object v2, p0, Lkfk;->c:[Ljyc;

    aget-object v2, v2, v0

    .line 13787
    if-eqz v2, :cond_2

    .line 13788
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 13785
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13792
    :cond_3
    iget-object v0, p0, Lkfk;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 13793
    const/4 v0, 0x4

    iget-object v2, p0, Lkfk;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 13795
    :cond_4
    iget-object v0, p0, Lkfk;->e:Lkbc;

    if-eqz v0, :cond_5

    .line 13796
    const/4 v0, 0x5

    iget-object v2, p0, Lkfk;->e:Lkbc;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 13798
    :cond_5
    iget-object v0, p0, Lkfk;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 13799
    const/4 v0, 0x6

    iget-object v2, p0, Lkfk;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 13801
    :cond_6
    iget-object v0, p0, Lkfk;->f:[Ljzh;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lkfk;->f:[Ljzh;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 13802
    :goto_1
    iget-object v0, p0, Lkfk;->f:[Ljzh;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 13803
    iget-object v0, p0, Lkfk;->f:[Ljzh;

    aget-object v0, v0, v1

    .line 13804
    if-eqz v0, :cond_7

    .line 13805
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 13802
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13809
    :cond_8
    iget-object v0, p0, Lkfk;->g:Ljxc;

    if-eqz v0, :cond_9

    .line 13810
    const/16 v0, 0x8

    iget-object v1, p0, Lkfk;->g:Ljxc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 13812
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 13813
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 13817
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 13818
    iget-object v2, p0, Lkfk;->responseHeader:Lkdp;

    if-eqz v2, :cond_0

    .line 13819
    const/4 v2, 0x1

    iget-object v3, p0, Lkfk;->responseHeader:Lkdp;

    .line 13820
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13822
    :cond_0
    iget-object v2, p0, Lkfk;->b:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 13823
    const/4 v2, 0x2

    iget-object v3, p0, Lkfk;->b:Ljava/lang/Long;

    .line 13824
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13826
    :cond_1
    iget-object v2, p0, Lkfk;->c:[Ljyc;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkfk;->c:[Ljyc;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 13827
    :goto_0
    iget-object v3, p0, Lkfk;->c:[Ljyc;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 13828
    iget-object v3, p0, Lkfk;->c:[Ljyc;

    aget-object v3, v3, v0

    .line 13829
    if-eqz v3, :cond_2

    .line 13830
    const/4 v4, 0x3

    .line 13831
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13827
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 13835
    :cond_4
    iget-object v2, p0, Lkfk;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 13836
    const/4 v2, 0x4

    iget-object v3, p0, Lkfk;->d:Ljava/lang/Boolean;

    .line 13837
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 13837
    add-int/2addr v0, v2

    .line 13839
    :cond_5
    iget-object v2, p0, Lkfk;->e:Lkbc;

    if-eqz v2, :cond_6

    .line 13840
    const/4 v2, 0x5

    iget-object v3, p0, Lkfk;->e:Lkbc;

    .line 13841
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13843
    :cond_6
    iget-object v2, p0, Lkfk;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 13844
    const/4 v2, 0x6

    iget-object v3, p0, Lkfk;->a:Ljava/lang/Boolean;

    .line 13845
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 13845
    add-int/2addr v0, v2

    .line 13847
    :cond_7
    iget-object v2, p0, Lkfk;->f:[Ljzh;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lkfk;->f:[Ljzh;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 13848
    :goto_1
    iget-object v2, p0, Lkfk;->f:[Ljzh;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 13849
    iget-object v2, p0, Lkfk;->f:[Ljzh;

    aget-object v2, v2, v1

    .line 13850
    if-eqz v2, :cond_8

    .line 13851
    const/4 v3, 0x7

    .line 13852
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13848
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13856
    :cond_9
    iget-object v1, p0, Lkfk;->g:Ljxc;

    if-eqz v1, :cond_a

    .line 13857
    const/16 v1, 0x8

    iget-object v2, p0, Lkfk;->g:Ljxc;

    .line 13858
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13860
    :cond_a
    return v0
.end method
