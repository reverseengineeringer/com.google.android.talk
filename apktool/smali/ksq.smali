.class final Lksq;
.super Lksv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lksv",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lksp;


# direct methods
.method constructor <init>(Lksp;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lksq;->a:Lksp;

    invoke-direct {p0}, Lksv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lksq;->a:Lksp;

    invoke-virtual {v0}, Lksp;->b()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method b()Lksm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksm",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lksq;->a:Lksp;

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lksq;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method
