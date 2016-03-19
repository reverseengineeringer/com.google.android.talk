.class abstract Lktj;
.super Lkth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkth",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lkth;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public a()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lktj;->f()Lksf;

    move-result-object v0

    invoke-virtual {v0}, Lksf;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method g()Lksf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lktk;

    invoke-direct {v0, p0}, Lktk;-><init>(Lktj;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lktj;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method
