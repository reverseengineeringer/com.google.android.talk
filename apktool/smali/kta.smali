.class final Lkta;
.super Lkrz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkrz",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Lksm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksm",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lksm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lksm",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lkrz;-><init>()V

    .line 39
    iput-object p1, p0, Lkta;->a:Lksm;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lkyp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkyp",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lktb;

    invoke-direct {v0, p0}, Lktb;-><init>(Lkta;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkta;->a()Lkyp;

    move-result-object v0

    invoke-static {v0, p1}, Lkty;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method g()Lksf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lkta;->a:Lksm;

    invoke-virtual {v0}, Lksm;->e()Lkth;

    move-result-object v0

    invoke-virtual {v0}, Lkth;->f()Lksf;

    move-result-object v0

    .line 77
    new-instance v1, Lktc;

    invoke-direct {v1, p0, v0}, Lktc;-><init>(Lkta;Lksf;)V

    return-object v1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lkta;->a()Lkyp;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lkta;->a:Lksm;

    invoke-virtual {v0}, Lksm;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lktd;

    iget-object v1, p0, Lkta;->a:Lksm;

    invoke-direct {v0, v1}, Lktd;-><init>(Lksm;)V

    return-object v0
.end method
