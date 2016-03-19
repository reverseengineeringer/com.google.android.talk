.class public final Lgvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field static a:[Ljava/lang/Object;

.field static b:I

.field static c:[Ljava/lang/Object;

.field static d:I


# instance fields
.field e:[I

.field f:[Ljava/lang/Object;

.field g:I

.field h:Lgvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgvw",
            "<TE;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    sget-object v0, Lgvv;->b:[I

    iput-object v0, p0, Lgvt;->e:[I

    .line 229
    sget-object v0, Lgvv;->d:[Ljava/lang/Object;

    iput-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lgvt;->g:I

    .line 231
    return-void
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 192
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 193
    const-class v1, Lgvt;

    monitor-enter v1

    .line 194
    :try_start_0
    sget v0, Lgvt;->d:I

    if-ge v0, v2, :cond_1

    .line 195
    const/4 v0, 0x0

    sget-object v2, Lgvt;->c:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 196
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 197
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 198
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    :cond_0
    sput-object p1, Lgvt;->c:[Ljava/lang/Object;

    .line 201
    sget v0, Lgvt;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgvt;->d:I

    .line 205
    :cond_1
    monitor-exit v1

    .line 221
    :cond_2
    :goto_1
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 206
    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 207
    const-class v1, Lgvt;

    monitor-enter v1

    .line 208
    :try_start_1
    sget v0, Lgvt;->b:I

    if-ge v0, v2, :cond_5

    .line 209
    const/4 v0, 0x0

    sget-object v2, Lgvt;->a:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 210
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 211
    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    .line 212
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 211
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 214
    :cond_4
    sput-object p1, Lgvt;->a:[Ljava/lang/Object;

    .line 215
    sget v0, Lgvt;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgvt;->b:I

    .line 219
    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private b(I)V
    .locals 5

    .prologue
    .line 157
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 158
    const-class v1, Lgvt;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-object v0, Lgvt;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 160
    sget-object v2, Lgvt;->c:[Ljava/lang/Object;

    .line 161
    iput-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 162
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lgvt;->c:[Ljava/lang/Object;

    .line 163
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    iput-object v0, p0, Lgvt;->e:[I

    .line 164
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 165
    sget v0, Lgvt;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lgvt;->d:I

    .line 168
    monitor-exit v1

    .line 189
    :goto_0
    return-void

    .line 170
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Lgvt;->e:[I

    .line 188
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 172
    const-class v1, Lgvt;

    monitor-enter v1

    .line 173
    :try_start_2
    sget-object v0, Lgvt;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 174
    sget-object v2, Lgvt;->a:[Ljava/lang/Object;

    .line 175
    iput-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lgvt;->a:[Ljava/lang/Object;

    .line 177
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    iput-object v0, p0, Lgvt;->e:[I

    .line 178
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 179
    sget v0, Lgvt;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lgvt;->b:I

    .line 182
    monitor-exit v1

    goto :goto_0

    .line 184
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method a()I
    .locals 4

    .prologue
    .line 119
    iget v2, p0, Lgvt;->g:I

    .line 122
    if-nez v2, :cond_1

    .line 123
    const/4 v0, -0x1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v0, p0, Lgvt;->e:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lgvv;->a([III)I

    move-result v0

    .line 129
    if-ltz v0, :cond_0

    .line 134
    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 140
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lgvt;->e:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    .line 141
    iget-object v3, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lgvt;->e:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    .line 146
    iget-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 145
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 153
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method a(Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 81
    iget v2, p0, Lgvt;->g:I

    .line 84
    if-nez v2, :cond_1

    .line 85
    const/4 v0, -0x1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v0, p0, Lgvt;->e:[I

    invoke-static {v0, v2, p2}, Lgvv;->a([III)I

    move-result v0

    .line 91
    if-ltz v0, :cond_0

    .line 96
    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lgvt;->e:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    .line 103
    iget-object v3, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lgvt;->e:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    .line 108
    iget-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 115
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x0

    .line 414
    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 415
    iget v2, p0, Lgvt;->g:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 418
    iget-object v0, p0, Lgvt;->e:[I

    iget-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v3, p0, Lgvt;->g:I

    invoke-static {v0, v2, v3}, Lgvt;->a([I[Ljava/lang/Object;I)V

    .line 419
    sget-object v0, Lgvv;->b:[I

    iput-object v0, p0, Lgvt;->e:[I

    .line 420
    sget-object v0, Lgvv;->d:[Ljava/lang/Object;

    iput-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 421
    iput v4, p0, Lgvt;->g:I

    .line 458
    :cond_0
    :goto_0
    return-object v1

    .line 423
    :cond_1
    iget-object v2, p0, Lgvt;->e:[I

    array-length v2, v2

    if-le v2, v0, :cond_4

    iget v2, p0, Lgvt;->g:I

    iget-object v3, p0, Lgvt;->e:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_4

    .line 427
    iget v2, p0, Lgvt;->g:I

    if-le v2, v0, :cond_2

    iget v0, p0, Lgvt;->g:I

    iget v2, p0, Lgvt;->g:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 431
    :cond_2
    iget-object v2, p0, Lgvt;->e:[I

    .line 432
    iget-object v3, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 433
    invoke-direct {p0, v0}, Lgvt;->b(I)V

    .line 435
    iget v0, p0, Lgvt;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgvt;->g:I

    .line 436
    if-lez p1, :cond_3

    .line 438
    iget-object v0, p0, Lgvt;->e:[I

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    :cond_3
    iget v0, p0, Lgvt;->g:I

    if-ge p1, v0, :cond_0

    .line 444
    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Lgvt;->e:[I

    iget v5, p0, Lgvt;->g:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v4, p0, Lgvt;->g:I

    sub-int/2addr v4, p1

    invoke-static {v3, v0, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 448
    :cond_4
    iget v0, p0, Lgvt;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgvt;->g:I

    .line 449
    iget v0, p0, Lgvt;->g:I

    if-ge p1, v0, :cond_5

    .line 452
    iget-object v0, p0, Lgvt;->e:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lgvt;->e:[I

    iget v4, p0, Lgvt;->g:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v4, p0, Lgvt;->g:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    :cond_5
    iget-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v2, p0, Lgvt;->g:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 328
    if-nez p1, :cond_0

    .line 330
    invoke-virtual {p0}, Lgvt;->a()I

    move-result v3

    move v4, v2

    .line 335
    :goto_0
    if-ltz v3, :cond_1

    move v0, v2

    .line 369
    :goto_1
    return v0

    .line 332
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 333
    invoke-virtual {p0, p1, v4}, Lgvt;->a(Ljava/lang/Object;I)I

    move-result v3

    goto :goto_0

    .line 339
    :cond_1
    xor-int/lit8 v3, v3, -0x1

    .line 340
    iget v5, p0, Lgvt;->g:I

    iget-object v6, p0, Lgvt;->e:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 341
    iget v5, p0, Lgvt;->g:I

    if-lt v5, v0, :cond_6

    iget v0, p0, Lgvt;->g:I

    iget v1, p0, Lgvt;->g:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 346
    :cond_2
    :goto_2
    iget-object v1, p0, Lgvt;->e:[I

    .line 347
    iget-object v5, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 348
    invoke-direct {p0, v0}, Lgvt;->b(I)V

    .line 350
    iget-object v0, p0, Lgvt;->e:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 352
    iget-object v0, p0, Lgvt;->e:[I

    array-length v6, v1

    invoke-static {v1, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    :cond_3
    iget v0, p0, Lgvt;->g:I

    invoke-static {v1, v5, v0}, Lgvt;->a([I[Ljava/lang/Object;I)V

    .line 359
    :cond_4
    iget v0, p0, Lgvt;->g:I

    if-ge v3, v0, :cond_5

    .line 362
    iget-object v0, p0, Lgvt;->e:[I

    iget-object v1, p0, Lgvt;->e:[I

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Lgvt;->g:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iget-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Lgvt;->g:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    :cond_5
    iget-object v0, p0, Lgvt;->e:[I

    aput v4, v0, v3

    .line 367
    iget-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 368
    iget v0, p0, Lgvt;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgvt;->g:I

    .line 369
    const/4 v0, 0x1

    goto :goto_1

    .line 342
    :cond_6
    iget v5, p0, Lgvt;->g:I

    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 645
    iget v1, p0, Lgvt;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 3275
    iget-object v2, p0, Lgvt;->e:[I

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 3276
    iget-object v2, p0, Lgvt;->e:[I

    .line 3277
    iget-object v3, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 3278
    invoke-direct {p0, v1}, Lgvt;->b(I)V

    .line 3279
    iget v1, p0, Lgvt;->g:I

    if-lez v1, :cond_0

    .line 3280
    iget-object v1, p0, Lgvt;->e:[I

    iget v4, p0, Lgvt;->g:I

    invoke-static {v2, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3281
    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v4, p0, Lgvt;->g:I

    invoke-static {v3, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3283
    :cond_0
    iget v1, p0, Lgvt;->g:I

    invoke-static {v2, v3, v1}, Lgvt;->a([I[Ljava/lang/Object;I)V

    .line 647
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 648
    invoke-virtual {p0, v2}, Lgvt;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 649
    goto :goto_0

    .line 650
    :cond_2
    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 262
    iget v0, p0, Lgvt;->g:I

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lgvt;->e:[I

    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v2, p0, Lgvt;->g:I

    invoke-static {v0, v1, v2}, Lgvt;->a([I[Ljava/lang/Object;I)V

    .line 264
    sget-object v0, Lgvv;->b:[I

    iput-object v0, p0, Lgvt;->e:[I

    .line 265
    sget-object v0, Lgvv;->d:[Ljava/lang/Object;

    iput-object v0, p0, Lgvt;->f:[Ljava/lang/Object;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lgvt;->g:I

    .line 268
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lgvt;->a()I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lgvt;->a(Ljava/lang/Object;I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 634
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 635
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgvt;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    const/4 v0, 0x0

    .line 640
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    if-ne p0, p1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 505
    check-cast p1, Ljava/util/Set;

    .line 506
    invoke-virtual {p0}, Lgvt;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 507
    goto :goto_0

    :cond_2
    move v2, v1

    .line 511
    :goto_1
    :try_start_0
    iget v3, p0, Lgvt;->g:I

    if-ge v2, v3, :cond_0

    .line 1304
    iget-object v3, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 513
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 514
    goto :goto_0

    .line 511
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 518
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 524
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-object v2, p0, Lgvt;->e:[I

    .line 534
    iget v3, p0, Lgvt;->g:I

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 535
    aget v4, v2, v0

    add-int/2addr v1, v4

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lgvt;->g:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2576
    iget-object v0, p0, Lgvt;->h:Lgvw;

    if-nez v0, :cond_0

    .line 2577
    new-instance v0, Lgvu;

    invoke-direct {v0, p0}, Lgvu;-><init>(Lgvt;)V

    iput-object v0, p0, Lgvt;->h:Lgvw;

    .line 2624
    :cond_0
    iget-object v0, p0, Lgvt;->h:Lgvw;

    .line 629
    invoke-virtual {v0}, Lgvw;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 400
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lgvt;->a()I

    move-result v0

    .line 401
    :goto_0
    if-ltz v0, :cond_1

    .line 402
    invoke-virtual {p0, v0}, Lgvt;->a(I)Ljava/lang/Object;

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_1
    return v0

    .line 400
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lgvt;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 657
    invoke-virtual {p0, v2}, Lgvt;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 658
    goto :goto_0

    .line 659
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 664
    const/4 v1, 0x0

    .line 665
    iget v0, p0, Lgvt;->g:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-ltz v1, :cond_1

    .line 666
    iget-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 667
    invoke-virtual {p0, v1}, Lgvt;->a(I)Ljava/lang/Object;

    .line 668
    const/4 v0, 0x1

    .line 665
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 671
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lgvt;->g:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 471
    iget v0, p0, Lgvt;->g:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v2, p0, Lgvt;->g:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 478
    array-length v0, p1

    iget v1, p0, Lgvt;->g:I

    if-ge v0, v1, :cond_1

    .line 480
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lgvt;->g:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 483
    :goto_0
    iget-object v1, p0, Lgvt;->f:[Ljava/lang/Object;

    iget v2, p0, Lgvt;->g:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    array-length v1, v0

    iget v2, p0, Lgvt;->g:I

    if-le v1, v2, :cond_0

    .line 485
    iget v1, p0, Lgvt;->g:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 487
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    invoke-virtual {p0}, Lgvt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "{}"

    .line 567
    :goto_0
    return-object v0

    .line 553
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lgvt;->g:I

    mul-int/lit8 v0, v0, 0xe

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lgvt;->g:I

    if-ge v0, v2, :cond_3

    .line 556
    if-lez v0, :cond_1

    .line 557
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    :cond_1
    iget-object v2, p0, Lgvt;->f:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 560
    if-eq v2, p0, :cond_2

    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    :cond_2
    const-string v2, "(this Set)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 566
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
