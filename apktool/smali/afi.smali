.class public final Lafi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laez;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:[B

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 1

    .prologue
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lafi;->d:Ljava/lang/Integer;

    .line 985
    iput-object p1, p0, Lafi;->a:Ljava/lang/String;

    .line 986
    iput-object p2, p0, Lafi;->c:[B

    .line 987
    iput-boolean p3, p0, Lafi;->b:Z

    .line 988
    return-void
.end method


# virtual methods
.method public final a()Lafb;
    .locals 1

    .prologue
    .line 1050
    sget-object v0, Lafb;->g:Lafb;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1011
    if-ne p0, p1, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return v0

    .line 1014
    :cond_1
    instance-of v2, p1, Lafi;

    if-nez v2, :cond_2

    move v0, v1

    .line 1015
    goto :goto_0

    .line 1017
    :cond_2
    check-cast p1, Lafi;

    .line 1018
    iget-object v2, p0, Lafi;->a:Ljava/lang/String;

    iget-object v3, p1, Lafi;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lafi;->c:[B

    iget-object v3, p1, Lafi;->c:[B

    .line 1019
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lafi;->b:Z

    iget-boolean v3, p1, Lafi;->b:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1025
    iget-object v0, p0, Lafi;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lafi;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1039
    :goto_0
    return v0

    .line 1029
    :cond_0
    iget-object v0, p0, Lafi;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafi;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1030
    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    .line 1031
    iget-object v2, p0, Lafi;->c:[B

    if-eqz v2, :cond_2

    .line 1032
    iget-object v2, p0, Lafi;->c:[B

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_2

    aget-byte v4, v2, v1

    .line 1033
    add-int/2addr v0, v4

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 1029
    goto :goto_1

    .line 1037
    :cond_2
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lafi;->b:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_3
    add-int/2addr v0, v1

    .line 1038
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lafi;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1037
    :cond_3
    const/16 v0, 0x4d5

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1044
    const-string v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lafi;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lafi;->c:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lafi;->b:Z

    .line 1045
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1044
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
