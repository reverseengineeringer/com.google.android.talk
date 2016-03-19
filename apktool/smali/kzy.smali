.class final Lkzy;
.super Lkzx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lkzx",
        "<TV;TX;",
        "Llap",
        "<-TX;+TV;>;",
        "Llbb",
        "<+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Llbb;Ljava/lang/Class;Llap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llbb",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Llap",
            "<-TX;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lkzx;-><init>(Llbb;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 167
    return-void
.end method


# virtual methods
.method synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    check-cast p1, Llap;

    .line 2172
    invoke-interface {p1, p2}, Llap;->a(Ljava/lang/Object;)Llbb;

    move-result-object v0

    .line 2173
    const-string v1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)?"

    invoke-static {v0, v1}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object v0
.end method

.method synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    check-cast p1, Llbb;

    .line 1182
    invoke-virtual {p0, p1}, Lkzy;->a(Llbb;)Z

    .line 159
    return-void
.end method
