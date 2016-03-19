.class public final Llbl;
.super Llai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Llai",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Llai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Llai;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public a(Llbb;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llbb",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1}, Llai;->a(Llbb;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Llai;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
