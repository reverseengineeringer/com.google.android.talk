.class public final Lcfa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcfc;


# direct methods
.method constructor <init>(Lcfc;)V
    .locals 0

    .prologue
    .line 2708
    iput-object p1, p0, Lcfa;->a:Lcfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcey;)V
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcfa;->a:Lcfc;

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

    .line 1712
    invoke-virtual {v0, p1}, Lhku;->a(Lcey;)V

    goto :goto_0

    .line 1714
    :cond_0
    return-void
.end method
