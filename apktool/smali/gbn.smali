.class public abstract Lgbn;
.super Ljava/lang/Object;


# instance fields
.field public volatile p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgbn;->p:I

    return-void
.end method

.method public static final a(Lgbn;[BI)Lgbn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgbn;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 2000
    :try_start_0
    new-instance v0, Lgbf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lgbf;-><init>([BII)V

    .line 0
    invoke-virtual {p0, v0}, Lgbn;->a(Lgbf;)Lgbn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgbf;->a(I)V
    :try_end_0
    .catch Lgbm; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final a(Lgbn;)[B
    .locals 3

    .prologue
    .line 0
    invoke-virtual {p0}, Lgbn;->g()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    .line 1000
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lgbg;->a([BII)Lgbg;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgbn;->a(Lgbg;)V

    invoke-virtual {v1}, Lgbg;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    return-object v0

    .line 1000
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lgbf;)Lgbn;
.end method

.method public a(Lgbg;)V
    .locals 0

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgbn;->e()Lgbn;

    move-result-object v0

    return-object v0
.end method

.method public e()Lgbn;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbn;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lgbn;->p:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lgbn;->g()I

    :cond_0
    iget v0, p0, Lgbn;->p:I

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lgbn;->a()I

    move-result v0

    iput v0, p0, Lgbn;->p:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Laal;->a(Lgbn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
