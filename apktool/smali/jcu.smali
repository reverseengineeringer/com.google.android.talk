.class public final Ljcu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Long;

.field public e:[I

.field public f:Ljct;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1096
    iput-object v1, p0, Ljcu;->a:Ljava/lang/Integer;

    .line 1097
    iput-object v1, p0, Ljcu;->b:Ljava/lang/Integer;

    .line 1098
    iput-object v1, p0, Ljcu;->c:Ljava/lang/Integer;

    .line 1099
    iput-object v1, p0, Ljcu;->d:Ljava/lang/Long;

    .line 1100
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljcu;->e:[I

    .line 1101
    iput-object v1, p0, Ljcu;->f:Ljct;

    .line 1102
    iput-object v1, p0, Ljcu;->g:Ljava/lang/Boolean;

    .line 1103
    iput-object v1, p0, Ljcu;->h:Ljava/lang/Boolean;

    .line 1104
    iput-object v1, p0, Ljcu;->eD:Llyd;

    .line 1105
    const/4 v0, -0x1

    iput v0, p0, Ljcu;->eE:I

    .line 93
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3191
    sparse-switch v0, :sswitch_data_0

    .line 3195
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3196
    :sswitch_0
    return-object p0

    .line 3201
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3202
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3207
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcu;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3213
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcu;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3217
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3218
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3223
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcu;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3229
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljcu;->d:Ljava/lang/Long;

    goto :goto_0

    .line 3233
    :sswitch_5
    const/16 v0, 0x30

    .line 3234
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 3235
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 3237
    :goto_1
    if-ge v3, v4, :cond_2

    .line 3238
    if-eqz v3, :cond_1

    .line 3239
    invoke-virtual {p1}, Llxy;->a()I

    .line 3241
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 3242
    packed-switch v6, :pswitch_data_2

    move v0, v1

    .line 3237
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 3261
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 3265
    :cond_2
    if-eqz v1, :cond_0

    .line 3266
    iget-object v0, p0, Ljcu;->e:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 3267
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 3268
    iput-object v5, p0, Ljcu;->e:[I

    goto :goto_0

    .line 3266
    :cond_3
    iget-object v0, p0, Ljcu;->e:[I

    array-length v0, v0

    goto :goto_3

    .line 3270
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 3271
    if-eqz v0, :cond_5

    .line 3272
    iget-object v4, p0, Ljcu;->e:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3274
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3275
    iput-object v3, p0, Ljcu;->e:[I

    goto/16 :goto_0

    .line 3281
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3282
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3285
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 3286
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 3287
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    goto :goto_4

    .line 3306
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3310
    :cond_6
    if-eqz v0, :cond_a

    .line 3311
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 3312
    iget-object v1, p0, Ljcu;->e:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 3313
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 3314
    if-eqz v1, :cond_7

    .line 3315
    iget-object v0, p0, Ljcu;->e:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3317
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 3318
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 3319
    packed-switch v5, :pswitch_data_4

    goto :goto_6

    .line 3338
    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 3312
    :cond_8
    iget-object v1, p0, Ljcu;->e:[I

    array-length v1, v1

    goto :goto_5

    .line 3342
    :cond_9
    iput-object v4, p0, Ljcu;->e:[I

    .line 3344
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3348
    :sswitch_7
    iget-object v0, p0, Ljcu;->f:Ljct;

    if-nez v0, :cond_b

    .line 3349
    new-instance v0, Ljct;

    invoke-direct {v0}, Ljct;-><init>()V

    iput-object v0, p0, Ljcu;->f:Ljct;

    .line 3351
    :cond_b
    iget-object v0, p0, Ljcu;->f:Ljct;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3355
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljcu;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3359
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljcu;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3191
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x32 -> :sswitch_6
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
    .end sparse-switch

    .line 3202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3218
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3242
    :pswitch_data_2
    .packed-switch 0x1
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

    .line 3287
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 3319
    :pswitch_data_4
    .packed-switch 0x1
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
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Ljcu;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iget-object v1, p0, Ljcu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 115
    :cond_0
    iget-object v0, p0, Ljcu;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Ljcu;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 118
    :cond_1
    iget-object v0, p0, Ljcu;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 119
    const/4 v0, 0x4

    iget-object v1, p0, Ljcu;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 121
    :cond_2
    iget-object v0, p0, Ljcu;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 122
    const/4 v0, 0x5

    iget-object v1, p0, Ljcu;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 124
    :cond_3
    iget-object v0, p0, Ljcu;->e:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljcu;->e:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 125
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljcu;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 126
    const/4 v1, 0x6

    iget-object v2, p0, Ljcu;->e:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Ljcu;->f:Ljct;

    if-eqz v0, :cond_5

    .line 130
    const/16 v0, 0x8

    iget-object v1, p0, Ljcu;->f:Ljct;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 132
    :cond_5
    iget-object v0, p0, Ljcu;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 133
    const/16 v0, 0x9

    iget-object v1, p0, Ljcu;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 135
    :cond_6
    iget-object v0, p0, Ljcu;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 136
    const/16 v0, 0xa

    iget-object v1, p0, Ljcu;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 138
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 139
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 144
    iget-object v2, p0, Ljcu;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 145
    const/4 v2, 0x1

    iget-object v3, p0, Ljcu;->a:Ljava/lang/Integer;

    .line 146
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 148
    :cond_0
    iget-object v2, p0, Ljcu;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 149
    const/4 v2, 0x3

    iget-object v3, p0, Ljcu;->b:Ljava/lang/Integer;

    .line 150
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 152
    :cond_1
    iget-object v2, p0, Ljcu;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 153
    const/4 v2, 0x4

    iget-object v3, p0, Ljcu;->c:Ljava/lang/Integer;

    .line 154
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 156
    :cond_2
    iget-object v2, p0, Ljcu;->d:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 157
    const/4 v2, 0x5

    iget-object v3, p0, Ljcu;->d:Ljava/lang/Long;

    .line 158
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    :cond_3
    iget-object v2, p0, Ljcu;->e:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljcu;->e:[I

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    .line 162
    :goto_0
    iget-object v3, p0, Ljcu;->e:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 163
    iget-object v3, p0, Ljcu;->e:[I

    aget v3, v3, v1

    .line 165
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_4
    add-int/2addr v0, v2

    .line 168
    iget-object v1, p0, Ljcu;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 170
    :cond_5
    iget-object v1, p0, Ljcu;->f:Ljct;

    if-eqz v1, :cond_6

    .line 171
    const/16 v1, 0x8

    iget-object v2, p0, Ljcu;->f:Ljct;

    .line 172
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_6
    iget-object v1, p0, Ljcu;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 175
    const/16 v1, 0x9

    iget-object v2, p0, Ljcu;->g:Ljava/lang/Boolean;

    .line 176
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 176
    add-int/2addr v0, v1

    .line 178
    :cond_7
    iget-object v1, p0, Ljcu;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 179
    const/16 v1, 0xa

    iget-object v2, p0, Ljcu;->h:Ljava/lang/Boolean;

    .line 180
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 180
    add-int/2addr v0, v1

    .line 182
    :cond_8
    return v0
.end method
