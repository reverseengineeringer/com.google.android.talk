.class final Laml;
.super Lamc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamc",
        "<",
        "Lamk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lamc;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/Class;)Lamk;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Laml;->b()Lamp;

    move-result-object v0

    check-cast v0, Lamk;

    .line 202
    invoke-virtual {v0, p1, p2}, Lamk;->a(ILjava/lang/Class;)V

    .line 203
    return-object v0
.end method

.method protected synthetic a()Lamp;
    .locals 1

    .prologue
    .line 1208
    new-instance v0, Lamk;

    invoke-direct {v0, p0}, Lamk;-><init>(Laml;)V

    .line 198
    return-object v0
.end method
