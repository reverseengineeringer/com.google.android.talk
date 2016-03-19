.class public final Lhki;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcfc;


# direct methods
.method public constructor <init>(Lcfc;)V
    .locals 0

    .prologue
    .line 2684
    iput-object p1, p0, Lhki;->a:Lcfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhke;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhke;",
            "Ljava/util/Set",
            "<",
            "Lhkd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1688
    iget-object v0, p0, Lhki;->a:Lcfc;

    iget-object v0, v0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1689
    invoke-virtual {v0, p1, p2}, Lhku;->a(Lhke;Ljava/util/Set;)V

    goto :goto_0

    .line 1691
    :cond_0
    return-void
.end method
