.class final Lkyu;
.super Lkyw;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2

    .prologue
    .line 914
    new-instance v0, Lkys;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkys;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lkyu;-><init>(Lkys;Ljava/lang/Character;)V

    .line 915
    return-void
.end method

.method private constructor <init>(Lkys;Ljava/lang/Character;)V
    .locals 2

    .prologue
    .line 918
    invoke-direct {p0, p1, p2}, Lkyw;-><init>(Lkys;Ljava/lang/Character;)V

    .line 1438
    iget-object v0, p1, Lkys;->o:[C

    .line 919
    array-length v0, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 920
    return-void

    .line 919
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a([BLjava/lang/CharSequence;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 941
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-virtual {p0}, Lkyu;->a()Lkmn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lkmn;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 943
    iget-object v1, p0, Lkyu;->c:Lkys;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lkys;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    new-instance v0, Lkyv;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid input length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkyv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    .line 947
    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 948
    iget-object v2, p0, Lkyu;->c:Lkys;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Lkys;->c(C)I

    move-result v0

    shl-int/lit8 v2, v0, 0x12

    .line 949
    iget-object v5, p0, Lkyu;->c:Lkys;

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v3}, Lkys;->c(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    .line 950
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 951
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 952
    iget-object v5, p0, Lkyu;->c:Lkys;

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v5, v0}, Lkys;->c(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    or-int v5, v2, v0

    .line 953
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v0, v5, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 954
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 955
    iget-object v3, p0, Lkyu;->c:Lkys;

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Lkys;->c(C)I

    move-result v1

    or-int v3, v5, v1

    .line 956
    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_0

    .line 960
    :cond_1
    return v1

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0
.end method
