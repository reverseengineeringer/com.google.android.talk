.class public final Lamf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalx",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, [B

    .line 3019
    array-length v0, p1

    .line 8
    return v0
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1029
    new-array v0, p1, [B

    .line 8
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 8
    check-cast p1, [B

    .line 2024
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 8
    return-void
.end method
