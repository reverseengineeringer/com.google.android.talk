.class public final Lacv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Lacv;->d:I

    .line 68
    iput v1, p0, Lacv;->e:I

    .line 99
    iput-object p1, p0, Lacv;->a:Ljava/io/InputStream;

    .line 104
    const/16 v0, 0x10

    invoke-static {v0}, Lacv;->e(I)I

    move-result v0

    .line 105
    new-array v0, v0, [B

    iput-object v0, p0, Lacv;->b:[B

    .line 106
    iput-boolean v1, p0, Lacv;->c:Z

    .line 107
    return-void
.end method

.method private d(I)Z
    .locals 10

    .prologue
    const/4 v4, -0x1

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    const-string v0, "fill"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/StressMode;->a(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lacv;->d:I

    if-ge p1, v0, :cond_0

    .line 264
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Index %d is before buffer %d"

    new-array v4, v9, [Ljava/lang/Object;

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v1, p0, Lacv;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget v0, p0, Lacv;->d:I

    sub-int v0, p1, v0

    .line 271
    iget-object v3, p0, Lacv;->a:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 272
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    move v0, v1

    .line 311
    :goto_0
    return v0

    .line 277
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 278
    iget-object v5, p0, Lacv;->b:[B

    array-length v5, v5

    if-le v3, v5, :cond_2

    .line 279
    iget-boolean v5, p0, Lacv;->c:Z

    if-eqz v5, :cond_4

    .line 280
    invoke-virtual {p0, p1}, Lacv;->c(I)V

    .line 281
    iget v0, p0, Lacv;->d:I

    sub-int v0, p1, v0

    .line 295
    :cond_2
    :goto_1
    :try_start_0
    iget-object v3, p0, Lacv;->a:Ljava/io/InputStream;

    iget-object v5, p0, Lacv;->b:[B

    iget v6, p0, Lacv;->e:I

    iget-object v7, p0, Lacv;->b:[B

    array-length v7, v7

    iget v8, p0, Lacv;->e:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 299
    :goto_2
    if-eq v3, v4, :cond_5

    .line 300
    iget v4, p0, Lacv;->e:I

    add-int/2addr v3, v4

    iput v3, p0, Lacv;->e:I

    .line 306
    :goto_3
    const-string v3, "InputStreamBuffer"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    const-string v3, "fill %d      buffer: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    :cond_3
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    .line 311
    iget v3, p0, Lacv;->e:I

    if-ge v0, v3, :cond_6

    move v0, v2

    goto :goto_0

    .line 283
    :cond_4
    invoke-static {v3}, Lacv;->e(I)I

    move-result v3

    .line 284
    const-string v5, "Increasing buffer length from %d to %d. Bad buffer size chosen, or advanceTo() not called."

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lacv;->b:[B

    array-length v7, v7

    .line 287
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 284
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    iget-object v5, p0, Lacv;->b:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lacv;->b:[B

    goto :goto_1

    :catch_0
    move-exception v3

    move v3, v4

    goto :goto_2

    .line 303
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lacv;->a:Ljava/io/InputStream;

    goto :goto_3

    :cond_6
    move v0, v1

    .line 311
    goto :goto_0
.end method

.method private static e(I)I
    .locals 2

    .prologue
    .line 367
    add-int/lit8 v0, p0, -0x1

    .line 368
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 369
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 370
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 371
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 372
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    return v0
.end method


# virtual methods
.method public a(I)B
    .locals 5

    .prologue
    .line 130
    const-string v0, "get"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/StressMode;->a(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lacv;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget v0, p0, Lacv;->d:I

    sub-int v0, p1, v0

    .line 133
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    .line 134
    iget-object v1, p0, Lacv;->b:[B

    aget-byte v0, v1, v0

    return v0

    .line 136
    :cond_0
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    .line 137
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index %d beyond length."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 160
    const-string v1, "has"

    invoke-static {v1}, Lcom/google/android/apps/hangouts/hangout/StressMode;->a(Ljava/lang/String;)V

    .line 161
    iget v1, p0, Lacv;->d:I

    if-ge p1, v1, :cond_0

    .line 162
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Index %d is before buffer %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lacv;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    iget v1, p0, Lacv;->d:I

    sub-int v1, p1, v1

    .line 170
    iget v2, p0, Lacv;->e:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lacv;->b:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 171
    :cond_1
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    .line 172
    invoke-direct {p0, p1}, Lacv;->d(I)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_2
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    goto :goto_0
.end method

.method public c(I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    const-string v0, "advance to"

    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/StressMode;->a(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Lacv;->d:I

    sub-int v4, p1, v0

    .line 190
    if-gtz v4, :cond_0

    .line 192
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    .line 239
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lacv;->e:I

    if-ge v4, v0, :cond_4

    .line 1321
    iget-object v0, p0, Lacv;->b:[B

    array-length v0, v0

    if-lt v4, v0, :cond_1

    .line 1322
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Index %d out of bounds. Length %d"

    new-array v5, v10, [Ljava/lang/Object;

    .line 1323
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    iget-object v1, p0, Lacv;->b:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 1325
    :goto_1
    add-int v3, v0, v4

    iget v5, p0, Lacv;->e:I

    if-ge v3, v5, :cond_2

    .line 1326
    iget-object v3, p0, Lacv;->b:[B

    iget-object v5, p0, Lacv;->b:[B

    add-int v6, v0, v4

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_2
    iput p1, p0, Lacv;->d:I

    .line 198
    iget v0, p0, Lacv;->e:I

    sub-int/2addr v0, v4

    iput v0, p0, Lacv;->e:I

    .line 235
    :goto_2
    const-string v0, "InputStreamBuffer"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const-string v0, "advanceTo %d buffer: %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    :cond_3
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/StressMode;->d()V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v0, p0, Lacv;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 201
    iget v0, p0, Lacv;->e:I

    sub-int v0, v4, v0

    move v3, v1

    .line 205
    :cond_5
    if-lez v0, :cond_8

    .line 206
    :try_start_0
    iget-object v5, p0, Lacv;->a:Ljava/io/InputStream;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 207
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_7

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 213
    :goto_3
    const/4 v5, 0x5

    if-lt v3, v5, :cond_5

    move v3, v0

    move v0, v2

    .line 222
    :goto_4
    if-eqz v0, :cond_6

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lacv;->a:Ljava/io/InputStream;

    .line 227
    :cond_6
    sub-int v0, p1, v3

    iput v0, p0, Lacv;->d:I

    .line 228
    iput v1, p0, Lacv;->e:I

    goto :goto_2

    .line 210
    :cond_7
    int-to-long v8, v0

    sub-long v6, v8, v6

    long-to-int v0, v6

    goto :goto_3

    :cond_8
    move v3, v0

    move v0, v1

    .line 220
    goto :goto_4

    .line 219
    :catch_0
    move-exception v3

    move v3, v0

    move v0, v2

    goto :goto_4

    .line 231
    :cond_9
    iput p1, p0, Lacv;->d:I

    .line 232
    iput v1, p0, Lacv;->e:I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    const-string v0, "+%d+%d [%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lacv;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lacv;->b:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lacv;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
