.class public final Lmci;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmci;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile F:[Lmci;


# instance fields
.field public A:Ljava/lang/Float;

.field public B:Ljava/lang/Float;

.field public C:Ljava/lang/Float;

.field public D:Ljava/lang/Float;

.field public E:[B

.field public a:Lmcj;

.field public b:Lmcj;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:[Lmcl;

.field public f:[Lmck;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/Float;

.field public k:Ljava/lang/Float;

.field public l:Ljava/lang/Float;

.field public m:Ljava/lang/Float;

.field public n:Ljava/lang/Float;

.field public o:Ljava/lang/Float;

.field public p:Ljava/lang/Float;

.field public q:Ljava/lang/Float;

.field public r:Ljava/lang/Float;

.field public s:Ljava/lang/Float;

.field public t:Ljava/lang/Float;

.field public u:Ljava/lang/Float;

.field public v:Ljava/lang/Float;

.field public w:Ljava/lang/Float;

.field public x:Ljava/lang/Float;

.field public y:Ljava/lang/Float;

.field public z:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    invoke-direct {p0}, Llyb;-><init>()V

    .line 785
    iput-object v1, p0, Lmci;->a:Lmcj;

    .line 786
    iput-object v1, p0, Lmci;->b:Lmcj;

    .line 787
    iput-object v1, p0, Lmci;->c:Ljava/lang/Integer;

    .line 788
    iput-object v1, p0, Lmci;->d:Ljava/lang/Integer;

    .line 789
    invoke-static {}, Lmcl;->d()[Lmcl;

    move-result-object v0

    iput-object v0, p0, Lmci;->e:[Lmcl;

    .line 790
    invoke-static {}, Lmck;->d()[Lmck;

    move-result-object v0

    iput-object v0, p0, Lmci;->f:[Lmck;

    .line 791
    iput-object v1, p0, Lmci;->g:Ljava/lang/Float;

    .line 792
    iput-object v1, p0, Lmci;->h:Ljava/lang/Float;

    .line 793
    iput-object v1, p0, Lmci;->i:Ljava/lang/Float;

    .line 794
    iput-object v1, p0, Lmci;->j:Ljava/lang/Float;

    .line 795
    iput-object v1, p0, Lmci;->k:Ljava/lang/Float;

    .line 796
    iput-object v1, p0, Lmci;->l:Ljava/lang/Float;

    .line 797
    iput-object v1, p0, Lmci;->m:Ljava/lang/Float;

    .line 798
    iput-object v1, p0, Lmci;->n:Ljava/lang/Float;

    .line 799
    iput-object v1, p0, Lmci;->o:Ljava/lang/Float;

    .line 800
    iput-object v1, p0, Lmci;->p:Ljava/lang/Float;

    .line 801
    iput-object v1, p0, Lmci;->q:Ljava/lang/Float;

    .line 802
    iput-object v1, p0, Lmci;->r:Ljava/lang/Float;

    .line 803
    iput-object v1, p0, Lmci;->s:Ljava/lang/Float;

    .line 804
    iput-object v1, p0, Lmci;->t:Ljava/lang/Float;

    .line 805
    iput-object v1, p0, Lmci;->u:Ljava/lang/Float;

    .line 806
    iput-object v1, p0, Lmci;->v:Ljava/lang/Float;

    .line 807
    iput-object v1, p0, Lmci;->w:Ljava/lang/Float;

    .line 808
    iput-object v1, p0, Lmci;->x:Ljava/lang/Float;

    .line 809
    iput-object v1, p0, Lmci;->y:Ljava/lang/Float;

    .line 810
    iput-object v1, p0, Lmci;->z:Ljava/lang/Float;

    .line 811
    iput-object v1, p0, Lmci;->A:Ljava/lang/Float;

    .line 812
    iput-object v1, p0, Lmci;->B:Ljava/lang/Float;

    .line 813
    iput-object v1, p0, Lmci;->C:Ljava/lang/Float;

    .line 814
    iput-object v1, p0, Lmci;->D:Ljava/lang/Float;

    .line 815
    iput-object v1, p0, Lmci;->E:[B

    .line 816
    iput-object v1, p0, Lmci;->eD:Llyd;

    .line 817
    const/4 v0, -0x1

    iput v0, p0, Lmci;->eE:I

    .line 818
    return-void
.end method

.method public static d()[Lmci;
    .locals 2

    .prologue
    .line 678
    sget-object v0, Lmci;->F:[Lmci;

    if-nez v0, :cond_1

    .line 679
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    :try_start_0
    sget-object v0, Lmci;->F:[Lmci;

    if-nez v0, :cond_0

    .line 682
    const/4 v0, 0x0

    new-array v0, v0, [Lmci;

    sput-object v0, Lmci;->F:[Lmci;

    .line 684
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_1
    sget-object v0, Lmci;->F:[Lmci;

    return-object v0

    .line 684
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

    .line 25074
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 25075
    sparse-switch v0, :sswitch_data_0

    .line 25079
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25080
    :sswitch_0
    return-object p0

    .line 25085
    :sswitch_1
    iget-object v0, p0, Lmci;->a:Lmcj;

    if-nez v0, :cond_1

    .line 25086
    new-instance v0, Lmcj;

    invoke-direct {v0}, Lmcj;-><init>()V

    iput-object v0, p0, Lmci;->a:Lmcj;

    .line 25088
    :cond_1
    iget-object v0, p0, Lmci;->a:Lmcj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 25092
    :sswitch_2
    iget-object v0, p0, Lmci;->b:Lmcj;

    if-nez v0, :cond_2

    .line 25093
    new-instance v0, Lmcj;

    invoke-direct {v0}, Lmcj;-><init>()V

    iput-object v0, p0, Lmci;->b:Lmcj;

    .line 25095
    :cond_2
    iget-object v0, p0, Lmci;->b:Lmcj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 25099
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmci;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 25103
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmci;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 25107
    :sswitch_5
    const/16 v0, 0x2a

    .line 25108
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 25109
    iget-object v0, p0, Lmci;->e:[Lmcl;

    if-nez v0, :cond_4

    move v0, v1

    .line 25110
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmcl;

    .line 25112
    if-eqz v0, :cond_3

    .line 25113
    iget-object v3, p0, Lmci;->e:[Lmcl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25115
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 25116
    new-instance v3, Lmcl;

    invoke-direct {v3}, Lmcl;-><init>()V

    aput-object v3, v2, v0

    .line 25117
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 25118
    invoke-virtual {p1}, Llxy;->a()I

    .line 25115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25109
    :cond_4
    iget-object v0, p0, Lmci;->e:[Lmcl;

    array-length v0, v0

    goto :goto_1

    .line 25121
    :cond_5
    new-instance v3, Lmcl;

    invoke-direct {v3}, Lmcl;-><init>()V

    aput-object v3, v2, v0

    .line 25122
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 25123
    iput-object v2, p0, Lmci;->e:[Lmcl;

    goto/16 :goto_0

    .line 25127
    :sswitch_6
    const/16 v0, 0x32

    .line 25128
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 25129
    iget-object v0, p0, Lmci;->f:[Lmck;

    if-nez v0, :cond_7

    move v0, v1

    .line 25130
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmck;

    .line 25132
    if-eqz v0, :cond_6

    .line 25133
    iget-object v3, p0, Lmci;->f:[Lmck;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25135
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 25136
    new-instance v3, Lmck;

    invoke-direct {v3}, Lmck;-><init>()V

    aput-object v3, v2, v0

    .line 25137
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 25138
    invoke-virtual {p1}, Llxy;->a()I

    .line 25135
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 25129
    :cond_7
    iget-object v0, p0, Lmci;->f:[Lmck;

    array-length v0, v0

    goto :goto_3

    .line 25141
    :cond_8
    new-instance v3, Lmck;

    invoke-direct {v3}, Lmck;-><init>()V

    aput-object v3, v2, v0

    .line 25142
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 25143
    iput-object v2, p0, Lmci;->f:[Lmck;

    goto/16 :goto_0

    .line 25147
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->g:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25151
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->h:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25155
    :sswitch_9
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->i:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25159
    :sswitch_a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->j:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25163
    :sswitch_b
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->k:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25167
    :sswitch_c
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->l:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25171
    :sswitch_d
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->m:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25175
    :sswitch_e
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->n:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25179
    :sswitch_f
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->o:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25183
    :sswitch_10
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->p:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25187
    :sswitch_11
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->q:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25191
    :sswitch_12
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->r:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25195
    :sswitch_13
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->s:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25199
    :sswitch_14
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->t:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25203
    :sswitch_15
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->u:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25207
    :sswitch_16
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->v:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25211
    :sswitch_17
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->D:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25215
    :sswitch_18
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->w:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25219
    :sswitch_19
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->x:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25223
    :sswitch_1a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->y:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25227
    :sswitch_1b
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->z:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25231
    :sswitch_1c
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->A:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25235
    :sswitch_1d
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->B:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25239
    :sswitch_1e
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmci;->C:Ljava/lang/Float;

    goto/16 :goto_0

    .line 25243
    :sswitch_1f
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmci;->E:[B

    goto/16 :goto_0

    .line 25075
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
        0x6d -> :sswitch_d
        0x75 -> :sswitch_e
        0x7d -> :sswitch_f
        0x85 -> :sswitch_10
        0x8d -> :sswitch_11
        0x95 -> :sswitch_12
        0x9d -> :sswitch_13
        0xa5 -> :sswitch_14
        0xad -> :sswitch_15
        0xb5 -> :sswitch_16
        0xbd -> :sswitch_17
        0xc5 -> :sswitch_18
        0xcd -> :sswitch_19
        0xd5 -> :sswitch_1a
        0xdd -> :sswitch_1b
        0xe5 -> :sswitch_1c
        0xed -> :sswitch_1d
        0xf5 -> :sswitch_1e
        0xfa -> :sswitch_1f
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 823
    iget-object v0, p0, Lmci;->a:Lmcj;

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iget-object v2, p0, Lmci;->a:Lmcj;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 826
    :cond_0
    iget-object v0, p0, Lmci;->b:Lmcj;

    if-eqz v0, :cond_1

    .line 827
    const/4 v0, 0x2

    iget-object v2, p0, Lmci;->b:Lmcj;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 829
    :cond_1
    iget-object v0, p0, Lmci;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 830
    const/4 v0, 0x3

    iget-object v2, p0, Lmci;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 832
    :cond_2
    iget-object v0, p0, Lmci;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 833
    const/4 v0, 0x4

    iget-object v2, p0, Lmci;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 835
    :cond_3
    iget-object v0, p0, Lmci;->e:[Lmcl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmci;->e:[Lmcl;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 836
    :goto_0
    iget-object v2, p0, Lmci;->e:[Lmcl;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 837
    iget-object v2, p0, Lmci;->e:[Lmcl;

    aget-object v2, v2, v0

    .line 838
    if-eqz v2, :cond_4

    .line 839
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 836
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    :cond_5
    iget-object v0, p0, Lmci;->f:[Lmck;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmci;->f:[Lmck;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 844
    :goto_1
    iget-object v0, p0, Lmci;->f:[Lmck;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 845
    iget-object v0, p0, Lmci;->f:[Lmck;

    aget-object v0, v0, v1

    .line 846
    if-eqz v0, :cond_6

    .line 847
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 844
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 851
    :cond_7
    iget-object v0, p0, Lmci;->g:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 852
    const/4 v0, 0x7

    iget-object v1, p0, Lmci;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 854
    :cond_8
    iget-object v0, p0, Lmci;->h:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 855
    const/16 v0, 0x8

    iget-object v1, p0, Lmci;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 857
    :cond_9
    iget-object v0, p0, Lmci;->i:Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 858
    const/16 v0, 0x9

    iget-object v1, p0, Lmci;->i:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 860
    :cond_a
    iget-object v0, p0, Lmci;->j:Ljava/lang/Float;

    if-eqz v0, :cond_b

    .line 861
    const/16 v0, 0xa

    iget-object v1, p0, Lmci;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 863
    :cond_b
    iget-object v0, p0, Lmci;->k:Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 864
    const/16 v0, 0xb

    iget-object v1, p0, Lmci;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 866
    :cond_c
    iget-object v0, p0, Lmci;->l:Ljava/lang/Float;

    if-eqz v0, :cond_d

    .line 867
    const/16 v0, 0xc

    iget-object v1, p0, Lmci;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 869
    :cond_d
    iget-object v0, p0, Lmci;->m:Ljava/lang/Float;

    if-eqz v0, :cond_e

    .line 870
    const/16 v0, 0xd

    iget-object v1, p0, Lmci;->m:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 872
    :cond_e
    iget-object v0, p0, Lmci;->n:Ljava/lang/Float;

    if-eqz v0, :cond_f

    .line 873
    const/16 v0, 0xe

    iget-object v1, p0, Lmci;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 875
    :cond_f
    iget-object v0, p0, Lmci;->o:Ljava/lang/Float;

    if-eqz v0, :cond_10

    .line 876
    const/16 v0, 0xf

    iget-object v1, p0, Lmci;->o:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 878
    :cond_10
    iget-object v0, p0, Lmci;->p:Ljava/lang/Float;

    if-eqz v0, :cond_11

    .line 879
    const/16 v0, 0x10

    iget-object v1, p0, Lmci;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 881
    :cond_11
    iget-object v0, p0, Lmci;->q:Ljava/lang/Float;

    if-eqz v0, :cond_12

    .line 882
    const/16 v0, 0x11

    iget-object v1, p0, Lmci;->q:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 884
    :cond_12
    iget-object v0, p0, Lmci;->r:Ljava/lang/Float;

    if-eqz v0, :cond_13

    .line 885
    const/16 v0, 0x12

    iget-object v1, p0, Lmci;->r:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 887
    :cond_13
    iget-object v0, p0, Lmci;->s:Ljava/lang/Float;

    if-eqz v0, :cond_14

    .line 888
    const/16 v0, 0x13

    iget-object v1, p0, Lmci;->s:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 890
    :cond_14
    iget-object v0, p0, Lmci;->t:Ljava/lang/Float;

    if-eqz v0, :cond_15

    .line 891
    const/16 v0, 0x14

    iget-object v1, p0, Lmci;->t:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 893
    :cond_15
    iget-object v0, p0, Lmci;->u:Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 894
    const/16 v0, 0x15

    iget-object v1, p0, Lmci;->u:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 896
    :cond_16
    iget-object v0, p0, Lmci;->v:Ljava/lang/Float;

    if-eqz v0, :cond_17

    .line 897
    const/16 v0, 0x16

    iget-object v1, p0, Lmci;->v:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 899
    :cond_17
    iget-object v0, p0, Lmci;->D:Ljava/lang/Float;

    if-eqz v0, :cond_18

    .line 900
    const/16 v0, 0x17

    iget-object v1, p0, Lmci;->D:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 902
    :cond_18
    iget-object v0, p0, Lmci;->w:Ljava/lang/Float;

    if-eqz v0, :cond_19

    .line 903
    const/16 v0, 0x18

    iget-object v1, p0, Lmci;->w:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 905
    :cond_19
    iget-object v0, p0, Lmci;->x:Ljava/lang/Float;

    if-eqz v0, :cond_1a

    .line 906
    const/16 v0, 0x19

    iget-object v1, p0, Lmci;->x:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 908
    :cond_1a
    iget-object v0, p0, Lmci;->y:Ljava/lang/Float;

    if-eqz v0, :cond_1b

    .line 909
    const/16 v0, 0x1a

    iget-object v1, p0, Lmci;->y:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 911
    :cond_1b
    iget-object v0, p0, Lmci;->z:Ljava/lang/Float;

    if-eqz v0, :cond_1c

    .line 912
    const/16 v0, 0x1b

    iget-object v1, p0, Lmci;->z:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 914
    :cond_1c
    iget-object v0, p0, Lmci;->A:Ljava/lang/Float;

    if-eqz v0, :cond_1d

    .line 915
    const/16 v0, 0x1c

    iget-object v1, p0, Lmci;->A:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 917
    :cond_1d
    iget-object v0, p0, Lmci;->B:Ljava/lang/Float;

    if-eqz v0, :cond_1e

    .line 918
    const/16 v0, 0x1d

    iget-object v1, p0, Lmci;->B:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 920
    :cond_1e
    iget-object v0, p0, Lmci;->C:Ljava/lang/Float;

    if-eqz v0, :cond_1f

    .line 921
    const/16 v0, 0x1e

    iget-object v1, p0, Lmci;->C:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 923
    :cond_1f
    iget-object v0, p0, Lmci;->E:[B

    if-eqz v0, :cond_20

    .line 924
    const/16 v0, 0x1f

    iget-object v1, p0, Lmci;->E:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 926
    :cond_20
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 927
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 931
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 932
    iget-object v2, p0, Lmci;->a:Lmcj;

    if-eqz v2, :cond_0

    .line 933
    const/4 v2, 0x1

    iget-object v3, p0, Lmci;->a:Lmcj;

    .line 934
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 936
    :cond_0
    iget-object v2, p0, Lmci;->b:Lmcj;

    if-eqz v2, :cond_1

    .line 937
    const/4 v2, 0x2

    iget-object v3, p0, Lmci;->b:Lmcj;

    .line 938
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 940
    :cond_1
    iget-object v2, p0, Lmci;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 941
    const/4 v2, 0x3

    iget-object v3, p0, Lmci;->c:Ljava/lang/Integer;

    .line 942
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 944
    :cond_2
    iget-object v2, p0, Lmci;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 945
    const/4 v2, 0x4

    iget-object v3, p0, Lmci;->d:Ljava/lang/Integer;

    .line 946
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 948
    :cond_3
    iget-object v2, p0, Lmci;->e:[Lmcl;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmci;->e:[Lmcl;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 949
    :goto_0
    iget-object v3, p0, Lmci;->e:[Lmcl;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 950
    iget-object v3, p0, Lmci;->e:[Lmcl;

    aget-object v3, v3, v0

    .line 951
    if-eqz v3, :cond_4

    .line 952
    const/4 v4, 0x5

    .line 953
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 949
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 957
    :cond_6
    iget-object v2, p0, Lmci;->f:[Lmck;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmci;->f:[Lmck;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 958
    :goto_1
    iget-object v2, p0, Lmci;->f:[Lmck;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 959
    iget-object v2, p0, Lmci;->f:[Lmck;

    aget-object v2, v2, v1

    .line 960
    if-eqz v2, :cond_7

    .line 961
    const/4 v3, 0x6

    .line 962
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 958
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 966
    :cond_8
    iget-object v1, p0, Lmci;->g:Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 967
    const/4 v1, 0x7

    iget-object v2, p0, Lmci;->g:Ljava/lang/Float;

    .line 968
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 968
    add-int/2addr v0, v1

    .line 970
    :cond_9
    iget-object v1, p0, Lmci;->h:Ljava/lang/Float;

    if-eqz v1, :cond_a

    .line 971
    const/16 v1, 0x8

    iget-object v2, p0, Lmci;->h:Ljava/lang/Float;

    .line 972
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 972
    add-int/2addr v0, v1

    .line 974
    :cond_a
    iget-object v1, p0, Lmci;->i:Ljava/lang/Float;

    if-eqz v1, :cond_b

    .line 975
    const/16 v1, 0x9

    iget-object v2, p0, Lmci;->i:Ljava/lang/Float;

    .line 976
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 976
    add-int/2addr v0, v1

    .line 978
    :cond_b
    iget-object v1, p0, Lmci;->j:Ljava/lang/Float;

    if-eqz v1, :cond_c

    .line 979
    const/16 v1, 0xa

    iget-object v2, p0, Lmci;->j:Ljava/lang/Float;

    .line 980
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 980
    add-int/2addr v0, v1

    .line 982
    :cond_c
    iget-object v1, p0, Lmci;->k:Ljava/lang/Float;

    if-eqz v1, :cond_d

    .line 983
    const/16 v1, 0xb

    iget-object v2, p0, Lmci;->k:Ljava/lang/Float;

    .line 984
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 984
    add-int/2addr v0, v1

    .line 986
    :cond_d
    iget-object v1, p0, Lmci;->l:Ljava/lang/Float;

    if-eqz v1, :cond_e

    .line 987
    const/16 v1, 0xc

    iget-object v2, p0, Lmci;->l:Ljava/lang/Float;

    .line 988
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 988
    add-int/2addr v0, v1

    .line 990
    :cond_e
    iget-object v1, p0, Lmci;->m:Ljava/lang/Float;

    if-eqz v1, :cond_f

    .line 991
    const/16 v1, 0xd

    iget-object v2, p0, Lmci;->m:Ljava/lang/Float;

    .line 992
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 992
    add-int/2addr v0, v1

    .line 994
    :cond_f
    iget-object v1, p0, Lmci;->n:Ljava/lang/Float;

    if-eqz v1, :cond_10

    .line 995
    const/16 v1, 0xe

    iget-object v2, p0, Lmci;->n:Ljava/lang/Float;

    .line 996
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 996
    add-int/2addr v0, v1

    .line 998
    :cond_10
    iget-object v1, p0, Lmci;->o:Ljava/lang/Float;

    if-eqz v1, :cond_11

    .line 999
    const/16 v1, 0xf

    iget-object v2, p0, Lmci;->o:Ljava/lang/Float;

    .line 1000
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1000
    add-int/2addr v0, v1

    .line 1002
    :cond_11
    iget-object v1, p0, Lmci;->p:Ljava/lang/Float;

    if-eqz v1, :cond_12

    .line 1003
    const/16 v1, 0x10

    iget-object v2, p0, Lmci;->p:Ljava/lang/Float;

    .line 1004
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 10569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1004
    add-int/2addr v0, v1

    .line 1006
    :cond_12
    iget-object v1, p0, Lmci;->q:Ljava/lang/Float;

    if-eqz v1, :cond_13

    .line 1007
    const/16 v1, 0x11

    iget-object v2, p0, Lmci;->q:Ljava/lang/Float;

    .line 1008
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 11569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1008
    add-int/2addr v0, v1

    .line 1010
    :cond_13
    iget-object v1, p0, Lmci;->r:Ljava/lang/Float;

    if-eqz v1, :cond_14

    .line 1011
    const/16 v1, 0x12

    iget-object v2, p0, Lmci;->r:Ljava/lang/Float;

    .line 1012
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 12569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1012
    add-int/2addr v0, v1

    .line 1014
    :cond_14
    iget-object v1, p0, Lmci;->s:Ljava/lang/Float;

    if-eqz v1, :cond_15

    .line 1015
    const/16 v1, 0x13

    iget-object v2, p0, Lmci;->s:Ljava/lang/Float;

    .line 1016
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 13569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1016
    add-int/2addr v0, v1

    .line 1018
    :cond_15
    iget-object v1, p0, Lmci;->t:Ljava/lang/Float;

    if-eqz v1, :cond_16

    .line 1019
    const/16 v1, 0x14

    iget-object v2, p0, Lmci;->t:Ljava/lang/Float;

    .line 1020
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 14569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1020
    add-int/2addr v0, v1

    .line 1022
    :cond_16
    iget-object v1, p0, Lmci;->u:Ljava/lang/Float;

    if-eqz v1, :cond_17

    .line 1023
    const/16 v1, 0x15

    iget-object v2, p0, Lmci;->u:Ljava/lang/Float;

    .line 1024
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 15569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1024
    add-int/2addr v0, v1

    .line 1026
    :cond_17
    iget-object v1, p0, Lmci;->v:Ljava/lang/Float;

    if-eqz v1, :cond_18

    .line 1027
    const/16 v1, 0x16

    iget-object v2, p0, Lmci;->v:Ljava/lang/Float;

    .line 1028
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 16569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1028
    add-int/2addr v0, v1

    .line 1030
    :cond_18
    iget-object v1, p0, Lmci;->D:Ljava/lang/Float;

    if-eqz v1, :cond_19

    .line 1031
    const/16 v1, 0x17

    iget-object v2, p0, Lmci;->D:Ljava/lang/Float;

    .line 1032
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 17569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1032
    add-int/2addr v0, v1

    .line 1034
    :cond_19
    iget-object v1, p0, Lmci;->w:Ljava/lang/Float;

    if-eqz v1, :cond_1a

    .line 1035
    const/16 v1, 0x18

    iget-object v2, p0, Lmci;->w:Ljava/lang/Float;

    .line 1036
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 18569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1036
    add-int/2addr v0, v1

    .line 1038
    :cond_1a
    iget-object v1, p0, Lmci;->x:Ljava/lang/Float;

    if-eqz v1, :cond_1b

    .line 1039
    const/16 v1, 0x19

    iget-object v2, p0, Lmci;->x:Ljava/lang/Float;

    .line 1040
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 19569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1040
    add-int/2addr v0, v1

    .line 1042
    :cond_1b
    iget-object v1, p0, Lmci;->y:Ljava/lang/Float;

    if-eqz v1, :cond_1c

    .line 1043
    const/16 v1, 0x1a

    iget-object v2, p0, Lmci;->y:Ljava/lang/Float;

    .line 1044
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 20569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1044
    add-int/2addr v0, v1

    .line 1046
    :cond_1c
    iget-object v1, p0, Lmci;->z:Ljava/lang/Float;

    if-eqz v1, :cond_1d

    .line 1047
    const/16 v1, 0x1b

    iget-object v2, p0, Lmci;->z:Ljava/lang/Float;

    .line 1048
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 21569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1048
    add-int/2addr v0, v1

    .line 1050
    :cond_1d
    iget-object v1, p0, Lmci;->A:Ljava/lang/Float;

    if-eqz v1, :cond_1e

    .line 1051
    const/16 v1, 0x1c

    iget-object v2, p0, Lmci;->A:Ljava/lang/Float;

    .line 1052
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 22569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1052
    add-int/2addr v0, v1

    .line 1054
    :cond_1e
    iget-object v1, p0, Lmci;->B:Ljava/lang/Float;

    if-eqz v1, :cond_1f

    .line 1055
    const/16 v1, 0x1d

    iget-object v2, p0, Lmci;->B:Ljava/lang/Float;

    .line 1056
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 23569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1056
    add-int/2addr v0, v1

    .line 1058
    :cond_1f
    iget-object v1, p0, Lmci;->C:Ljava/lang/Float;

    if-eqz v1, :cond_20

    .line 1059
    const/16 v1, 0x1e

    iget-object v2, p0, Lmci;->C:Ljava/lang/Float;

    .line 1060
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 24569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1060
    add-int/2addr v0, v1

    .line 1062
    :cond_20
    iget-object v1, p0, Lmci;->E:[B

    if-eqz v1, :cond_21

    .line 1063
    const/16 v1, 0x1f

    iget-object v2, p0, Lmci;->E:[B

    .line 1064
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1066
    :cond_21
    return v0
.end method
