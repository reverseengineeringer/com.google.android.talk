.class public final Ljug;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljug;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/Boolean;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/Integer;

.field public q:Ljava/lang/Boolean;

.field public r:Ljava/lang/Integer;

.field public s:Ljava/lang/Boolean;

.field public t:Ljava/lang/Float;

.field public u:Ljava/lang/Integer;

.field public v:Ljava/lang/Boolean;

.field public w:Ljava/lang/Integer;

.field public x:Ljava/lang/Integer;

.field public y:Ljava/lang/Boolean;

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1119
    iput-object v0, p0, Ljug;->a:Ljava/lang/Boolean;

    .line 1120
    iput-object v0, p0, Ljug;->b:Ljava/lang/Boolean;

    .line 1121
    iput-object v0, p0, Ljug;->c:Ljava/lang/Boolean;

    .line 1122
    iput-object v0, p0, Ljug;->d:Ljava/lang/Boolean;

    .line 1123
    iput-object v0, p0, Ljug;->e:Ljava/lang/Integer;

    .line 1124
    iput-object v0, p0, Ljug;->f:Ljava/lang/Boolean;

    .line 1125
    iput-object v0, p0, Ljug;->g:Ljava/lang/Boolean;

    .line 1126
    iput-object v0, p0, Ljug;->h:Ljava/lang/Integer;

    .line 1127
    iput-object v0, p0, Ljug;->i:Ljava/lang/Boolean;

    .line 1128
    iput-object v0, p0, Ljug;->j:Ljava/lang/Integer;

    .line 1129
    iput-object v0, p0, Ljug;->k:Ljava/lang/Boolean;

    .line 1130
    iput-object v0, p0, Ljug;->l:Ljava/lang/Boolean;

    .line 1131
    iput-object v0, p0, Ljug;->m:Ljava/lang/Boolean;

    .line 1132
    iput-object v0, p0, Ljug;->n:Ljava/lang/Boolean;

    .line 1133
    iput-object v0, p0, Ljug;->o:Ljava/lang/Integer;

    .line 1134
    iput-object v0, p0, Ljug;->p:Ljava/lang/Integer;

    .line 1135
    iput-object v0, p0, Ljug;->q:Ljava/lang/Boolean;

    .line 1136
    iput-object v0, p0, Ljug;->r:Ljava/lang/Integer;

    .line 1137
    iput-object v0, p0, Ljug;->s:Ljava/lang/Boolean;

    .line 1138
    iput-object v0, p0, Ljug;->t:Ljava/lang/Float;

    .line 1139
    iput-object v0, p0, Ljug;->u:Ljava/lang/Integer;

    .line 1140
    iput-object v0, p0, Ljug;->v:Ljava/lang/Boolean;

    .line 1141
    iput-object v0, p0, Ljug;->w:Ljava/lang/Integer;

    .line 1142
    iput-object v0, p0, Ljug;->x:Ljava/lang/Integer;

    .line 1143
    iput-object v0, p0, Ljug;->y:Ljava/lang/Boolean;

    .line 1144
    iput-object v0, p0, Ljug;->z:Ljava/lang/Boolean;

    .line 1145
    iput-object v0, p0, Ljug;->eD:Llyd;

    .line 1146
    const/4 v0, -0x1

    iput v0, p0, Ljug;->eE:I

    .line 116
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 17349
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 17350
    sparse-switch v0, :sswitch_data_0

    .line 17354
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17355
    :sswitch_0
    return-object p0

    .line 17360
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 17364
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 17368
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 17372
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 17376
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 17380
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 17384
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 17388
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->h:Ljava/lang/Integer;

    goto :goto_0

    .line 17392
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 17396
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 17397
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 17401
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->j:Ljava/lang/Integer;

    goto :goto_0

    .line 17407
    :sswitch_b
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17411
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->l:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17415
    :sswitch_d
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17419
    :sswitch_e
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->n:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17423
    :sswitch_f
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 17427
    :sswitch_10
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->p:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 17431
    :sswitch_11
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->q:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17435
    :sswitch_12
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->r:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 17439
    :sswitch_13
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->s:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17443
    :sswitch_14
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljug;->t:Ljava/lang/Float;

    goto/16 :goto_0

    .line 17447
    :sswitch_15
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->u:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 17451
    :sswitch_16
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->v:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17455
    :sswitch_17
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->w:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 17459
    :sswitch_18
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljug;->x:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 17463
    :sswitch_19
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->y:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17467
    :sswitch_1a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljug;->z:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 17350
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa5 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
    .end sparse-switch

    .line 17397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Ljug;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    iget-object v1, p0, Ljug;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 156
    :cond_0
    iget-object v0, p0, Ljug;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x2

    iget-object v1, p0, Ljug;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 159
    :cond_1
    iget-object v0, p0, Ljug;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x3

    iget-object v1, p0, Ljug;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 162
    :cond_2
    iget-object v0, p0, Ljug;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 163
    const/4 v0, 0x4

    iget-object v1, p0, Ljug;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 165
    :cond_3
    iget-object v0, p0, Ljug;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 166
    const/4 v0, 0x5

    iget-object v1, p0, Ljug;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 168
    :cond_4
    iget-object v0, p0, Ljug;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 169
    const/4 v0, 0x6

    iget-object v1, p0, Ljug;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 171
    :cond_5
    iget-object v0, p0, Ljug;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 172
    const/4 v0, 0x7

    iget-object v1, p0, Ljug;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 174
    :cond_6
    iget-object v0, p0, Ljug;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 175
    const/16 v0, 0x8

    iget-object v1, p0, Ljug;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 177
    :cond_7
    iget-object v0, p0, Ljug;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 178
    const/16 v0, 0x9

    iget-object v1, p0, Ljug;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 180
    :cond_8
    iget-object v0, p0, Ljug;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 181
    const/16 v0, 0xa

    iget-object v1, p0, Ljug;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 183
    :cond_9
    iget-object v0, p0, Ljug;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 184
    const/16 v0, 0xb

    iget-object v1, p0, Ljug;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 186
    :cond_a
    iget-object v0, p0, Ljug;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 187
    const/16 v0, 0xc

    iget-object v1, p0, Ljug;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 189
    :cond_b
    iget-object v0, p0, Ljug;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 190
    const/16 v0, 0xd

    iget-object v1, p0, Ljug;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 192
    :cond_c
    iget-object v0, p0, Ljug;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 193
    const/16 v0, 0xe

    iget-object v1, p0, Ljug;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 195
    :cond_d
    iget-object v0, p0, Ljug;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 196
    const/16 v0, 0xf

    iget-object v1, p0, Ljug;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 198
    :cond_e
    iget-object v0, p0, Ljug;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 199
    const/16 v0, 0x10

    iget-object v1, p0, Ljug;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 201
    :cond_f
    iget-object v0, p0, Ljug;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 202
    const/16 v0, 0x11

    iget-object v1, p0, Ljug;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 204
    :cond_10
    iget-object v0, p0, Ljug;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 205
    const/16 v0, 0x12

    iget-object v1, p0, Ljug;->r:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 207
    :cond_11
    iget-object v0, p0, Ljug;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 208
    const/16 v0, 0x13

    iget-object v1, p0, Ljug;->s:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 210
    :cond_12
    iget-object v0, p0, Ljug;->t:Ljava/lang/Float;

    if-eqz v0, :cond_13

    .line 211
    const/16 v0, 0x14

    iget-object v1, p0, Ljug;->t:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 213
    :cond_13
    iget-object v0, p0, Ljug;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 214
    const/16 v0, 0x15

    iget-object v1, p0, Ljug;->u:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 216
    :cond_14
    iget-object v0, p0, Ljug;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 217
    const/16 v0, 0x16

    iget-object v1, p0, Ljug;->v:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 219
    :cond_15
    iget-object v0, p0, Ljug;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    .line 220
    const/16 v0, 0x17

    iget-object v1, p0, Ljug;->w:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 222
    :cond_16
    iget-object v0, p0, Ljug;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 223
    const/16 v0, 0x18

    iget-object v1, p0, Ljug;->x:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 225
    :cond_17
    iget-object v0, p0, Ljug;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 226
    const/16 v0, 0x19

    iget-object v1, p0, Ljug;->y:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 228
    :cond_18
    iget-object v0, p0, Ljug;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    .line 229
    const/16 v0, 0x1a

    iget-object v1, p0, Ljug;->z:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 231
    :cond_19
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 232
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 237
    iget-object v1, p0, Ljug;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    iget-object v2, p0, Ljug;->a:Ljava/lang/Boolean;

    .line 239
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 239
    add-int/2addr v0, v1

    .line 241
    :cond_0
    iget-object v1, p0, Ljug;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 242
    const/4 v1, 0x2

    iget-object v2, p0, Ljug;->b:Ljava/lang/Boolean;

    .line 243
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 243
    add-int/2addr v0, v1

    .line 245
    :cond_1
    iget-object v1, p0, Ljug;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 246
    const/4 v1, 0x3

    iget-object v2, p0, Ljug;->c:Ljava/lang/Boolean;

    .line 247
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 247
    add-int/2addr v0, v1

    .line 249
    :cond_2
    iget-object v1, p0, Ljug;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 250
    const/4 v1, 0x4

    iget-object v2, p0, Ljug;->d:Ljava/lang/Boolean;

    .line 251
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 251
    add-int/2addr v0, v1

    .line 253
    :cond_3
    iget-object v1, p0, Ljug;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 254
    const/4 v1, 0x5

    iget-object v2, p0, Ljug;->e:Ljava/lang/Integer;

    .line 255
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_4
    iget-object v1, p0, Ljug;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 258
    const/4 v1, 0x6

    iget-object v2, p0, Ljug;->f:Ljava/lang/Boolean;

    .line 259
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 259
    add-int/2addr v0, v1

    .line 261
    :cond_5
    iget-object v1, p0, Ljug;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 262
    const/4 v1, 0x7

    iget-object v2, p0, Ljug;->g:Ljava/lang/Boolean;

    .line 263
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 263
    add-int/2addr v0, v1

    .line 265
    :cond_6
    iget-object v1, p0, Ljug;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 266
    const/16 v1, 0x8

    iget-object v2, p0, Ljug;->h:Ljava/lang/Integer;

    .line 267
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_7
    iget-object v1, p0, Ljug;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 270
    const/16 v1, 0x9

    iget-object v2, p0, Ljug;->i:Ljava/lang/Boolean;

    .line 271
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 271
    add-int/2addr v0, v1

    .line 273
    :cond_8
    iget-object v1, p0, Ljug;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 274
    const/16 v1, 0xa

    iget-object v2, p0, Ljug;->j:Ljava/lang/Integer;

    .line 275
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_9
    iget-object v1, p0, Ljug;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 278
    const/16 v1, 0xb

    iget-object v2, p0, Ljug;->k:Ljava/lang/Boolean;

    .line 279
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 279
    add-int/2addr v0, v1

    .line 281
    :cond_a
    iget-object v1, p0, Ljug;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 282
    const/16 v1, 0xc

    iget-object v2, p0, Ljug;->l:Ljava/lang/Boolean;

    .line 283
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 283
    add-int/2addr v0, v1

    .line 285
    :cond_b
    iget-object v1, p0, Ljug;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 286
    const/16 v1, 0xd

    iget-object v2, p0, Ljug;->m:Ljava/lang/Boolean;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 287
    add-int/2addr v0, v1

    .line 289
    :cond_c
    iget-object v1, p0, Ljug;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 290
    const/16 v1, 0xe

    iget-object v2, p0, Ljug;->n:Ljava/lang/Boolean;

    .line 291
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 291
    add-int/2addr v0, v1

    .line 293
    :cond_d
    iget-object v1, p0, Ljug;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 294
    const/16 v1, 0xf

    iget-object v2, p0, Ljug;->o:Ljava/lang/Integer;

    .line 295
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_e
    iget-object v1, p0, Ljug;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    .line 298
    const/16 v1, 0x10

    iget-object v2, p0, Ljug;->p:Ljava/lang/Integer;

    .line 299
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_f
    iget-object v1, p0, Ljug;->q:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    .line 302
    const/16 v1, 0x11

    iget-object v2, p0, Ljug;->q:Ljava/lang/Boolean;

    .line 303
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 303
    add-int/2addr v0, v1

    .line 305
    :cond_10
    iget-object v1, p0, Ljug;->r:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 306
    const/16 v1, 0x12

    iget-object v2, p0, Ljug;->r:Ljava/lang/Integer;

    .line 307
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_11
    iget-object v1, p0, Ljug;->s:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    .line 310
    const/16 v1, 0x13

    iget-object v2, p0, Ljug;->s:Ljava/lang/Boolean;

    .line 311
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 311
    add-int/2addr v0, v1

    .line 313
    :cond_12
    iget-object v1, p0, Ljug;->t:Ljava/lang/Float;

    if-eqz v1, :cond_13

    .line 314
    const/16 v1, 0x14

    iget-object v2, p0, Ljug;->t:Ljava/lang/Float;

    .line 315
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 14569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 315
    add-int/2addr v0, v1

    .line 317
    :cond_13
    iget-object v1, p0, Ljug;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 318
    const/16 v1, 0x15

    iget-object v2, p0, Ljug;->u:Ljava/lang/Integer;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_14
    iget-object v1, p0, Ljug;->v:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    .line 322
    const/16 v1, 0x16

    iget-object v2, p0, Ljug;->v:Ljava/lang/Boolean;

    .line 323
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 323
    add-int/2addr v0, v1

    .line 325
    :cond_15
    iget-object v1, p0, Ljug;->w:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    .line 326
    const/16 v1, 0x17

    iget-object v2, p0, Ljug;->w:Ljava/lang/Integer;

    .line 327
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_16
    iget-object v1, p0, Ljug;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    .line 330
    const/16 v1, 0x18

    iget-object v2, p0, Ljug;->x:Ljava/lang/Integer;

    .line 331
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_17
    iget-object v1, p0, Ljug;->y:Ljava/lang/Boolean;

    if-eqz v1, :cond_18

    .line 334
    const/16 v1, 0x19

    iget-object v2, p0, Ljug;->y:Ljava/lang/Boolean;

    .line 335
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 335
    add-int/2addr v0, v1

    .line 337
    :cond_18
    iget-object v1, p0, Ljug;->z:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    .line 338
    const/16 v1, 0x1a

    iget-object v2, p0, Ljug;->z:Ljava/lang/Boolean;

    .line 339
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 339
    add-int/2addr v0, v1

    .line 341
    :cond_19
    return v0
.end method
