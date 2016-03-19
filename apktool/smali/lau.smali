.class public final Llau;
.super Laal;
.source "SourceFile"


# static fields
.field private static final vi:Llap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llap",
            "<",
            "Llbb",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 721
    new-instance v0, Llav;

    invoke-direct {v0}, Llav;-><init>()V

    sput-object v0, Llau;->vi:Llap;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Llbb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Llbb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Llay;

    invoke-direct {v0, p0}, Llay;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Llbb;Ljava/lang/Class;Llap;Ljava/util/concurrent/Executor;)Llbb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Llbb",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;",
            "Llap",
            "<-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Llbb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p0, p1, p2, p3}, Lkzx;->a(Llbb;Ljava/lang/Class;Llap;Ljava/util/concurrent/Executor;)Llbb;

    move-result-object v0

    return-object v0
.end method

.method public static a(Llbb;Lknj;)Llbb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Llbb",
            "<TI;>;",
            "Lknj",
            "<-TI;+TO;>;)",
            "Llbb",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-static {p0, p1}, Llan;->a(Llbb;Lknj;)Llbb;

    move-result-object v0

    return-object v0
.end method

.method public static a(Llbb;Llat;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Llbb",
            "<TV;>;",
            "Llat",
            "<-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    new-instance v0, Llaw;

    invoke-direct {v0, p0, p1}, Llaw;-><init>(Llbb;Llat;)V

    .line 1129
    invoke-interface {p0, v0, p2}, Llbb;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1130
    return-void
.end method

.method public static g(Ljava/lang/Object;)Llbb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Llbb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 147
    sget-object v0, Llaz;->a:Llaz;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llaz;

    invoke-direct {v0, p0}, Llaz;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
