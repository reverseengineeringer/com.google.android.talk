.class public abstract Lkrw;
.super Lksm;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lksm",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lksm;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lkrw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lkrw",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lkxz;

    invoke-direct {v0, p0, p1}, Lkxz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lkrw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkrw",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public b()Lkth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkth",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lkrw;->a()Lkrw;

    move-result-object v0

    invoke-virtual {v0}, Lkrw;->g()Lkth;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lkrz;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lkrw;->b()Lkth;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lkrw;->b()Lkth;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    new-instance v0, Lkry;

    invoke-direct {v0, p0}, Lkry;-><init>(Lkrw;)V

    return-object v0
.end method
