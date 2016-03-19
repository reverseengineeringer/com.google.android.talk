.class final Llxi;
.super Llxh;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Llxh;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;[BII)I
    .locals 10

    .prologue
    const v9, 0xdfff

    const v8, 0xd800

    const/16 v7, 0x80

    .line 830
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 832
    const/4 v0, 0x0

    .line 833
    add-int v4, p3, p4

    .line 836
    :goto_0
    if-ge v0, v3, :cond_0

    add-int v1, v0, p3

    if-ge v1, v4, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_0

    .line 837
    add-int v2, p3, v0

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    :cond_0
    if-ne v0, v3, :cond_1

    .line 840
    add-int v0, p3, v3

    .line 879
    :goto_1
    return v0

    .line 842
    :cond_1
    add-int v2, p3, v0

    .line 843
    :goto_2
    if-ge v0, v3, :cond_b

    .line 844
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 845
    if-ge v5, v7, :cond_2

    if-ge v2, v4, :cond_2

    .line 846
    add-int/lit8 v1, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    .line 843
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_2

    .line 847
    :cond_2
    const/16 v1, 0x800

    if-ge v5, v1, :cond_3

    add-int/lit8 v1, v4, -0x2

    if-gt v2, v1, :cond_3

    .line 848
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    or-int/lit16 v1, v1, 0x3c0

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 849
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v6

    goto :goto_3

    .line 850
    :cond_3
    if-lt v5, v8, :cond_4

    if-ge v9, v5, :cond_5

    :cond_4
    add-int/lit8 v1, v4, -0x3

    if-gt v2, v1, :cond_5

    .line 852
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    .line 853
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 854
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    goto :goto_3

    .line 855
    :cond_5
    add-int/lit8 v1, v4, -0x4

    if-gt v2, v1, :cond_8

    .line 859
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v1, v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 860
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-nez v6, :cond_7

    .line 861
    :cond_6
    new-instance v1, Llxj;

    add-int/lit8 v0, v0, -0x1

    .line 3210
    invoke-direct {v1, v0, v3}, Llxj;-><init>(II)V

    .line 861
    throw v1

    .line 863
    :cond_7
    invoke-static {v5, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 864
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    .line 865
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 866
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 867
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p2, v6

    goto/16 :goto_3

    .line 871
    :cond_8
    if-gt v8, v5, :cond_a

    if-gt v5, v9, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 872
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_9

    add-int/lit8 v1, v0, 0x1

    .line 873
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-nez v1, :cond_a

    .line 874
    :cond_9
    new-instance v1, Llxj;

    .line 4210
    invoke-direct {v1, v0, v3}, Llxj;-><init>(II)V

    .line 874
    throw v1

    .line 876
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v2

    .line 879
    goto/16 :goto_1
.end method

.method a([BII)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, -0x20

    const/16 v7, -0x60

    const/4 v2, -0x1

    const/16 v6, -0x41

    move v0, p2

    .line 1891
    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v3, p1, v0

    if-ltz v3, :cond_0

    .line 1892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1895
    :cond_0
    if-lt v0, p3, :cond_3

    move v0, v1

    .line 1954
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v3

    .line 1904
    :cond_3
    if-lt v0, p3, :cond_4

    move v0, v1

    .line 1905
    goto :goto_1

    .line 1907
    :cond_4
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    if-gez v0, :cond_2

    .line 1909
    if-ge v0, v8, :cond_6

    .line 1912
    if-ge v3, p3, :cond_1

    .line 1919
    const/16 v4, -0x3e

    if-lt v0, v4, :cond_5

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    if-le v3, v6, :cond_3

    :cond_5
    move v0, v2

    .line 1921
    goto :goto_1

    .line 1923
    :cond_6
    const/16 v4, -0x10

    if-ge v0, v4, :cond_b

    .line 1926
    add-int/lit8 v4, p3, -0x1

    if-lt v3, v4, :cond_7

    .line 2052
    invoke-static {p1, v3, p3}, Llxg;->a([BII)I

    move-result v0

    goto :goto_1

    .line 1929
    :cond_7
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    if-gt v3, v6, :cond_a

    if-ne v0, v8, :cond_8

    if-lt v3, v7, :cond_a

    :cond_8
    const/16 v5, -0x13

    if-ne v0, v5, :cond_9

    if-ge v3, v7, :cond_a

    :cond_9
    add-int/lit8 v0, v4, 0x1

    aget-byte v3, p1, v4

    if-le v3, v6, :cond_3

    :cond_a
    move v0, v2

    .line 1936
    goto :goto_1

    .line 1941
    :cond_b
    add-int/lit8 v4, p3, -0x2

    if-lt v3, v4, :cond_c

    .line 3052
    invoke-static {p1, v3, p3}, Llxg;->a([BII)I

    move-result v0

    goto :goto_1

    .line 1944
    :cond_c
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    if-gt v3, v6, :cond_d

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_d

    add-int/lit8 v3, v4, 0x1

    aget-byte v0, p1, v4

    if-gt v0, v6, :cond_d

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    if-le v3, v6, :cond_3

    :cond_d
    move v0, v2

    .line 1954
    goto :goto_1
.end method
