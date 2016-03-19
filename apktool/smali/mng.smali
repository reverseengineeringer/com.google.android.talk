.class public abstract Lmng;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    if-nez p1, :cond_0

    .line 2043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MIME type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2045
    :cond_0
    iput-object p1, p0, Lmng;->a:Ljava/lang/String;

    .line 2046
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2047
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2048
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmng;->b:Ljava/lang/String;

    .line 2049
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmng;->c:Ljava/lang/String;

    .line 2054
    :goto_0
    return-void

    .line 2051
    :cond_1
    iput-object p1, p0, Lmng;->b:Ljava/lang/String;

    .line 2052
    const/4 v0, 0x0

    iput-object v0, p0, Lmng;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lmng;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Ljava/io/OutputStream;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method

.method public abstract e()Ljava/lang/String;
.end method
