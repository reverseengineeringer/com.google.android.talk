.class public final Lasp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajc",
        "<",
        "Lasn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lalr;Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<",
            "Lasn;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 28
    invoke-interface {p0}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasn;

    .line 29
    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v0}, Lasn;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lavh;->a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Laja;)Lait;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lait;->a:Lait;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Laja;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lalr;

    invoke-static {p1, p2}, Lasp;->a(Lalr;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
