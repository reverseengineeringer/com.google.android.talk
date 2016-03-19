.class public abstract Llyi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile eE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Llyi;->eE:I

    return-void
.end method

.method public static final a(Llyi;[BI)V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-static {p1, v0, p2}, Llxz;->a([BII)Llxz;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Llyi;->a(Llxz;)V

    .line 118
    invoke-virtual {v0}, Llxz;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final a(Llyi;)[B
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Llyi;->c()I

    move-result v0

    new-array v0, v0, [B

    .line 101
    array-length v1, v0

    invoke-static {p0, v0, v1}, Llyi;->a(Llyi;[BI)V

    .line 102
    return-object v0
.end method

.method public static b(Llyi;[BI)Llyi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Llyi;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-static {p1, v0, p2}, Llxy;->a([BII)Llxy;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Llyi;->a(Llxy;)Llyi;

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llxy;->a(I)V
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    return-object p0

    .line 147
    :catch_0
    move-exception v0

    throw v0

    .line 149
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Llxy;)Llyi;
.end method

.method public a(Llxz;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Llyi;->b()I

    move-result v0

    .line 66
    iput v0, p0, Llyi;->eE:I

    .line 67
    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Llyi;->k()Llyi;

    move-result-object v0

    return-object v0
.end method

.method public e_()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Llyi;->eE:I

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Llyi;->c()I

    .line 56
    :cond_0
    iget v0, p0, Llyi;->eE:I

    return v0
.end method

.method public k()Llyi;
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llyi;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {p0}, Laal;->a(Llyi;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
