.class public abstract Lknq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lknq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lknq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lkob;

    invoke-static {p0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lkob;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c()Lknq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lknq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1037
    sget-object v0, Lkmm;->a:Lkmm;

    .line 98
    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Lknq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lknq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 2037
    sget-object v0, Lkmm;->a:Lkmm;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkob;

    invoke-direct {v0, p0}, Lkob;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract a()Z
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
