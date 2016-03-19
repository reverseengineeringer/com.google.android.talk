.class public final Lb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile i:[Lb;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Double;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Integer;

.field public h:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1152
    iput-object v1, p0, Lb;->a:Ljava/lang/String;

    .line 1153
    iput-object v1, p0, Lb;->b:Ljava/lang/Boolean;

    .line 1154
    iput-object v1, p0, Lb;->c:Ljava/lang/Double;

    .line 1155
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lb;->d:[Ljava/lang/String;

    .line 1156
    iput-object v1, p0, Lb;->e:Ljava/lang/Long;

    .line 1157
    iput-object v1, p0, Lb;->f:Ljava/lang/Long;

    .line 1158
    iput-object v1, p0, Lb;->g:Ljava/lang/Integer;

    .line 1159
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Lb;->h:[J

    .line 1160
    iput-object v1, p0, Lb;->eD:Llyd;

    .line 1161
    const/4 v0, -0x1

    iput v0, p0, Lb;->eE:I

    .line 149
    return-void
.end method

.method public static a()[Lb;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lb;->i:[Lb;

    if-nez v0, :cond_1

    .line 111
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lb;->i:[Lb;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [Lb;

    sput-object v0, Lb;->i:[Lb;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    sget-object v0, Lb;->i:[Lb;

    return-object v0

    .line 116
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
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3258
    sparse-switch v0, :sswitch_data_0

    .line 3262
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3263
    :sswitch_0
    return-object p0

    .line 3268
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb;->a:Ljava/lang/String;

    goto :goto_0

    .line 3272
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lb;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3276
    :sswitch_3
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lb;->c:Ljava/lang/Double;

    goto :goto_0

    .line 3280
    :sswitch_4
    const/16 v0, 0x22

    .line 3281
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3282
    iget-object v0, p0, Lb;->d:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 3283
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3284
    if-eqz v0, :cond_1

    .line 3285
    iget-object v3, p0, Lb;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3287
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3288
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3289
    invoke-virtual {p1}, Llxy;->a()I

    .line 3287
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3282
    :cond_2
    iget-object v0, p0, Lb;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3292
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3293
    iput-object v2, p0, Lb;->d:[Ljava/lang/String;

    goto :goto_0

    .line 3297
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lb;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 3301
    :sswitch_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lb;->e:Ljava/lang/Long;

    goto :goto_0

    .line 3305
    :sswitch_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lb;->f:Ljava/lang/Long;

    goto :goto_0

    .line 3309
    :sswitch_8
    const/16 v0, 0x40

    .line 3310
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3311
    iget-object v0, p0, Lb;->h:[J

    if-nez v0, :cond_5

    move v0, v1

    .line 3312
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 3313
    if-eqz v0, :cond_4

    .line 3314
    iget-object v3, p0, Lb;->h:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3316
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3317
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 3318
    invoke-virtual {p1}, Llxy;->a()I

    .line 3316
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3311
    :cond_5
    iget-object v0, p0, Lb;->h:[J

    array-length v0, v0

    goto :goto_3

    .line 3321
    :cond_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 3322
    iput-object v2, p0, Lb;->h:[J

    goto/16 :goto_0

    .line 3326
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3327
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3330
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 3331
    :goto_5
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 3332
    invoke-virtual {p1}, Llxy;->e()J

    .line 3333
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3335
    :cond_7
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 3336
    iget-object v2, p0, Lb;->h:[J

    if-nez v2, :cond_9

    move v2, v1

    .line 3337
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 3338
    if-eqz v2, :cond_8

    .line 3339
    iget-object v4, p0, Lb;->h:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3341
    :cond_8
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_a

    .line 3342
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 3341
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3336
    :cond_9
    iget-object v2, p0, Lb;->h:[J

    array-length v2, v2

    goto :goto_6

    .line 3344
    :cond_a
    iput-object v0, p0, Lb;->h:[J

    .line 3345
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3258
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 168
    const/4 v0, 0x1

    iget-object v2, p0, Lb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 169
    iget-object v0, p0, Lb;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x2

    iget-object v2, p0, Lb;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 172
    :cond_0
    iget-object v0, p0, Lb;->c:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x3

    iget-object v2, p0, Lb;->c:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 175
    :cond_1
    iget-object v0, p0, Lb;->d:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 176
    :goto_0
    iget-object v2, p0, Lb;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 177
    iget-object v2, p0, Lb;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 178
    if-eqz v2, :cond_2

    .line 179
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lb;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 184
    const/4 v0, 0x5

    iget-object v2, p0, Lb;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 186
    :cond_4
    iget-object v0, p0, Lb;->e:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 187
    const/4 v0, 0x6

    iget-object v2, p0, Lb;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 189
    :cond_5
    iget-object v0, p0, Lb;->f:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 190
    const/4 v0, 0x7

    iget-object v2, p0, Lb;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 192
    :cond_6
    iget-object v0, p0, Lb;->h:[J

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb;->h:[J

    array-length v0, v0

    if-lez v0, :cond_7

    .line 193
    :goto_1
    iget-object v0, p0, Lb;->h:[J

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 194
    const/16 v0, 0x8

    iget-object v2, p0, Lb;->h:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 198
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 203
    const/4 v1, 0x1

    iget-object v3, p0, Lb;->a:Ljava/lang/String;

    .line 204
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    iget-object v1, p0, Lb;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x2

    iget-object v3, p0, Lb;->b:Ljava/lang/Boolean;

    .line 207
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 207
    add-int/2addr v0, v1

    .line 209
    :cond_0
    iget-object v1, p0, Lb;->c:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 210
    const/4 v1, 0x3

    iget-object v3, p0, Lb;->c:Ljava/lang/Double;

    .line 211
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 2561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 211
    add-int/2addr v0, v1

    .line 213
    :cond_1
    iget-object v1, p0, Lb;->d:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lb;->d:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 216
    :goto_0
    iget-object v5, p0, Lb;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 217
    iget-object v5, p0, Lb;->d:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 218
    if-eqz v5, :cond_2

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 221
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 216
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_3
    add-int/2addr v0, v3

    .line 225
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 227
    :cond_4
    iget-object v1, p0, Lb;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 228
    const/4 v1, 0x5

    iget-object v3, p0, Lb;->g:Ljava/lang/Integer;

    .line 229
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_5
    iget-object v1, p0, Lb;->e:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 232
    const/4 v1, 0x6

    iget-object v3, p0, Lb;->e:Ljava/lang/Long;

    .line 233
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_6
    iget-object v1, p0, Lb;->f:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 236
    const/4 v1, 0x7

    iget-object v3, p0, Lb;->f:Ljava/lang/Long;

    .line 237
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :cond_7
    iget-object v1, p0, Lb;->h:[J

    if-eqz v1, :cond_9

    iget-object v1, p0, Lb;->h:[J

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    .line 241
    :goto_1
    iget-object v3, p0, Lb;->h:[J

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 242
    iget-object v3, p0, Lb;->h:[J

    aget-wide v4, v3, v2

    .line 2765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v3

    .line 244
    add-int/2addr v1, v3

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    :cond_8
    add-int/2addr v0, v1

    .line 247
    iget-object v1, p0, Lb;->h:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 249
    :cond_9
    return v0
.end method
