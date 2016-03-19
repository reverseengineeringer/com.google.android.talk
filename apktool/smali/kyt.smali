.class final Lkyt;
.super Lkyw;
.source "SourceFile"


# instance fields
.field final b:[C


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Lkys;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkys;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lkyt;-><init>(Lkys;)V

    .line 870
    return-void
.end method

.method private constructor <init>(Lkys;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 873
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkyw;-><init>(Lkys;Ljava/lang/Character;)V

    .line 866
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lkyt;->b:[C

    .line 1438
    iget-object v0, p1, Lkys;->o:[C

    .line 874
    array-length v0, v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 875
    :goto_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 876
    iget-object v0, p0, Lkyt;->b:[C

    ushr-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v2}, Lkys;->a(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 877
    iget-object v0, p0, Lkyt;->b:[C

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v3, v1, 0xf

    invoke-virtual {p1, v3}, Lkys;->a(I)C

    move-result v3

    aput-char v3, v0, v2

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 874
    goto :goto_0

    .line 879
    :cond_1
    return-void
.end method


# virtual methods
.method a([BLjava/lang/CharSequence;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 894
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 896
    new-instance v0, Lkyv;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

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

    .line 899
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 900
    iget-object v2, p0, Lkyt;->c:Lkys;

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lkys;->c(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lkyt;->c:Lkys;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lkys;->c(C)I

    move-result v3

    or-int/2addr v3, v2

    .line 901
    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 899
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_0

    .line 903
    :cond_1
    return v1
.end method
