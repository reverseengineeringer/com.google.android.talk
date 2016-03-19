.class final Lktc;
.super Lkru;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkru",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lksf;

.field final synthetic b:Lkta;


# direct methods
.method constructor <init>(Lkta;Lksf;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lktc;->b:Lkta;

    iput-object p2, p0, Lktc;->a:Lksf;

    invoke-direct {p0}, Lkru;-><init>()V

    return-void
.end method


# virtual methods
.method b()Lkrz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkrz",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lktc;->b:Lkta;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lktc;->a:Lksf;

    invoke-virtual {v0, p1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
