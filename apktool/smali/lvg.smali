.class public abstract Llvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llwq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Llvg;",
        ">",
        "Ljava/lang/Object;",
        "Llwq;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Llvg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public a(Llvp;)Llvg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvp;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 1069
    sget-object v0, Llvt;->a:Llvt;

    .line 109
    invoke-virtual {p0, p1, v0}, Llvg;->a(Llvp;Llvt;)Llvg;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Llvp;Llvt;)Llvg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvp;",
            "Llvt;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public a([B)Llvg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 154
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Llvg;->a([BI)Llvg;

    move-result-object v0

    return-object v0
.end method

.method public a([BI)Llvg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 2045
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, p2, v1}, Llvp;->a([BIIZ)Llvp;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Llvg;->a(Llvp;)Llvg;

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llvp;->a(I)V
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    return-object p0

    .line 167
    :catch_0
    move-exception v0

    throw v0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic b(Llvp;Llvt;)Llwq;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2}, Llvg;->a(Llvp;Llvt;)Llvg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Llwq;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Llvg;->a([B)Llvg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Llvg;->a()Llvg;

    move-result-object v0

    return-object v0
.end method
