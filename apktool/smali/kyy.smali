.class public abstract Lkyy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkyx;)J
    .locals 3

    .prologue
    .line 270
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    new-instance v2, Lkzc;

    sget-object v0, Lkzc;->a:Lkzf;

    invoke-direct {v2, v0}, Lkzc;-><init>(Lkzf;)V

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lkyy;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkzc;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 275
    invoke-virtual {p1}, Lkyx;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkzc;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 276
    invoke-static {v0, v1}, Lkyz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 280
    invoke-virtual {v2}, Lkzc;->close()V

    return-wide v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :try_start_1
    invoke-virtual {v2, v0}, Lkzc;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lkzc;->close()V

    throw v0
.end method

.method public abstract a()Ljava/io/InputStream;
.end method
