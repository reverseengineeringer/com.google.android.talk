.class public final Lkat;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkat;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljzh;

.field public b:Ljava/lang/Boolean;

.field public c:Lkav;

.field public d:Lkav;

.field public e:Lkav;

.field public f:Lkav;

.field public g:Lkav;

.field public h:Lkav;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27831
    invoke-direct {p0}, Llyb;-><init>()V

    .line 28836
    iput-object v1, p0, Lkat;->responseHeader:Lkdp;

    .line 28837
    invoke-static {}, Ljzh;->d()[Ljzh;

    move-result-object v0

    iput-object v0, p0, Lkat;->a:[Ljzh;

    .line 28838
    iput-object v1, p0, Lkat;->b:Ljava/lang/Boolean;

    .line 28839
    iput-object v1, p0, Lkat;->c:Lkav;

    .line 28840
    iput-object v1, p0, Lkat;->d:Lkav;

    .line 28841
    iput-object v1, p0, Lkat;->e:Lkav;

    .line 28842
    iput-object v1, p0, Lkat;->f:Lkav;

    .line 28843
    iput-object v1, p0, Lkat;->g:Lkav;

    .line 28844
    iput-object v1, p0, Lkat;->h:Lkav;

    .line 28845
    iput-object v1, p0, Lkat;->eD:Llyd;

    .line 28846
    const/4 v0, -0x1

    iput v0, p0, Lkat;->eE:I

    .line 27833
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29940
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29941
    sparse-switch v0, :sswitch_data_0

    .line 29945
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29946
    :sswitch_0
    return-object p0

    .line 29951
    :sswitch_1
    iget-object v0, p0, Lkat;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 29952
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkat;->responseHeader:Lkdp;

    .line 29954
    :cond_1
    iget-object v0, p0, Lkat;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 29958
    :sswitch_2
    const/16 v0, 0x12

    .line 29959
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 29960
    iget-object v0, p0, Lkat;->a:[Ljzh;

    if-nez v0, :cond_3

    move v0, v1

    .line 29961
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzh;

    .line 29963
    if-eqz v0, :cond_2

    .line 29964
    iget-object v3, p0, Lkat;->a:[Ljzh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29966
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 29967
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 29968
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 29969
    invoke-virtual {p1}, Llxy;->a()I

    .line 29966
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29960
    :cond_3
    iget-object v0, p0, Lkat;->a:[Ljzh;

    array-length v0, v0

    goto :goto_1

    .line 29972
    :cond_4
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 29973
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 29974
    iput-object v2, p0, Lkat;->a:[Ljzh;

    goto :goto_0

    .line 29978
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkat;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 29982
    :sswitch_4
    iget-object v0, p0, Lkat;->d:Lkav;

    if-nez v0, :cond_5

    .line 29983
    new-instance v0, Lkav;

    invoke-direct {v0}, Lkav;-><init>()V

    iput-object v0, p0, Lkat;->d:Lkav;

    .line 29985
    :cond_5
    iget-object v0, p0, Lkat;->d:Lkav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 29989
    :sswitch_5
    iget-object v0, p0, Lkat;->e:Lkav;

    if-nez v0, :cond_6

    .line 29990
    new-instance v0, Lkav;

    invoke-direct {v0}, Lkav;-><init>()V

    iput-object v0, p0, Lkat;->e:Lkav;

    .line 29992
    :cond_6
    iget-object v0, p0, Lkat;->e:Lkav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 29996
    :sswitch_6
    iget-object v0, p0, Lkat;->f:Lkav;

    if-nez v0, :cond_7

    .line 29997
    new-instance v0, Lkav;

    invoke-direct {v0}, Lkav;-><init>()V

    iput-object v0, p0, Lkat;->f:Lkav;

    .line 29999
    :cond_7
    iget-object v0, p0, Lkat;->f:Lkav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30003
    :sswitch_7
    iget-object v0, p0, Lkat;->g:Lkav;

    if-nez v0, :cond_8

    .line 30004
    new-instance v0, Lkav;

    invoke-direct {v0}, Lkav;-><init>()V

    iput-object v0, p0, Lkat;->g:Lkav;

    .line 30006
    :cond_8
    iget-object v0, p0, Lkat;->g:Lkav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30010
    :sswitch_8
    iget-object v0, p0, Lkat;->h:Lkav;

    if-nez v0, :cond_9

    .line 30011
    new-instance v0, Lkav;

    invoke-direct {v0}, Lkav;-><init>()V

    iput-object v0, p0, Lkat;->h:Lkav;

    .line 30013
    :cond_9
    iget-object v0, p0, Lkat;->h:Lkav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30017
    :sswitch_9
    iget-object v0, p0, Lkat;->c:Lkav;

    if-nez v0, :cond_a

    .line 30018
    new-instance v0, Lkav;

    invoke-direct {v0}, Lkav;-><init>()V

    iput-object v0, p0, Lkat;->c:Lkav;

    .line 30020
    :cond_a
    iget-object v0, p0, Lkat;->c:Lkav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 29941
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 27853
    iget-object v0, p0, Lkat;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 27854
    const/4 v0, 0x1

    iget-object v1, p0, Lkat;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27856
    :cond_0
    iget-object v0, p0, Lkat;->a:[Ljzh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkat;->a:[Ljzh;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 27857
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkat;->a:[Ljzh;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 27858
    iget-object v1, p0, Lkat;->a:[Ljzh;

    aget-object v1, v1, v0

    .line 27859
    if-eqz v1, :cond_1

    .line 27860
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 27857
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27864
    :cond_2
    iget-object v0, p0, Lkat;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 27865
    const/4 v0, 0x3

    iget-object v1, p0, Lkat;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 27867
    :cond_3
    iget-object v0, p0, Lkat;->d:Lkav;

    if-eqz v0, :cond_4

    .line 27868
    const/4 v0, 0x4

    iget-object v1, p0, Lkat;->d:Lkav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27870
    :cond_4
    iget-object v0, p0, Lkat;->e:Lkav;

    if-eqz v0, :cond_5

    .line 27871
    const/4 v0, 0x5

    iget-object v1, p0, Lkat;->e:Lkav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27873
    :cond_5
    iget-object v0, p0, Lkat;->f:Lkav;

    if-eqz v0, :cond_6

    .line 27874
    const/4 v0, 0x6

    iget-object v1, p0, Lkat;->f:Lkav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27876
    :cond_6
    iget-object v0, p0, Lkat;->g:Lkav;

    if-eqz v0, :cond_7

    .line 27877
    const/4 v0, 0x7

    iget-object v1, p0, Lkat;->g:Lkav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27879
    :cond_7
    iget-object v0, p0, Lkat;->h:Lkav;

    if-eqz v0, :cond_8

    .line 27880
    const/16 v0, 0x8

    iget-object v1, p0, Lkat;->h:Lkav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27882
    :cond_8
    iget-object v0, p0, Lkat;->c:Lkav;

    if-eqz v0, :cond_9

    .line 27883
    const/16 v0, 0x9

    iget-object v1, p0, Lkat;->c:Lkav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27885
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 27886
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 27890
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 27891
    iget-object v1, p0, Lkat;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 27892
    const/4 v1, 0x1

    iget-object v2, p0, Lkat;->responseHeader:Lkdp;

    .line 27893
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27895
    :cond_0
    iget-object v1, p0, Lkat;->a:[Ljzh;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkat;->a:[Ljzh;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 27896
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkat;->a:[Ljzh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 27897
    iget-object v2, p0, Lkat;->a:[Ljzh;

    aget-object v2, v2, v0

    .line 27898
    if-eqz v2, :cond_1

    .line 27899
    const/4 v3, 0x2

    .line 27900
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 27896
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 27904
    :cond_3
    iget-object v1, p0, Lkat;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 27905
    const/4 v1, 0x3

    iget-object v2, p0, Lkat;->b:Ljava/lang/Boolean;

    .line 27906
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 27906
    add-int/2addr v0, v1

    .line 27908
    :cond_4
    iget-object v1, p0, Lkat;->d:Lkav;

    if-eqz v1, :cond_5

    .line 27909
    const/4 v1, 0x4

    iget-object v2, p0, Lkat;->d:Lkav;

    .line 27910
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27912
    :cond_5
    iget-object v1, p0, Lkat;->e:Lkav;

    if-eqz v1, :cond_6

    .line 27913
    const/4 v1, 0x5

    iget-object v2, p0, Lkat;->e:Lkav;

    .line 27914
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27916
    :cond_6
    iget-object v1, p0, Lkat;->f:Lkav;

    if-eqz v1, :cond_7

    .line 27917
    const/4 v1, 0x6

    iget-object v2, p0, Lkat;->f:Lkav;

    .line 27918
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27920
    :cond_7
    iget-object v1, p0, Lkat;->g:Lkav;

    if-eqz v1, :cond_8

    .line 27921
    const/4 v1, 0x7

    iget-object v2, p0, Lkat;->g:Lkav;

    .line 27922
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27924
    :cond_8
    iget-object v1, p0, Lkat;->h:Lkav;

    if-eqz v1, :cond_9

    .line 27925
    const/16 v1, 0x8

    iget-object v2, p0, Lkat;->h:Lkav;

    .line 27926
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27928
    :cond_9
    iget-object v1, p0, Lkat;->c:Lkav;

    if-eqz v1, :cond_a

    .line 27929
    const/16 v1, 0x9

    iget-object v2, p0, Lkat;->c:Lkav;

    .line 27930
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27932
    :cond_a
    return v0
.end method
