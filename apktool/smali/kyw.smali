.class Lkyw;
.super Lkyr;
.source "SourceFile"


# instance fields
.field final c:Lkys;

.field final d:Ljava/lang/Character;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2

    .prologue
    .line 586
    new-instance v0, Lkys;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkys;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lkyw;-><init>(Lkys;Ljava/lang/Character;)V

    .line 587
    return-void
.end method

.method constructor <init>(Lkys;Ljava/lang/Character;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Lkyr;-><init>()V

    .line 590
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkys;

    iput-object v0, p0, Lkyw;->c:Lkys;

    .line 591
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lkys;->b(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Padding character %s was already in alphabet"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, v2}, Lfii;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 593
    iput-object p2, p0, Lkyw;->d:Ljava/lang/Character;

    .line 594
    return-void

    :cond_1
    move v0, v1

    .line 591
    goto :goto_0
.end method


# virtual methods
.method a(I)I
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lkyw;->c:Lkys;

    iget v0, v0, Lkys;->q:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method a([BLjava/lang/CharSequence;)I
    .locals 16

    .prologue
    .line 709
    invoke-static/range {p1 .. p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-virtual/range {p0 .. p0}, Lkyw;->a()Lkmn;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lkmn;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lkyw;->c:Lkys;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lkys;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    new-instance v2, Lkyv;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid input length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkyv;-><init>(Ljava/lang/String;)V

    throw v2

    .line 714
    :cond_0
    const/4 v3, 0x0

    .line 715
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 716
    const-wide/16 v6, 0x0

    .line 717
    const/4 v5, 0x0

    .line 718
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lkyw;->c:Lkys;

    iget v8, v8, Lkys;->r:I

    if-ge v4, v8, :cond_1

    .line 719
    move-object/from16 v0, p0

    iget-object v8, v0, Lkyw;->c:Lkys;

    iget v8, v8, Lkys;->q:I

    shl-long v8, v6, v8

    .line 720
    add-int v6, v2, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 721
    move-object/from16 v0, p0

    iget-object v7, v0, Lkyw;->c:Lkys;

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v2

    invoke-interface {v10, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v7, v5}, Lkys;->c(C)I

    move-result v5

    int-to-long v12, v5

    or-long/2addr v8, v12

    move v5, v6

    move-wide v6, v8

    .line 718
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 724
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lkyw;->c:Lkys;

    iget v4, v4, Lkys;->s:I

    shl-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lkyw;->c:Lkys;

    iget v8, v8, Lkys;->q:I

    mul-int/2addr v5, v8

    sub-int v8, v4, v5

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lkyw;->c:Lkys;

    iget v4, v4, Lkys;->s:I

    add-int/lit8 v4, v4, -0x1

    shl-int/lit8 v4, v4, 0x3

    :goto_3
    if-lt v4, v8, :cond_2

    .line 726
    add-int/lit8 v5, v3, 0x1

    ushr-long v12, v6, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v9, v12

    int-to-byte v9, v9

    aput-byte v9, p1, v3

    .line 725
    add-int/lit8 v3, v4, -0x8

    move v4, v3

    move v3, v5

    goto :goto_3

    .line 715
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lkyw;->c:Lkys;

    iget v4, v4, Lkys;->r:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 729
    :cond_3
    return v3

    :cond_4
    move-wide v6, v8

    goto :goto_2
.end method

.method a()Lkmn;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lkyw;->d:Ljava/lang/Character;

    if-nez v0, :cond_0

    sget-object v0, Lkmn;->n:Lkmn;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkyw;->d:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lkmn;->a(C)Lkmn;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 851
    instance-of v1, p1, Lkyw;

    if-eqz v1, :cond_0

    .line 852
    check-cast p1, Lkyw;

    .line 853
    iget-object v1, p0, Lkyw;->c:Lkys;

    iget-object v2, p1, Lkyw;->c:Lkys;

    invoke-virtual {v1, v2}, Lkys;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkyw;->d:Ljava/lang/Character;

    iget-object v2, p1, Lkyw;->d:Ljava/lang/Character;

    .line 854
    invoke-static {v1, v2}, Lcom/google/android/apps/hangouts/hangout/StressMode;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 856
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 861
    iget-object v0, p0, Lkyw;->c:Lkys;

    invoke-virtual {v0}, Lkys;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lkyw;->d:Ljava/lang/Character;

    aput-object v3, v1, v2

    .line 1083
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    .line 861
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lkyw;->c:Lkys;

    invoke-virtual {v1}, Lkys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const/16 v1, 0x8

    iget-object v2, p0, Lkyw;->c:Lkys;

    iget v2, v2, Lkys;->q:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Lkyw;->d:Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 841
    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 843
    :cond_1
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkyw;->d:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
