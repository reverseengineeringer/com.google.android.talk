.class final Lkys;
.super Lkmn;
.source "SourceFile"


# instance fields
.field final o:[C

.field final p:I

.field final q:I

.field final r:I

.field final s:I

.field private final t:Ljava/lang/String;

.field private final u:[B

.field private final v:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 449
    invoke-direct {p0}, Lkmn;-><init>()V

    .line 450
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkys;->t:Ljava/lang/String;

    .line 451
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lkys;->o:[C

    .line 453
    :try_start_0
    array-length v0, p2

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v0, v2}, Lkzv;->a(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Lkys;->q:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    iget v0, p0, Lkys;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 464
    const/16 v2, 0x8

    :try_start_1
    div-int/2addr v2, v0

    iput v2, p0, Lkys;->r:I

    .line 465
    iget v2, p0, Lkys;->q:I

    div-int v0, v2, v0

    iput v0, p0, Lkys;->s:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkys;->p:I

    .line 472
    const/16 v0, 0x80

    new-array v4, v0, [B

    .line 473
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    .line 474
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 475
    aget-char v5, p2, v0

    .line 476
    sget-object v2, Lkmn;->c:Lkmn;

    invoke-virtual {v2, v5}, Lkmn;->b(C)Z

    move-result v2

    const-string v6, "Non-ASCII character: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v6, v7}, Lfii;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 477
    aget-byte v2, v4, v5

    if-ne v2, v9, :cond_1

    move v2, v3

    :goto_1
    const-string v6, "Duplicate character: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v6, v7}, Lfii;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    int-to-byte v2, v0

    aput-byte v2, v4, v5

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    new-instance v1, Ljava/lang/IllegalArgumentException;

    array-length v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Illegal alphabet length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 466
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal alphabet "

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move v2, v1

    .line 477
    goto :goto_1

    .line 480
    :cond_2
    iput-object v4, p0, Lkys;->u:[B

    .line 482
    iget v0, p0, Lkys;->r:I

    new-array v0, v0, [Z

    .line 483
    :goto_3
    iget v2, p0, Lkys;->s:I

    if-ge v1, v2, :cond_3

    .line 484
    shl-int/lit8 v2, v1, 0x3

    iget v4, p0, Lkys;->q:I

    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v4, v5}, Lkzv;->a(IILjava/math/RoundingMode;)I

    move-result v2

    aput-boolean v3, v0, v2

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 486
    :cond_3
    iput-object v0, p0, Lkys;->v:[Z

    .line 487
    return-void
.end method


# virtual methods
.method a(I)C
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lkys;->o:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public b(C)Z
    .locals 2

    .prologue
    .line 555
    sget-object v0, Lkmn;->c:Lkmn;

    invoke-virtual {v0, p1}, Lkmn;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkys;->u:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)Z
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lkys;->v:[Z

    iget v1, p0, Lkys;->r:I

    rem-int v1, p1, v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method c(C)I
    .locals 4

    .prologue
    .line 502
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lkys;->u:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 503
    :cond_0
    new-instance v1, Lkyv;

    sget-object v0, Lkmn;->k:Lkmn;

    .line 504
    invoke-virtual {v0, p1}, Lkmn;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "0x"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkyv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_3
    iget-object v0, p0, Lkys;->u:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 565
    instance-of v0, p1, Lkys;

    if-eqz v0, :cond_0

    .line 566
    check-cast p1, Lkys;

    .line 567
    iget-object v0, p0, Lkys;->o:[C

    iget-object v1, p1, Lkys;->o:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    .line 569
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lkys;->o:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lkys;->t:Ljava/lang/String;

    return-object v0
.end method
