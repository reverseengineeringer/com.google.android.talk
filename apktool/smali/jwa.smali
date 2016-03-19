.class public final Ljwa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/Integer;

.field public q:[I

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 855
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1860
    iput-object v1, p0, Ljwa;->a:[B

    .line 1861
    iput-object v1, p0, Ljwa;->b:[B

    .line 1862
    iput-object v1, p0, Ljwa;->c:Ljava/lang/Integer;

    .line 1863
    iput-object v1, p0, Ljwa;->d:Ljava/lang/Boolean;

    .line 1864
    iput-object v1, p0, Ljwa;->e:Ljava/lang/Long;

    .line 1865
    iput-object v1, p0, Ljwa;->f:Ljava/lang/Long;

    .line 1866
    iput-object v1, p0, Ljwa;->g:Ljava/lang/Integer;

    .line 1867
    iput-object v1, p0, Ljwa;->h:Ljava/lang/Boolean;

    .line 1868
    iput-object v1, p0, Ljwa;->i:Ljava/lang/Long;

    .line 1869
    iput-object v1, p0, Ljwa;->j:Ljava/lang/Long;

    .line 1870
    iput-object v1, p0, Ljwa;->k:Ljava/lang/String;

    .line 1871
    iput-object v1, p0, Ljwa;->l:Ljava/lang/String;

    .line 1872
    iput-object v1, p0, Ljwa;->m:Ljava/lang/String;

    .line 1873
    iput-object v1, p0, Ljwa;->n:Ljava/lang/String;

    .line 1874
    iput-object v1, p0, Ljwa;->o:Ljava/lang/Integer;

    .line 1875
    iput-object v1, p0, Ljwa;->p:Ljava/lang/Integer;

    .line 1876
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljwa;->q:[I

    .line 1877
    iput-object v1, p0, Ljwa;->r:Ljava/lang/String;

    .line 1878
    iput-object v1, p0, Ljwa;->eD:Llyd;

    .line 1879
    const/4 v0, -0x1

    iput v0, p0, Ljwa;->eE:I

    .line 857
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4026
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4027
    sparse-switch v0, :sswitch_data_0

    .line 4031
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4032
    :sswitch_0
    return-object p0

    .line 4037
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljwa;->a:[B

    goto :goto_0

    .line 4041
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljwa;->b:[B

    goto :goto_0

    .line 4045
    :sswitch_3
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwa;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4049
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwa;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 4053
    :sswitch_5
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwa;->i:Ljava/lang/Long;

    goto :goto_0

    .line 4057
    :sswitch_6
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwa;->f:Ljava/lang/Long;

    goto :goto_0

    .line 4061
    :sswitch_7
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwa;->e:Ljava/lang/Long;

    goto :goto_0

    .line 4065
    :sswitch_8
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwa;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 4069
    :sswitch_9
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljwa;->j:Ljava/lang/Long;

    goto :goto_0

    .line 4073
    :sswitch_a
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwa;->k:Ljava/lang/String;

    goto :goto_0

    .line 4077
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwa;->l:Ljava/lang/String;

    goto :goto_0

    .line 4081
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljwa;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4085
    :sswitch_d
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwa;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 4089
    :sswitch_e
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwa;->n:Ljava/lang/String;

    goto/16 :goto_0

    .line 4093
    :sswitch_f
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwa;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4097
    :sswitch_10
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4098
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 4106
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljwa;->p:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4112
    :sswitch_11
    const/16 v0, 0xa0

    .line 4113
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 4114
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 4116
    :goto_1
    if-ge v3, v4, :cond_2

    .line 4117
    if-eqz v3, :cond_1

    .line 4118
    invoke-virtual {p1}, Llxy;->a()I

    .line 4120
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 4121
    packed-switch v6, :pswitch_data_1

    :pswitch_1
    move v0, v1

    .line 4116
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 4187
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 4191
    :cond_2
    if-eqz v1, :cond_0

    .line 4192
    iget-object v0, p0, Ljwa;->q:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 4193
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 4194
    iput-object v5, p0, Ljwa;->q:[I

    goto/16 :goto_0

    .line 4192
    :cond_3
    iget-object v0, p0, Ljwa;->q:[I

    array-length v0, v0

    goto :goto_3

    .line 4196
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 4197
    if-eqz v0, :cond_5

    .line 4198
    iget-object v4, p0, Ljwa;->q:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4200
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4201
    iput-object v3, p0, Ljwa;->q:[I

    goto/16 :goto_0

    .line 4207
    :sswitch_12
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 4208
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 4211
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 4212
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 4213
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    :pswitch_3
    goto :goto_4

    .line 4279
    :pswitch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4283
    :cond_6
    if-eqz v0, :cond_a

    .line 4284
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 4285
    iget-object v1, p0, Ljwa;->q:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 4286
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 4287
    if-eqz v1, :cond_7

    .line 4288
    iget-object v0, p0, Ljwa;->q:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4290
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 4291
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 4292
    packed-switch v5, :pswitch_data_3

    :pswitch_5
    goto :goto_6

    .line 4358
    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 4285
    :cond_8
    iget-object v1, p0, Ljwa;->q:[I

    array-length v1, v1

    goto :goto_5

    .line 4362
    :cond_9
    iput-object v4, p0, Ljwa;->q:[I

    .line 4364
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 4368
    :sswitch_13
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwa;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 4027
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x40 -> :sswitch_6
        0x48 -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x6a -> :sswitch_a
        0x72 -> :sswitch_b
        0x78 -> :sswitch_c
        0x82 -> :sswitch_d
        0x8a -> :sswitch_e
        0x90 -> :sswitch_f
        0x98 -> :sswitch_10
        0xa0 -> :sswitch_11
        0xa2 -> :sswitch_12
        0xaa -> :sswitch_13
    .end sparse-switch

    .line 4098
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4213
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 4292
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 886
    const/4 v0, 0x1

    iget-object v1, p0, Ljwa;->a:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 887
    iget-object v0, p0, Ljwa;->b:[B

    if-eqz v0, :cond_0

    .line 888
    const/4 v0, 0x2

    iget-object v1, p0, Ljwa;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 890
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Ljwa;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 891
    iget-object v0, p0, Ljwa;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 892
    const/4 v0, 0x5

    iget-object v1, p0, Ljwa;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 894
    :cond_1
    iget-object v0, p0, Ljwa;->i:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 895
    const/4 v0, 0x6

    iget-object v1, p0, Ljwa;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 897
    :cond_2
    iget-object v0, p0, Ljwa;->f:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 898
    const/16 v0, 0x8

    iget-object v1, p0, Ljwa;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 900
    :cond_3
    iget-object v0, p0, Ljwa;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 901
    const/16 v0, 0x9

    iget-object v1, p0, Ljwa;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 903
    :cond_4
    iget-object v0, p0, Ljwa;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 904
    const/16 v0, 0xa

    iget-object v1, p0, Ljwa;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 906
    :cond_5
    iget-object v0, p0, Ljwa;->j:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 907
    const/16 v0, 0xb

    iget-object v1, p0, Ljwa;->j:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 909
    :cond_6
    iget-object v0, p0, Ljwa;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 910
    const/16 v0, 0xd

    iget-object v1, p0, Ljwa;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 912
    :cond_7
    iget-object v0, p0, Ljwa;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 913
    const/16 v0, 0xe

    iget-object v1, p0, Ljwa;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 915
    :cond_8
    iget-object v0, p0, Ljwa;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 916
    const/16 v0, 0xf

    iget-object v1, p0, Ljwa;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 918
    :cond_9
    iget-object v0, p0, Ljwa;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 919
    const/16 v0, 0x10

    iget-object v1, p0, Ljwa;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 921
    :cond_a
    iget-object v0, p0, Ljwa;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 922
    const/16 v0, 0x11

    iget-object v1, p0, Ljwa;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 924
    :cond_b
    iget-object v0, p0, Ljwa;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 925
    const/16 v0, 0x12

    iget-object v1, p0, Ljwa;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 927
    :cond_c
    iget-object v0, p0, Ljwa;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 928
    const/16 v0, 0x13

    iget-object v1, p0, Ljwa;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 930
    :cond_d
    iget-object v0, p0, Ljwa;->q:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljwa;->q:[I

    array-length v0, v0

    if-lez v0, :cond_e

    .line 931
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljwa;->q:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 932
    const/16 v1, 0x14

    iget-object v2, p0, Ljwa;->q:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_e
    iget-object v0, p0, Ljwa;->r:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 936
    const/16 v0, 0x15

    iget-object v1, p0, Ljwa;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 938
    :cond_f
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 939
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 943
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 944
    const/4 v2, 0x1

    iget-object v3, p0, Ljwa;->a:[B

    .line 945
    invoke-static {v2, v3}, Llxz;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 946
    iget-object v2, p0, Ljwa;->b:[B

    if-eqz v2, :cond_0

    .line 947
    const/4 v2, 0x2

    iget-object v3, p0, Ljwa;->b:[B

    .line 948
    invoke-static {v2, v3}, Llxz;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 950
    :cond_0
    const/4 v2, 0x3

    iget-object v3, p0, Ljwa;->c:Ljava/lang/Integer;

    .line 951
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 952
    iget-object v2, p0, Ljwa;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 953
    const/4 v2, 0x5

    iget-object v3, p0, Ljwa;->d:Ljava/lang/Boolean;

    .line 954
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 954
    add-int/2addr v0, v2

    .line 956
    :cond_1
    iget-object v2, p0, Ljwa;->i:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 957
    const/4 v2, 0x6

    iget-object v3, p0, Ljwa;->i:Ljava/lang/Long;

    .line 958
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 960
    :cond_2
    iget-object v2, p0, Ljwa;->f:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 961
    const/16 v2, 0x8

    iget-object v3, p0, Ljwa;->f:Ljava/lang/Long;

    .line 962
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 964
    :cond_3
    iget-object v2, p0, Ljwa;->e:Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 965
    const/16 v2, 0x9

    iget-object v3, p0, Ljwa;->e:Ljava/lang/Long;

    .line 966
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 968
    :cond_4
    iget-object v2, p0, Ljwa;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 969
    const/16 v2, 0xa

    iget-object v3, p0, Ljwa;->g:Ljava/lang/Integer;

    .line 970
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 972
    :cond_5
    iget-object v2, p0, Ljwa;->j:Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 973
    const/16 v2, 0xb

    iget-object v3, p0, Ljwa;->j:Ljava/lang/Long;

    .line 974
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 976
    :cond_6
    iget-object v2, p0, Ljwa;->k:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 977
    const/16 v2, 0xd

    iget-object v3, p0, Ljwa;->k:Ljava/lang/String;

    .line 978
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 980
    :cond_7
    iget-object v2, p0, Ljwa;->l:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 981
    const/16 v2, 0xe

    iget-object v3, p0, Ljwa;->l:Ljava/lang/String;

    .line 982
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 984
    :cond_8
    iget-object v2, p0, Ljwa;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    .line 985
    const/16 v2, 0xf

    iget-object v3, p0, Ljwa;->h:Ljava/lang/Boolean;

    .line 986
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 986
    add-int/2addr v0, v2

    .line 988
    :cond_9
    iget-object v2, p0, Ljwa;->m:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 989
    const/16 v2, 0x10

    iget-object v3, p0, Ljwa;->m:Ljava/lang/String;

    .line 990
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 992
    :cond_a
    iget-object v2, p0, Ljwa;->n:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 993
    const/16 v2, 0x11

    iget-object v3, p0, Ljwa;->n:Ljava/lang/String;

    .line 994
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 996
    :cond_b
    iget-object v2, p0, Ljwa;->o:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    .line 997
    const/16 v2, 0x12

    iget-object v3, p0, Ljwa;->o:Ljava/lang/Integer;

    .line 998
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1000
    :cond_c
    iget-object v2, p0, Ljwa;->p:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 1001
    const/16 v2, 0x13

    iget-object v3, p0, Ljwa;->p:Ljava/lang/Integer;

    .line 1002
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1004
    :cond_d
    iget-object v2, p0, Ljwa;->q:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Ljwa;->q:[I

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v1

    .line 1006
    :goto_0
    iget-object v3, p0, Ljwa;->q:[I

    array-length v3, v3

    if-ge v1, v3, :cond_e

    .line 1007
    iget-object v3, p0, Ljwa;->q:[I

    aget v3, v3, v1

    .line 1009
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1011
    :cond_e
    add-int/2addr v0, v2

    .line 1012
    iget-object v1, p0, Ljwa;->q:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1014
    :cond_f
    iget-object v1, p0, Ljwa;->r:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1015
    const/16 v1, 0x15

    iget-object v2, p0, Ljwa;->r:Ljava/lang/String;

    .line 1016
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1018
    :cond_10
    return v0
.end method
