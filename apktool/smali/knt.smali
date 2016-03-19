.class public final Lknt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lknk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0x2c

    invoke-static {v0}, Lknk;->a(C)Lknk;

    move-result-object v0

    sput-object v0, Lknt;->a:Lknk;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lkns;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkns",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 1076
    sget-object v0, Lknw;->c:Lknw;

    invoke-virtual {v0}, Lknw;->a()Lkns;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lknv;

    .line 1445
    invoke-direct {v0, p0}, Lknv;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lkns;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lkns",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lknu;

    .line 1552
    invoke-direct {v0, p0}, Lknu;-><init>(Ljava/util/Collection;)V

    .line 223
    return-object v0
.end method
