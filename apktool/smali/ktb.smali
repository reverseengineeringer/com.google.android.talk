.class final Lktb;
.super Lkyp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkyp",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Lkyp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkyp",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkta;


# direct methods
.method constructor <init>(Lkta;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lktb;->b:Lkta;

    invoke-direct {p0}, Lkyp;-><init>()V

    .line 50
    iget-object v0, p0, Lktb;->b:Lkta;

    .line 1035
    iget-object v0, v0, Lkta;->a:Lksm;

    .line 50
    invoke-virtual {v0}, Lksm;->e()Lkth;

    move-result-object v0

    invoke-virtual {v0}, Lkth;->a()Lkyp;

    move-result-object v0

    iput-object v0, p0, Lktb;->a:Lkyp;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lktb;->a:Lkyp;

    invoke-virtual {v0}, Lkyp;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lktb;->a:Lkyp;

    invoke-virtual {v0}, Lkyp;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
