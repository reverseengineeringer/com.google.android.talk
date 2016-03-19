.class public final Lauk;
.super Laug;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laug",
        "<",
        "Lauk;",
        ">;"
    }
.end annotation


# static fields
.field public static w:Lauk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Laug;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lauk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lauk;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    move-object v1, v0

    .line 1407
    :goto_0
    iget-boolean v0, v1, Laug;->v:Z

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {v1}, Laug;->b()Laug;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2023
    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1411
    check-cast v0, Ljava/lang/Class;

    iput-object v0, v1, Laug;->s:Ljava/lang/Class;

    .line 1412
    iget v0, v1, Laug;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v1, Laug;->a:I

    .line 1413
    invoke-super {v1}, Laug;->d()Laug;

    move-result-object v0

    .line 203
    check-cast v0, Lauk;

    return-object v0
.end method

.method public static b(Lais;)Lauk;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    invoke-virtual {v0, p0}, Lauk;->a(Lais;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    return-object v0
.end method

.method public static b(Laiw;)Lauk;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    invoke-virtual {v0, p0}, Lauk;->a(Laiw;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    return-object v0
.end method

.method public static b(Lakr;)Lauk;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    invoke-virtual {v0, p0}, Lauk;->a(Lakr;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    return-object v0
.end method
