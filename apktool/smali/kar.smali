.class public final Lkar;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkar;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcr;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:[I

.field public f:Lkas;

.field public g:Lkas;

.field public h:Lkas;

.field public i:Lkas;

.field public j:Lkas;

.field public k:Lkas;

.field public l:[[B

.field public m:[[B

.field public n:Ljava/lang/Boolean;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25776
    invoke-direct {p0}, Llyb;-><init>()V

    .line 26781
    iput-object v1, p0, Lkar;->requestHeader:Lkdo;

    .line 26782
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Lkar;->a:[Lkcr;

    .line 26783
    iput-object v1, p0, Lkar;->b:Ljava/lang/Integer;

    .line 26784
    iput-object v1, p0, Lkar;->c:Ljava/lang/Boolean;

    .line 26785
    iput-object v1, p0, Lkar;->d:Ljava/lang/Boolean;

    .line 26786
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkar;->e:[I

    .line 26787
    iput-object v1, p0, Lkar;->f:Lkas;

    .line 26788
    iput-object v1, p0, Lkar;->g:Lkas;

    .line 26789
    iput-object v1, p0, Lkar;->h:Lkas;

    .line 26790
    iput-object v1, p0, Lkar;->i:Lkas;

    .line 26791
    iput-object v1, p0, Lkar;->j:Lkas;

    .line 26792
    iput-object v1, p0, Lkar;->k:Lkas;

    .line 26793
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkar;->l:[[B

    .line 26794
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkar;->m:[[B

    .line 26795
    iput-object v1, p0, Lkar;->n:Ljava/lang/Boolean;

    .line 26796
    iput-object v1, p0, Lkar;->eD:Llyd;

    .line 26797
    const/4 v0, -0x1

    iput v0, p0, Lkar;->eE:I

    .line 25778
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 29971
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29972
    sparse-switch v0, :sswitch_data_0

    .line 29976
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29977
    :sswitch_0
    return-object p0

    .line 29982
    :sswitch_1
    iget-object v0, p0, Lkar;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 29983
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkar;->requestHeader:Lkdo;

    .line 29985
    :cond_1
    iget-object v0, p0, Lkar;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 29989
    :sswitch_2
    const/16 v0, 0x12

    .line 29990
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 29991
    iget-object v0, p0, Lkar;->l:[[B

    if-nez v0, :cond_3

    move v0, v1

    .line 29992
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    .line 29993
    if-eqz v0, :cond_2

    .line 29994
    iget-object v3, p0, Lkar;->l:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29996
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 29997
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 29998
    invoke-virtual {p1}, Llxy;->a()I

    .line 29996
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29991
    :cond_3
    iget-object v0, p0, Lkar;->l:[[B

    array-length v0, v0

    goto :goto_1

    .line 30001
    :cond_4
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 30002
    iput-object v2, p0, Lkar;->l:[[B

    goto :goto_0

    .line 30006
    :sswitch_3
    const/16 v0, 0x1a

    .line 30007
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30008
    iget-object v0, p0, Lkar;->m:[[B

    if-nez v0, :cond_6

    move v0, v1

    .line 30009
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    .line 30010
    if-eqz v0, :cond_5

    .line 30011
    iget-object v3, p0, Lkar;->m:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30013
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 30014
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 30015
    invoke-virtual {p1}, Llxy;->a()I

    .line 30013
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 30008
    :cond_6
    iget-object v0, p0, Lkar;->m:[[B

    array-length v0, v0

    goto :goto_3

    .line 30018
    :cond_7
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 30019
    iput-object v2, p0, Lkar;->m:[[B

    goto/16 :goto_0

    .line 30023
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkar;->b:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 30027
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkar;->n:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 30031
    :sswitch_6
    const/16 v0, 0x32

    .line 30032
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30033
    iget-object v0, p0, Lkar;->a:[Lkcr;

    if-nez v0, :cond_9

    move v0, v1

    .line 30034
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 30036
    if-eqz v0, :cond_8

    .line 30037
    iget-object v3, p0, Lkar;->a:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30039
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 30040
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 30041
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30042
    invoke-virtual {p1}, Llxy;->a()I

    .line 30039
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 30033
    :cond_9
    iget-object v0, p0, Lkar;->a:[Lkcr;

    array-length v0, v0

    goto :goto_5

    .line 30045
    :cond_a
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 30046
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30047
    iput-object v2, p0, Lkar;->a:[Lkcr;

    goto/16 :goto_0

    .line 30051
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkar;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 30055
    :sswitch_8
    iget-object v0, p0, Lkar;->g:Lkas;

    if-nez v0, :cond_b

    .line 30056
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    iput-object v0, p0, Lkar;->g:Lkas;

    .line 30058
    :cond_b
    iget-object v0, p0, Lkar;->g:Lkas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30062
    :sswitch_9
    iget-object v0, p0, Lkar;->h:Lkas;

    if-nez v0, :cond_c

    .line 30063
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    iput-object v0, p0, Lkar;->h:Lkas;

    .line 30065
    :cond_c
    iget-object v0, p0, Lkar;->h:Lkas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30069
    :sswitch_a
    iget-object v0, p0, Lkar;->i:Lkas;

    if-nez v0, :cond_d

    .line 30070
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    iput-object v0, p0, Lkar;->i:Lkas;

    .line 30072
    :cond_d
    iget-object v0, p0, Lkar;->i:Lkas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30076
    :sswitch_b
    iget-object v0, p0, Lkar;->j:Lkas;

    if-nez v0, :cond_e

    .line 30077
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    iput-object v0, p0, Lkar;->j:Lkas;

    .line 30079
    :cond_e
    iget-object v0, p0, Lkar;->j:Lkas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30083
    :sswitch_c
    iget-object v0, p0, Lkar;->k:Lkas;

    if-nez v0, :cond_f

    .line 30084
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    iput-object v0, p0, Lkar;->k:Lkas;

    .line 30086
    :cond_f
    iget-object v0, p0, Lkar;->k:Lkas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30090
    :sswitch_d
    iget-object v0, p0, Lkar;->f:Lkas;

    if-nez v0, :cond_10

    .line 30091
    new-instance v0, Lkas;

    invoke-direct {v0}, Lkas;-><init>()V

    iput-object v0, p0, Lkar;->f:Lkas;

    .line 30093
    :cond_10
    iget-object v0, p0, Lkar;->f:Lkas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 30097
    :sswitch_e
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkar;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 30101
    :sswitch_f
    const/16 v0, 0x78

    .line 30102
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 30103
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 30105
    :goto_7
    if-ge v3, v4, :cond_12

    .line 30106
    if-eqz v3, :cond_11

    .line 30107
    invoke-virtual {p1}, Llxy;->a()I

    .line 30109
    :cond_11
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 30110
    packed-switch v6, :pswitch_data_0

    move v0, v2

    .line 30105
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_7

    .line 30114
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_8

    .line 30118
    :cond_12
    if-eqz v2, :cond_0

    .line 30119
    iget-object v0, p0, Lkar;->e:[I

    if-nez v0, :cond_13

    move v0, v1

    .line 30120
    :goto_9
    if-nez v0, :cond_14

    array-length v3, v5

    if-ne v2, v3, :cond_14

    .line 30121
    iput-object v5, p0, Lkar;->e:[I

    goto/16 :goto_0

    .line 30119
    :cond_13
    iget-object v0, p0, Lkar;->e:[I

    array-length v0, v0

    goto :goto_9

    .line 30123
    :cond_14
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 30124
    if-eqz v0, :cond_15

    .line 30125
    iget-object v4, p0, Lkar;->e:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30127
    :cond_15
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30128
    iput-object v3, p0, Lkar;->e:[I

    goto/16 :goto_0

    .line 30134
    :sswitch_10
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 30135
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 30138
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 30139
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_16

    .line 30140
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_a

    .line 30144
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 30148
    :cond_16
    if-eqz v0, :cond_1a

    .line 30149
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 30150
    iget-object v2, p0, Lkar;->e:[I

    if-nez v2, :cond_18

    move v2, v1

    .line 30151
    :goto_b
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 30152
    if-eqz v2, :cond_17

    .line 30153
    iget-object v0, p0, Lkar;->e:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30155
    :cond_17
    :goto_c
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_19

    .line 30156
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 30157
    packed-switch v5, :pswitch_data_2

    goto :goto_c

    .line 30161
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_c

    .line 30150
    :cond_18
    iget-object v2, p0, Lkar;->e:[I

    array-length v2, v2

    goto :goto_b

    .line 30165
    :cond_19
    iput-object v4, p0, Lkar;->e:[I

    .line 30167
    :cond_1a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 29972
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x7a -> :sswitch_10
    .end sparse-switch

    .line 30110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 30140
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 30157
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 25804
    iget-object v0, p0, Lkar;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 25805
    const/4 v0, 0x1

    iget-object v2, p0, Lkar;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 25807
    :cond_0
    iget-object v0, p0, Lkar;->l:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkar;->l:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 25808
    :goto_0
    iget-object v2, p0, Lkar;->l:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 25809
    iget-object v2, p0, Lkar;->l:[[B

    aget-object v2, v2, v0

    .line 25810
    if-eqz v2, :cond_1

    .line 25811
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 25808
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25815
    :cond_2
    iget-object v0, p0, Lkar;->m:[[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkar;->m:[[B

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 25816
    :goto_1
    iget-object v2, p0, Lkar;->m:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 25817
    iget-object v2, p0, Lkar;->m:[[B

    aget-object v2, v2, v0

    .line 25818
    if-eqz v2, :cond_3

    .line 25819
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 25816
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25823
    :cond_4
    iget-object v0, p0, Lkar;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 25824
    const/4 v0, 0x4

    iget-object v2, p0, Lkar;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 25826
    :cond_5
    iget-object v0, p0, Lkar;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 25827
    const/4 v0, 0x5

    iget-object v2, p0, Lkar;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 25829
    :cond_6
    iget-object v0, p0, Lkar;->a:[Lkcr;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lkar;->a:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 25830
    :goto_2
    iget-object v2, p0, Lkar;->a:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 25831
    iget-object v2, p0, Lkar;->a:[Lkcr;

    aget-object v2, v2, v0

    .line 25832
    if-eqz v2, :cond_7

    .line 25833
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 25830
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25837
    :cond_8
    iget-object v0, p0, Lkar;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 25838
    const/4 v0, 0x7

    iget-object v2, p0, Lkar;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 25840
    :cond_9
    iget-object v0, p0, Lkar;->g:Lkas;

    if-eqz v0, :cond_a

    .line 25841
    const/16 v0, 0x8

    iget-object v2, p0, Lkar;->g:Lkas;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 25843
    :cond_a
    iget-object v0, p0, Lkar;->h:Lkas;

    if-eqz v0, :cond_b

    .line 25844
    const/16 v0, 0x9

    iget-object v2, p0, Lkar;->h:Lkas;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 25846
    :cond_b
    iget-object v0, p0, Lkar;->i:Lkas;

    if-eqz v0, :cond_c

    .line 25847
    const/16 v0, 0xa

    iget-object v2, p0, Lkar;->i:Lkas;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 25849
    :cond_c
    iget-object v0, p0, Lkar;->j:Lkas;

    if-eqz v0, :cond_d

    .line 25850
    const/16 v0, 0xb

    iget-object v2, p0, Lkar;->j:Lkas;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 25852
    :cond_d
    iget-object v0, p0, Lkar;->k:Lkas;

    if-eqz v0, :cond_e

    .line 25853
    const/16 v0, 0xc

    iget-object v2, p0, Lkar;->k:Lkas;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 25855
    :cond_e
    iget-object v0, p0, Lkar;->f:Lkas;

    if-eqz v0, :cond_f

    .line 25856
    const/16 v0, 0xd

    iget-object v2, p0, Lkar;->f:Lkas;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 25858
    :cond_f
    iget-object v0, p0, Lkar;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 25859
    const/16 v0, 0xe

    iget-object v2, p0, Lkar;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 25861
    :cond_10
    iget-object v0, p0, Lkar;->e:[I

    if-eqz v0, :cond_11

    iget-object v0, p0, Lkar;->e:[I

    array-length v0, v0

    if-lez v0, :cond_11

    .line 25862
    :goto_3
    iget-object v0, p0, Lkar;->e:[I

    array-length v0, v0

    if-ge v1, v0, :cond_11

    .line 25863
    const/16 v0, 0xf

    iget-object v2, p0, Lkar;->e:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 25862
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 25866
    :cond_11
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 25867
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 25871
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 25872
    iget-object v1, p0, Lkar;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 25873
    const/4 v1, 0x1

    iget-object v3, p0, Lkar;->requestHeader:Lkdo;

    .line 25874
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25876
    :cond_0
    iget-object v1, p0, Lkar;->l:[[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkar;->l:[[B

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    move v3, v2

    move v4, v2

    .line 25879
    :goto_0
    iget-object v5, p0, Lkar;->l:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 25880
    iget-object v5, p0, Lkar;->l:[[B

    aget-object v5, v5, v1

    .line 25881
    if-eqz v5, :cond_1

    .line 25882
    add-int/lit8 v4, v4, 0x1

    .line 25884
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 25879
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25887
    :cond_2
    add-int/2addr v0, v3

    .line 25888
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 25890
    :cond_3
    iget-object v1, p0, Lkar;->m:[[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lkar;->m:[[B

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 25893
    :goto_1
    iget-object v5, p0, Lkar;->m:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 25894
    iget-object v5, p0, Lkar;->m:[[B

    aget-object v5, v5, v1

    .line 25895
    if-eqz v5, :cond_4

    .line 25896
    add-int/lit8 v4, v4, 0x1

    .line 25898
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 25893
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25901
    :cond_5
    add-int/2addr v0, v3

    .line 25902
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 25904
    :cond_6
    iget-object v1, p0, Lkar;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 25905
    const/4 v1, 0x4

    iget-object v3, p0, Lkar;->b:Ljava/lang/Integer;

    .line 25906
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25908
    :cond_7
    iget-object v1, p0, Lkar;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 25909
    const/4 v1, 0x5

    iget-object v3, p0, Lkar;->n:Ljava/lang/Boolean;

    .line 25910
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25910
    add-int/2addr v0, v1

    .line 25912
    :cond_8
    iget-object v1, p0, Lkar;->a:[Lkcr;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lkar;->a:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v0

    move v0, v2

    .line 25913
    :goto_2
    iget-object v3, p0, Lkar;->a:[Lkcr;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 25914
    iget-object v3, p0, Lkar;->a:[Lkcr;

    aget-object v3, v3, v0

    .line 25915
    if-eqz v3, :cond_9

    .line 25916
    const/4 v4, 0x6

    .line 25917
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v1, v3

    .line 25913
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v1

    .line 25921
    :cond_b
    iget-object v1, p0, Lkar;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 25922
    const/4 v1, 0x7

    iget-object v3, p0, Lkar;->c:Ljava/lang/Boolean;

    .line 25923
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25923
    add-int/2addr v0, v1

    .line 25925
    :cond_c
    iget-object v1, p0, Lkar;->g:Lkas;

    if-eqz v1, :cond_d

    .line 25926
    const/16 v1, 0x8

    iget-object v3, p0, Lkar;->g:Lkas;

    .line 25927
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25929
    :cond_d
    iget-object v1, p0, Lkar;->h:Lkas;

    if-eqz v1, :cond_e

    .line 25930
    const/16 v1, 0x9

    iget-object v3, p0, Lkar;->h:Lkas;

    .line 25931
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25933
    :cond_e
    iget-object v1, p0, Lkar;->i:Lkas;

    if-eqz v1, :cond_f

    .line 25934
    const/16 v1, 0xa

    iget-object v3, p0, Lkar;->i:Lkas;

    .line 25935
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25937
    :cond_f
    iget-object v1, p0, Lkar;->j:Lkas;

    if-eqz v1, :cond_10

    .line 25938
    const/16 v1, 0xb

    iget-object v3, p0, Lkar;->j:Lkas;

    .line 25939
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25941
    :cond_10
    iget-object v1, p0, Lkar;->k:Lkas;

    if-eqz v1, :cond_11

    .line 25942
    const/16 v1, 0xc

    iget-object v3, p0, Lkar;->k:Lkas;

    .line 25943
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25945
    :cond_11
    iget-object v1, p0, Lkar;->f:Lkas;

    if-eqz v1, :cond_12

    .line 25946
    const/16 v1, 0xd

    iget-object v3, p0, Lkar;->f:Lkas;

    .line 25947
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25949
    :cond_12
    iget-object v1, p0, Lkar;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    .line 25950
    const/16 v1, 0xe

    iget-object v3, p0, Lkar;->d:Ljava/lang/Boolean;

    .line 25951
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25951
    add-int/2addr v0, v1

    .line 25953
    :cond_13
    iget-object v1, p0, Lkar;->e:[I

    if-eqz v1, :cond_15

    iget-object v1, p0, Lkar;->e:[I

    array-length v1, v1

    if-lez v1, :cond_15

    move v1, v2

    .line 25955
    :goto_3
    iget-object v3, p0, Lkar;->e:[I

    array-length v3, v3

    if-ge v2, v3, :cond_14

    .line 25956
    iget-object v3, p0, Lkar;->e:[I

    aget v3, v3, v2

    .line 25958
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 25955
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 25960
    :cond_14
    add-int/2addr v0, v1

    .line 25961
    iget-object v1, p0, Lkar;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 25963
    :cond_15
    return v0
.end method
