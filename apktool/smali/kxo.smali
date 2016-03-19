.class final Lkxo;
.super Lksv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lksv",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxn;


# direct methods
.method constructor <init>(Lkxn;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lkxo;->a:Lkxn;

    invoke-direct {p0}, Lksv;-><init>()V

    return-void
.end method


# virtual methods
.method Z_()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public a()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lkxo;->f()Lksf;

    move-result-object v0

    invoke-virtual {v0}, Lksf;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method b()Lksm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksm",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lkxo;->a:Lkxn;

    return-object v0
.end method

.method g()Lksf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lkxp;

    invoke-direct {v0, p0}, Lkxp;-><init>(Lkxo;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lkxo;->a:Lkxn;

    iget-object v0, v0, Lkxn;->b:Lkxm;

    .line 1039
    iget v0, v0, Lkxm;->f:I

    .line 223
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lkxo;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method
