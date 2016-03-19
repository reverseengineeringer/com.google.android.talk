.class public final Ljws;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljws;",
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

.field public p:I

.field public q:[I

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Llyb;-><init>()V

    .line 91
    iput-object v1, p0, Ljws;->a:[B

    .line 92
    iput-object v1, p0, Ljws;->b:[B

    .line 93
    iput-object v1, p0, Ljws;->c:Ljava/lang/Integer;

    .line 94
    iput-object v1, p0, Ljws;->d:Ljava/lang/Boolean;

    .line 95
    iput-object v1, p0, Ljws;->e:Ljava/lang/Long;

    .line 96
    iput-object v1, p0, Ljws;->f:Ljava/lang/Long;

    .line 97
    iput-object v1, p0, Ljws;->g:Ljava/lang/Integer;

    .line 98
    iput-object v1, p0, Ljws;->h:Ljava/lang/Boolean;

    .line 99
    iput-object v1, p0, Ljws;->i:Ljava/lang/Long;

    .line 100
    iput-object v1, p0, Ljws;->j:Ljava/lang/Long;

    .line 101
    iput-object v1, p0, Ljws;->k:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Ljws;->l:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Ljws;->m:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Ljws;->n:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Ljws;->o:Ljava/lang/Integer;

    .line 106
    const/high16 v0, -0x80000000

    iput v0, p0, Ljws;->p:I

    .line 107
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljws;->q:[I

    .line 108
    iput-object v1, p0, Ljws;->r:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Ljws;->eD:Llyd;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Ljws;->eE:I

    .line 111
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3256
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3257
    sparse-switch v0, :sswitch_data_0

    .line 3261
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3262
    :sswitch_0
    return-object p0

    .line 3267
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljws;->a:[B

    goto :goto_0

    .line 3271
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljws;->b:[B

    goto :goto_0

    .line 3275
    :sswitch_3
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljws;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3279
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljws;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 3283
    :sswitch_5
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljws;->i:Ljava/lang/Long;

    goto :goto_0

    .line 3287
    :sswitch_6
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljws;->f:Ljava/lang/Long;

    goto :goto_0

    .line 3291
    :sswitch_7
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljws;->e:Ljava/lang/Long;

    goto :goto_0

    .line 3295
    :sswitch_8
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljws;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 3299
    :sswitch_9
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljws;->j:Ljava/lang/Long;

    goto :goto_0

    .line 3303
    :sswitch_a
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljws;->k:Ljava/lang/String;

    goto :goto_0

    .line 3307
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljws;->l:Ljava/lang/String;

    goto :goto_0

    .line 3311
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljws;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3315
    :sswitch_d
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljws;->m:Ljava/lang/String;

    goto/16 :goto_0

    .line 3319
    :sswitch_e
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljws;->n:Ljava/lang/String;

    goto/16 :goto_0

    .line 3323
    :sswitch_f
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljws;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3327
    :sswitch_10
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3328
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3336
    :pswitch_0
    iput v0, p0, Ljws;->p:I

    goto/16 :goto_0

    .line 3342
    :sswitch_11
    const/16 v0, 0xa0

    .line 3343
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 3344
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 3346
    :goto_1
    if-ge v3, v4, :cond_2

    .line 3347
    if-eqz v3, :cond_1

    .line 3348
    invoke-virtual {p1}, Llxy;->a()I

    .line 3350
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 3351
    packed-switch v6, :pswitch_data_1

    :pswitch_1
    move v0, v1

    .line 3346
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 3417
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 3421
    :cond_2
    if-eqz v1, :cond_0

    .line 3422
    iget-object v0, p0, Ljws;->q:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 3423
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 3424
    iput-object v5, p0, Ljws;->q:[I

    goto/16 :goto_0

    .line 3422
    :cond_3
    iget-object v0, p0, Ljws;->q:[I

    array-length v0, v0

    goto :goto_3

    .line 3426
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 3427
    if-eqz v0, :cond_5

    .line 3428
    iget-object v4, p0, Ljws;->q:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3430
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3431
    iput-object v3, p0, Ljws;->q:[I

    goto/16 :goto_0

    .line 3437
    :sswitch_12
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3438
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3441
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 3442
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 3443
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    :pswitch_3
    goto :goto_4

    .line 3509
    :pswitch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3513
    :cond_6
    if-eqz v0, :cond_a

    .line 3514
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 3515
    iget-object v1, p0, Ljws;->q:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 3516
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 3517
    if-eqz v1, :cond_7

    .line 3518
    iget-object v0, p0, Ljws;->q:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3520
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 3521
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 3522
    packed-switch v5, :pswitch_data_3

    :pswitch_5
    goto :goto_6

    .line 3588
    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 3515
    :cond_8
    iget-object v1, p0, Ljws;->q:[I

    array-length v1, v1

    goto :goto_5

    .line 3592
    :cond_9
    iput-object v4, p0, Ljws;->q:[I

    .line 3594
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3598
    :sswitch_13
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljws;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 3257
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

    .line 3328
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

    .line 3351
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

    .line 3443
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

    .line 3522
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
    .line 116
    const/4 v0, 0x1

    iget-object v1, p0, Ljws;->a:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 117
    iget-object v0, p0, Ljws;->b:[B

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x2

    iget-object v1, p0, Ljws;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 120
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Ljws;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 121
    iget-object v0, p0, Ljws;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x5

    iget-object v1, p0, Ljws;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 124
    :cond_1
    iget-object v0, p0, Ljws;->i:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x6

    iget-object v1, p0, Ljws;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 127
    :cond_2
    iget-object v0, p0, Ljws;->f:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 128
    const/16 v0, 0x8

    iget-object v1, p0, Ljws;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 130
    :cond_3
    iget-object v0, p0, Ljws;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 131
    const/16 v0, 0x9

    iget-object v1, p0, Ljws;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 133
    :cond_4
    iget-object v0, p0, Ljws;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 134
    const/16 v0, 0xa

    iget-object v1, p0, Ljws;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 136
    :cond_5
    iget-object v0, p0, Ljws;->j:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 137
    const/16 v0, 0xb

    iget-object v1, p0, Ljws;->j:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 139
    :cond_6
    iget-object v0, p0, Ljws;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 140
    const/16 v0, 0xd

    iget-object v1, p0, Ljws;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 142
    :cond_7
    iget-object v0, p0, Ljws;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 143
    const/16 v0, 0xe

    iget-object v1, p0, Ljws;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 145
    :cond_8
    iget-object v0, p0, Ljws;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 146
    const/16 v0, 0xf

    iget-object v1, p0, Ljws;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 148
    :cond_9
    iget-object v0, p0, Ljws;->m:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 149
    const/16 v0, 0x10

    iget-object v1, p0, Ljws;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 151
    :cond_a
    iget-object v0, p0, Ljws;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 152
    const/16 v0, 0x11

    iget-object v1, p0, Ljws;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 154
    :cond_b
    iget-object v0, p0, Ljws;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 155
    const/16 v0, 0x12

    iget-object v1, p0, Ljws;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 157
    :cond_c
    iget v0, p0, Ljws;->p:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_d

    .line 158
    const/16 v0, 0x13

    iget v1, p0, Ljws;->p:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 160
    :cond_d
    iget-object v0, p0, Ljws;->q:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljws;->q:[I

    array-length v0, v0

    if-lez v0, :cond_e

    .line 161
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljws;->q:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 162
    const/16 v1, 0x14

    iget-object v2, p0, Ljws;->q:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_e
    iget-object v0, p0, Ljws;->r:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 166
    const/16 v0, 0x15

    iget-object v1, p0, Ljws;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 168
    :cond_f
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 169
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 174
    const/4 v2, 0x1

    iget-object v3, p0, Ljws;->a:[B

    .line 175
    invoke-static {v2, v3}, Llxz;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 176
    iget-object v2, p0, Ljws;->b:[B

    if-eqz v2, :cond_0

    .line 177
    const/4 v2, 0x2

    iget-object v3, p0, Ljws;->b:[B

    .line 178
    invoke-static {v2, v3}, Llxz;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    :cond_0
    const/4 v2, 0x3

    iget-object v3, p0, Ljws;->c:Ljava/lang/Integer;

    .line 181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    iget-object v2, p0, Ljws;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 183
    const/4 v2, 0x5

    iget-object v3, p0, Ljws;->d:Ljava/lang/Boolean;

    .line 184
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 184
    add-int/2addr v0, v2

    .line 186
    :cond_1
    iget-object v2, p0, Ljws;->i:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 187
    const/4 v2, 0x6

    iget-object v3, p0, Ljws;->i:Ljava/lang/Long;

    .line 188
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 190
    :cond_2
    iget-object v2, p0, Ljws;->f:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 191
    const/16 v2, 0x8

    iget-object v3, p0, Ljws;->f:Ljava/lang/Long;

    .line 192
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    :cond_3
    iget-object v2, p0, Ljws;->e:Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 195
    const/16 v2, 0x9

    iget-object v3, p0, Ljws;->e:Ljava/lang/Long;

    .line 196
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 198
    :cond_4
    iget-object v2, p0, Ljws;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 199
    const/16 v2, 0xa

    iget-object v3, p0, Ljws;->g:Ljava/lang/Integer;

    .line 200
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 202
    :cond_5
    iget-object v2, p0, Ljws;->j:Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 203
    const/16 v2, 0xb

    iget-object v3, p0, Ljws;->j:Ljava/lang/Long;

    .line 204
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 206
    :cond_6
    iget-object v2, p0, Ljws;->k:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 207
    const/16 v2, 0xd

    iget-object v3, p0, Ljws;->k:Ljava/lang/String;

    .line 208
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 210
    :cond_7
    iget-object v2, p0, Ljws;->l:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 211
    const/16 v2, 0xe

    iget-object v3, p0, Ljws;->l:Ljava/lang/String;

    .line 212
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 214
    :cond_8
    iget-object v2, p0, Ljws;->h:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    .line 215
    const/16 v2, 0xf

    iget-object v3, p0, Ljws;->h:Ljava/lang/Boolean;

    .line 216
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 216
    add-int/2addr v0, v2

    .line 218
    :cond_9
    iget-object v2, p0, Ljws;->m:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 219
    const/16 v2, 0x10

    iget-object v3, p0, Ljws;->m:Ljava/lang/String;

    .line 220
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 222
    :cond_a
    iget-object v2, p0, Ljws;->n:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 223
    const/16 v2, 0x11

    iget-object v3, p0, Ljws;->n:Ljava/lang/String;

    .line 224
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 226
    :cond_b
    iget-object v2, p0, Ljws;->o:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    .line 227
    const/16 v2, 0x12

    iget-object v3, p0, Ljws;->o:Ljava/lang/Integer;

    .line 228
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 230
    :cond_c
    iget v2, p0, Ljws;->p:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_d

    .line 231
    const/16 v2, 0x13

    iget v3, p0, Ljws;->p:I

    .line 232
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 234
    :cond_d
    iget-object v2, p0, Ljws;->q:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Ljws;->q:[I

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v1

    .line 236
    :goto_0
    iget-object v3, p0, Ljws;->q:[I

    array-length v3, v3

    if-ge v1, v3, :cond_e

    .line 237
    iget-object v3, p0, Ljws;->q:[I

    aget v3, v3, v1

    .line 239
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_e
    add-int/2addr v0, v2

    .line 242
    iget-object v1, p0, Ljws;->q:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 244
    :cond_f
    iget-object v1, p0, Ljws;->r:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 245
    const/16 v1, 0x15

    iget-object v2, p0, Ljws;->r:Ljava/lang/String;

    .line 246
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_10
    return v0
.end method
