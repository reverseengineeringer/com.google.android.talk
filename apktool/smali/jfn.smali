.class public final Ljfn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Float;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Float;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/Long;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8980
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8981
    iput-object v0, p0, Ljfn;->a:Ljava/lang/String;

    .line 8982
    iput-object v0, p0, Ljfn;->b:Ljava/lang/String;

    .line 8983
    iput-object v0, p0, Ljfn;->c:Ljava/lang/Integer;

    .line 8984
    iput-object v0, p0, Ljfn;->d:Ljava/lang/Float;

    .line 8985
    iput-object v0, p0, Ljfn;->e:Ljava/lang/Float;

    .line 8986
    iput-object v0, p0, Ljfn;->f:Ljava/lang/Float;

    .line 8987
    iput-object v0, p0, Ljfn;->g:Ljava/lang/Long;

    .line 8988
    iput-object v0, p0, Ljfn;->h:Ljava/lang/Float;

    .line 8989
    iput-object v0, p0, Ljfn;->i:Ljava/lang/Boolean;

    .line 8990
    iput-object v0, p0, Ljfn;->j:Ljava/lang/Float;

    .line 8991
    iput-object v0, p0, Ljfn;->k:Ljava/lang/String;

    .line 8992
    iput-object v0, p0, Ljfn;->l:Ljava/lang/Long;

    .line 8993
    iput-object v0, p0, Ljfn;->m:Ljava/lang/Integer;

    .line 8994
    iput-object v0, p0, Ljfn;->n:Ljava/lang/Integer;

    .line 8995
    iput-object v0, p0, Ljfn;->o:Ljava/lang/Integer;

    .line 8996
    iput-object v0, p0, Ljfn;->p:Ljava/lang/String;

    .line 8997
    iput-object v0, p0, Ljfn;->q:Ljava/lang/String;

    .line 8998
    iput-object v0, p0, Ljfn;->r:Ljava/lang/String;

    .line 8999
    iput-object v0, p0, Ljfn;->s:Ljava/lang/String;

    .line 9000
    iput-object v0, p0, Ljfn;->eD:Llyd;

    .line 9001
    const/4 v0, -0x1

    iput v0, p0, Ljfn;->eE:I

    .line 9002
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 14154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 14155
    sparse-switch v0, :sswitch_data_0

    .line 14159
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14160
    :sswitch_0
    return-object p0

    .line 14165
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfn;->a:Ljava/lang/String;

    goto :goto_0

    .line 14169
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfn;->b:Ljava/lang/String;

    goto :goto_0

    .line 14173
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljfn;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 14177
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljfn;->d:Ljava/lang/Float;

    goto :goto_0

    .line 14181
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljfn;->e:Ljava/lang/Float;

    goto :goto_0

    .line 14185
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljfn;->f:Ljava/lang/Float;

    goto :goto_0

    .line 14189
    :sswitch_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljfn;->g:Ljava/lang/Long;

    goto :goto_0

    .line 14193
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljfn;->h:Ljava/lang/Float;

    goto :goto_0

    .line 14197
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljfn;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 14201
    :sswitch_a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljfn;->j:Ljava/lang/Float;

    goto :goto_0

    .line 14205
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfn;->k:Ljava/lang/String;

    goto :goto_0

    .line 14209
    :sswitch_c
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljfn;->l:Ljava/lang/Long;

    goto/16 :goto_0

    .line 14213
    :sswitch_d
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljfn;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 14217
    :sswitch_e
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljfn;->n:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 14221
    :sswitch_f
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljfn;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 14225
    :sswitch_10
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfn;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 14229
    :sswitch_11
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfn;->q:Ljava/lang/String;

    goto/16 :goto_0

    .line 14233
    :sswitch_12
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfn;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 14237
    :sswitch_13
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfn;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 14155
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x45 -> :sswitch_8
        0x48 -> :sswitch_9
        0x55 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 9007
    iget-object v0, p0, Ljfn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9008
    const/4 v0, 0x1

    iget-object v1, p0, Ljfn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9010
    :cond_0
    iget-object v0, p0, Ljfn;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9011
    const/4 v0, 0x2

    iget-object v1, p0, Ljfn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9013
    :cond_1
    iget-object v0, p0, Ljfn;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 9014
    const/4 v0, 0x3

    iget-object v1, p0, Ljfn;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9016
    :cond_2
    iget-object v0, p0, Ljfn;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 9017
    const/4 v0, 0x4

    iget-object v1, p0, Ljfn;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 9019
    :cond_3
    iget-object v0, p0, Ljfn;->e:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 9020
    const/4 v0, 0x5

    iget-object v1, p0, Ljfn;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 9022
    :cond_4
    iget-object v0, p0, Ljfn;->f:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 9023
    const/4 v0, 0x6

    iget-object v1, p0, Ljfn;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 9025
    :cond_5
    iget-object v0, p0, Ljfn;->g:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 9026
    const/4 v0, 0x7

    iget-object v1, p0, Ljfn;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 9028
    :cond_6
    iget-object v0, p0, Ljfn;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 9029
    const/16 v0, 0x8

    iget-object v1, p0, Ljfn;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 9031
    :cond_7
    iget-object v0, p0, Ljfn;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 9032
    const/16 v0, 0x9

    iget-object v1, p0, Ljfn;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9034
    :cond_8
    iget-object v0, p0, Ljfn;->j:Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 9035
    const/16 v0, 0xa

    iget-object v1, p0, Ljfn;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 9037
    :cond_9
    iget-object v0, p0, Ljfn;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 9038
    const/16 v0, 0xb

    iget-object v1, p0, Ljfn;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9040
    :cond_a
    iget-object v0, p0, Ljfn;->l:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 9041
    const/16 v0, 0xc

    iget-object v1, p0, Ljfn;->l:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 9043
    :cond_b
    iget-object v0, p0, Ljfn;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 9044
    const/16 v0, 0xd

    iget-object v1, p0, Ljfn;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9046
    :cond_c
    iget-object v0, p0, Ljfn;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 9047
    const/16 v0, 0xe

    iget-object v1, p0, Ljfn;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9049
    :cond_d
    iget-object v0, p0, Ljfn;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 9050
    const/16 v0, 0xf

    iget-object v1, p0, Ljfn;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9052
    :cond_e
    iget-object v0, p0, Ljfn;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 9053
    const/16 v0, 0x10

    iget-object v1, p0, Ljfn;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9055
    :cond_f
    iget-object v0, p0, Ljfn;->q:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 9056
    const/16 v0, 0x11

    iget-object v1, p0, Ljfn;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9058
    :cond_10
    iget-object v0, p0, Ljfn;->r:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 9059
    const/16 v0, 0x12

    iget-object v1, p0, Ljfn;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9061
    :cond_11
    iget-object v0, p0, Ljfn;->s:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 9062
    const/16 v0, 0x13

    iget-object v1, p0, Ljfn;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9064
    :cond_12
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9065
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 9069
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9070
    iget-object v1, p0, Ljfn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9071
    const/4 v1, 0x1

    iget-object v2, p0, Ljfn;->a:Ljava/lang/String;

    .line 9072
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9074
    :cond_0
    iget-object v1, p0, Ljfn;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9075
    const/4 v1, 0x2

    iget-object v2, p0, Ljfn;->b:Ljava/lang/String;

    .line 9076
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9078
    :cond_1
    iget-object v1, p0, Ljfn;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 9079
    const/4 v1, 0x3

    iget-object v2, p0, Ljfn;->c:Ljava/lang/Integer;

    .line 9080
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9082
    :cond_2
    iget-object v1, p0, Ljfn;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 9083
    const/4 v1, 0x4

    iget-object v2, p0, Ljfn;->d:Ljava/lang/Float;

    .line 9084
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 9569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 9084
    add-int/2addr v0, v1

    .line 9086
    :cond_3
    iget-object v1, p0, Ljfn;->e:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 9087
    const/4 v1, 0x5

    iget-object v2, p0, Ljfn;->e:Ljava/lang/Float;

    .line 9088
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 10569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 9088
    add-int/2addr v0, v1

    .line 9090
    :cond_4
    iget-object v1, p0, Ljfn;->f:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 9091
    const/4 v1, 0x6

    iget-object v2, p0, Ljfn;->f:Ljava/lang/Float;

    .line 9092
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 11569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 9092
    add-int/2addr v0, v1

    .line 9094
    :cond_5
    iget-object v1, p0, Ljfn;->g:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 9095
    const/4 v1, 0x7

    iget-object v2, p0, Ljfn;->g:Ljava/lang/Long;

    .line 9096
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9098
    :cond_6
    iget-object v1, p0, Ljfn;->h:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 9099
    const/16 v1, 0x8

    iget-object v2, p0, Ljfn;->h:Ljava/lang/Float;

    .line 9100
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 12569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 9100
    add-int/2addr v0, v1

    .line 9102
    :cond_7
    iget-object v1, p0, Ljfn;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 9103
    const/16 v1, 0x9

    iget-object v2, p0, Ljfn;->i:Ljava/lang/Boolean;

    .line 9104
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9104
    add-int/2addr v0, v1

    .line 9106
    :cond_8
    iget-object v1, p0, Ljfn;->j:Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 9107
    const/16 v1, 0xa

    iget-object v2, p0, Ljfn;->j:Ljava/lang/Float;

    .line 9108
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 13569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 9108
    add-int/2addr v0, v1

    .line 9110
    :cond_9
    iget-object v1, p0, Ljfn;->k:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 9111
    const/16 v1, 0xb

    iget-object v2, p0, Ljfn;->k:Ljava/lang/String;

    .line 9112
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9114
    :cond_a
    iget-object v1, p0, Ljfn;->l:Ljava/lang/Long;

    if-eqz v1, :cond_b

    .line 9115
    const/16 v1, 0xc

    iget-object v2, p0, Ljfn;->l:Ljava/lang/Long;

    .line 9116
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9118
    :cond_b
    iget-object v1, p0, Ljfn;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 9119
    const/16 v1, 0xd

    iget-object v2, p0, Ljfn;->m:Ljava/lang/Integer;

    .line 9120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9122
    :cond_c
    iget-object v1, p0, Ljfn;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 9123
    const/16 v1, 0xe

    iget-object v2, p0, Ljfn;->n:Ljava/lang/Integer;

    .line 9124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9126
    :cond_d
    iget-object v1, p0, Ljfn;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 9127
    const/16 v1, 0xf

    iget-object v2, p0, Ljfn;->o:Ljava/lang/Integer;

    .line 9128
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9130
    :cond_e
    iget-object v1, p0, Ljfn;->p:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 9131
    const/16 v1, 0x10

    iget-object v2, p0, Ljfn;->p:Ljava/lang/String;

    .line 9132
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9134
    :cond_f
    iget-object v1, p0, Ljfn;->q:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 9135
    const/16 v1, 0x11

    iget-object v2, p0, Ljfn;->q:Ljava/lang/String;

    .line 9136
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9138
    :cond_10
    iget-object v1, p0, Ljfn;->r:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 9139
    const/16 v1, 0x12

    iget-object v2, p0, Ljfn;->r:Ljava/lang/String;

    .line 9140
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9142
    :cond_11
    iget-object v1, p0, Ljfn;->s:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 9143
    const/16 v1, 0x13

    iget-object v2, p0, Ljfn;->s:Ljava/lang/String;

    .line 9144
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9146
    :cond_12
    return v0
.end method
