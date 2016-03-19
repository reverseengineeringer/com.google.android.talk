.class final Lcha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcgw;


# direct methods
.method constructor <init>(Lcgw;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcha;->a:Lcgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcha;->a:Lcgw;

    iget-object v0, v0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 219
    iget-object v2, p0, Lcha;->a:Lcgw;

    .line 1076
    iget-boolean v2, v2, Lcgw;->b:Z

    .line 219
    invoke-virtual {v0, v2}, Lhku;->a(Z)V

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method
