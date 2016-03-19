.class public final Ljjw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljjx;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Double;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/String;

.field public r:[Ljkd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1200
    iput-object v1, p0, Ljjw;->a:Ljava/lang/Integer;

    .line 1201
    iput-object v1, p0, Ljjw;->b:Ljava/lang/Integer;

    .line 1202
    iput-object v1, p0, Ljjw;->c:Ljava/lang/Float;

    .line 1203
    iput-object v1, p0, Ljjw;->d:Ljava/lang/Float;

    .line 1204
    iput-object v1, p0, Ljjw;->e:Ljava/lang/String;

    .line 1205
    iput-object v1, p0, Ljjw;->f:Ljava/lang/String;

    .line 1206
    iput-object v1, p0, Ljjw;->g:Ljava/lang/String;

    .line 1207
    iput-object v1, p0, Ljjw;->h:Ljava/lang/String;

    .line 1208
    iput-object v1, p0, Ljjw;->i:Ljjx;

    .line 1209
    iput-object v1, p0, Ljjw;->j:Ljava/lang/String;

    .line 1210
    iput-object v1, p0, Ljjw;->k:Ljava/lang/String;

    .line 1211
    iput-object v1, p0, Ljjw;->l:Ljava/lang/String;

    .line 1212
    iput-object v1, p0, Ljjw;->m:Ljava/lang/String;

    .line 1213
    iput-object v1, p0, Ljjw;->n:Ljava/lang/Boolean;

    .line 1214
    iput-object v1, p0, Ljjw;->o:Ljava/lang/Double;

    .line 1215
    iput-object v1, p0, Ljjw;->p:Ljava/lang/Boolean;

    .line 1216
    iput-object v1, p0, Ljjw;->q:Ljava/lang/String;

    .line 1217
    invoke-static {}, Ljkd;->d()[Ljkd;

    move-result-object v0

    iput-object v0, p0, Ljjw;->r:[Ljkd;

    .line 1218
    iput-object v1, p0, Ljjw;->eD:Llyd;

    .line 1219
    const/4 v0, -0x1

    iput v0, p0, Ljjw;->eE:I

    .line 197
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4376
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4377
    sparse-switch v0, :sswitch_data_0

    .line 4381
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4382
    :sswitch_0
    return-object p0

    .line 4387
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljjw;->c:Ljava/lang/Float;

    goto :goto_0

    .line 4391
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljjw;->d:Ljava/lang/Float;

    goto :goto_0

    .line 4395
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->e:Ljava/lang/String;

    goto :goto_0

    .line 4399
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->f:Ljava/lang/String;

    goto :goto_0

    .line 4403
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->g:Ljava/lang/String;

    goto :goto_0

    .line 4407
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->h:Ljava/lang/String;

    goto :goto_0

    .line 4411
    :sswitch_7
    iget-object v0, p0, Ljjw;->i:Ljjx;

    if-nez v0, :cond_1

    .line 4412
    new-instance v0, Ljjx;

    invoke-direct {v0}, Ljjx;-><init>()V

    iput-object v0, p0, Ljjw;->i:Ljjx;

    .line 4414
    :cond_1
    iget-object v0, p0, Ljjw;->i:Ljjx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4418
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->j:Ljava/lang/String;

    goto :goto_0

    .line 4422
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->k:Ljava/lang/String;

    goto :goto_0

    .line 4426
    :sswitch_a
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->l:Ljava/lang/String;

    goto :goto_0

    .line 4430
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->m:Ljava/lang/String;

    goto :goto_0

    .line 4434
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljjw;->n:Ljava/lang/Boolean;

    goto :goto_0

    .line 4438
    :sswitch_d
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljjw;->o:Ljava/lang/Double;

    goto/16 :goto_0

    .line 4442
    :sswitch_e
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjw;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4446
    :sswitch_f
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjw;->b:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4450
    :sswitch_10
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljjw;->p:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4454
    :sswitch_11
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjw;->q:Ljava/lang/String;

    goto/16 :goto_0

    .line 4458
    :sswitch_12
    const/16 v0, 0x92

    .line 4459
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4460
    iget-object v0, p0, Ljjw;->r:[Ljkd;

    if-nez v0, :cond_3

    move v0, v1

    .line 4461
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljkd;

    .line 4463
    if-eqz v0, :cond_2

    .line 4464
    iget-object v3, p0, Ljjw;->r:[Ljkd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4466
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 4467
    new-instance v3, Ljkd;

    invoke-direct {v3}, Ljkd;-><init>()V

    aput-object v3, v2, v0

    .line 4468
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4469
    invoke-virtual {p1}, Llxy;->a()I

    .line 4466
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4460
    :cond_3
    iget-object v0, p0, Ljjw;->r:[Ljkd;

    array-length v0, v0

    goto :goto_1

    .line 4472
    :cond_4
    new-instance v3, Ljkd;

    invoke-direct {v3}, Ljkd;-><init>()V

    aput-object v3, v2, v0

    .line 4473
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4474
    iput-object v2, p0, Ljjw;->r:[Ljkd;

    goto/16 :goto_0

    .line 4377
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x69 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Ljjw;->c:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iget-object v1, p0, Ljjw;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 229
    :cond_0
    iget-object v0, p0, Ljjw;->d:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x2

    iget-object v1, p0, Ljjw;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 232
    :cond_1
    iget-object v0, p0, Ljjw;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 233
    const/4 v0, 0x3

    iget-object v1, p0, Ljjw;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 235
    :cond_2
    iget-object v0, p0, Ljjw;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 236
    const/4 v0, 0x4

    iget-object v1, p0, Ljjw;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 238
    :cond_3
    iget-object v0, p0, Ljjw;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 239
    const/4 v0, 0x5

    iget-object v1, p0, Ljjw;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 241
    :cond_4
    iget-object v0, p0, Ljjw;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 242
    const/4 v0, 0x6

    iget-object v1, p0, Ljjw;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 244
    :cond_5
    iget-object v0, p0, Ljjw;->i:Ljjx;

    if-eqz v0, :cond_6

    .line 245
    const/4 v0, 0x7

    iget-object v1, p0, Ljjw;->i:Ljjx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 247
    :cond_6
    iget-object v0, p0, Ljjw;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 248
    const/16 v0, 0x8

    iget-object v1, p0, Ljjw;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 250
    :cond_7
    iget-object v0, p0, Ljjw;->k:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 251
    const/16 v0, 0x9

    iget-object v1, p0, Ljjw;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 253
    :cond_8
    iget-object v0, p0, Ljjw;->l:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 254
    const/16 v0, 0xa

    iget-object v1, p0, Ljjw;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 256
    :cond_9
    iget-object v0, p0, Ljjw;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 257
    const/16 v0, 0xb

    iget-object v1, p0, Ljjw;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 259
    :cond_a
    iget-object v0, p0, Ljjw;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 260
    const/16 v0, 0xc

    iget-object v1, p0, Ljjw;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 262
    :cond_b
    iget-object v0, p0, Ljjw;->o:Ljava/lang/Double;

    if-eqz v0, :cond_c

    .line 263
    const/16 v0, 0xd

    iget-object v1, p0, Ljjw;->o:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 265
    :cond_c
    iget-object v0, p0, Ljjw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 266
    const/16 v0, 0xe

    iget-object v1, p0, Ljjw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 268
    :cond_d
    iget-object v0, p0, Ljjw;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 269
    const/16 v0, 0xf

    iget-object v1, p0, Ljjw;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 271
    :cond_e
    iget-object v0, p0, Ljjw;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 272
    const/16 v0, 0x10

    iget-object v1, p0, Ljjw;->p:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 274
    :cond_f
    iget-object v0, p0, Ljjw;->q:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 275
    const/16 v0, 0x11

    iget-object v1, p0, Ljjw;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 277
    :cond_10
    iget-object v0, p0, Ljjw;->r:[Ljkd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljjw;->r:[Ljkd;

    array-length v0, v0

    if-lez v0, :cond_12

    .line 278
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljjw;->r:[Ljkd;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 279
    iget-object v1, p0, Ljjw;->r:[Ljkd;

    aget-object v1, v1, v0

    .line 280
    if-eqz v1, :cond_11

    .line 281
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 278
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_12
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 286
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 290
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 291
    iget-object v1, p0, Ljjw;->c:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 292
    const/4 v1, 0x1

    iget-object v2, p0, Ljjw;->c:Ljava/lang/Float;

    .line 293
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 293
    add-int/2addr v0, v1

    .line 295
    :cond_0
    iget-object v1, p0, Ljjw;->d:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 296
    const/4 v1, 0x2

    iget-object v2, p0, Ljjw;->d:Ljava/lang/Float;

    .line 297
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 297
    add-int/2addr v0, v1

    .line 299
    :cond_1
    iget-object v1, p0, Ljjw;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 300
    const/4 v1, 0x3

    iget-object v2, p0, Ljjw;->e:Ljava/lang/String;

    .line 301
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_2
    iget-object v1, p0, Ljjw;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 304
    const/4 v1, 0x4

    iget-object v2, p0, Ljjw;->f:Ljava/lang/String;

    .line 305
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_3
    iget-object v1, p0, Ljjw;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 308
    const/4 v1, 0x5

    iget-object v2, p0, Ljjw;->g:Ljava/lang/String;

    .line 309
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_4
    iget-object v1, p0, Ljjw;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 312
    const/4 v1, 0x6

    iget-object v2, p0, Ljjw;->h:Ljava/lang/String;

    .line 313
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_5
    iget-object v1, p0, Ljjw;->i:Ljjx;

    if-eqz v1, :cond_6

    .line 316
    const/4 v1, 0x7

    iget-object v2, p0, Ljjw;->i:Ljjx;

    .line 317
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_6
    iget-object v1, p0, Ljjw;->j:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 320
    const/16 v1, 0x8

    iget-object v2, p0, Ljjw;->j:Ljava/lang/String;

    .line 321
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    :cond_7
    iget-object v1, p0, Ljjw;->k:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 324
    const/16 v1, 0x9

    iget-object v2, p0, Ljjw;->k:Ljava/lang/String;

    .line 325
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_8
    iget-object v1, p0, Ljjw;->l:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 328
    const/16 v1, 0xa

    iget-object v2, p0, Ljjw;->l:Ljava/lang/String;

    .line 329
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    :cond_9
    iget-object v1, p0, Ljjw;->m:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 332
    const/16 v1, 0xb

    iget-object v2, p0, Ljjw;->m:Ljava/lang/String;

    .line 333
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    :cond_a
    iget-object v1, p0, Ljjw;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 336
    const/16 v1, 0xc

    iget-object v2, p0, Ljjw;->n:Ljava/lang/Boolean;

    .line 337
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 337
    add-int/2addr v0, v1

    .line 339
    :cond_b
    iget-object v1, p0, Ljjw;->o:Ljava/lang/Double;

    if-eqz v1, :cond_c

    .line 340
    const/16 v1, 0xd

    iget-object v2, p0, Ljjw;->o:Ljava/lang/Double;

    .line 341
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 3561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 341
    add-int/2addr v0, v1

    .line 343
    :cond_c
    iget-object v1, p0, Ljjw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 344
    const/16 v1, 0xe

    iget-object v2, p0, Ljjw;->a:Ljava/lang/Integer;

    .line 345
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_d
    iget-object v1, p0, Ljjw;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 348
    const/16 v1, 0xf

    iget-object v2, p0, Ljjw;->b:Ljava/lang/Integer;

    .line 349
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_e
    iget-object v1, p0, Ljjw;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    .line 352
    const/16 v1, 0x10

    iget-object v2, p0, Ljjw;->p:Ljava/lang/Boolean;

    .line 353
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 353
    add-int/2addr v0, v1

    .line 355
    :cond_f
    iget-object v1, p0, Ljjw;->q:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 356
    const/16 v1, 0x11

    iget-object v2, p0, Ljjw;->q:Ljava/lang/String;

    .line 357
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_10
    iget-object v1, p0, Ljjw;->r:[Ljkd;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ljjw;->r:[Ljkd;

    array-length v1, v1

    if-lez v1, :cond_13

    .line 360
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljjw;->r:[Ljkd;

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 361
    iget-object v2, p0, Ljjw;->r:[Ljkd;

    aget-object v2, v2, v0

    .line 362
    if-eqz v2, :cond_11

    .line 363
    const/16 v3, 0x12

    .line 364
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 360
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_12
    move v0, v1

    .line 368
    :cond_13
    return v0
.end method
