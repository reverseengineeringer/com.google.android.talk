.class public final Lata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Latb",
        "<",
        "Lasn;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lalr;)Lalr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<",
            "Lasn;",
            ">;)",
            "Lalr",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-interface {p1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasn;

    .line 19
    invoke-virtual {v0}, Lasn;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    new-instance v1, Lash;

    invoke-static {v0}, Lavh;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lash;-><init>([B)V

    return-object v1
.end method
