.class final Laif;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field c:[Ljava/io/File;

.field d:[Ljava/io/File;

.field e:Z

.field f:Laie;

.field g:J

.field final synthetic h:Laib;


# direct methods
.method constructor <init>(Laib;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 824
    iput-object p1, p0, Laif;->h:Laib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput-object p2, p0, Laif;->a:Ljava/lang/String;

    .line 1086
    iget v0, p1, Laib;->b:I

    .line 826
    new-array v0, v0, [J

    iput-object v0, p0, Laif;->b:[J

    .line 2086
    iget v0, p1, Laib;->b:I

    .line 827
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Laif;->c:[Ljava/io/File;

    .line 3086
    iget v0, p1, Laib;->b:I

    .line 828
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Laif;->d:[Ljava/io/File;

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 833
    const/4 v0, 0x0

    .line 4086
    :goto_0
    iget v3, p1, Laib;->b:I

    .line 833
    if-ge v0, v3, :cond_0

    .line 834
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    iget-object v3, p0, Laif;->c:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    .line 5086
    iget-object v5, p1, Laib;->a:Ljava/io/File;

    .line 835
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 836
    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v3, p0, Laif;->d:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    .line 6086
    iget-object v5, p1, Laib;->a:Ljava/io/File;

    .line 837
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 838
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    :cond_0
    return-void
.end method

.method private static b([Ljava/lang/String;)Ljava/io/IOException;
    .locals 4

    .prologue
    .line 866
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected journal line: "

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Laif;->c:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    iget-object v2, p0, Laif;->b:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 845
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 852
    array-length v0, p1

    iget-object v1, p0, Laif;->h:Laib;

    .line 7086
    iget v1, v1, Laib;->b:I

    .line 852
    if-eq v0, v1, :cond_0

    .line 853
    invoke-static {p1}, Laif;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 857
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 858
    iget-object v1, p0, Laif;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    invoke-static {p1}, Laif;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 862
    :cond_1
    return-void
.end method

.method public b(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Laif;->d:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method
