.class final Lktp;
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
.field final synthetic a:Lkto;


# direct methods
.method constructor <init>(Lkto;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lktp;->a:Lkto;

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
    .line 553
    invoke-virtual {p0}, Lktp;->f()Lksf;

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
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lktp;->a:Lkto;

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
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Lktq;

    invoke-direct {v0, p0}, Lktq;-><init>(Lktp;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lktp;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method
