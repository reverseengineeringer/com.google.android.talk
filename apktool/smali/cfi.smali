.class final Lcfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcfc;


# direct methods
.method constructor <init>(Lcfc;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcfi;->a:Lcfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcfi;->a:Lcfc;

    .line 2095
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcfc;->f:Z

    .line 597
    iget-object v0, p0, Lcfi;->a:Lcfc;

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

    .line 598
    invoke-virtual {v0}, Lhku;->g()V

    goto :goto_0

    .line 601
    :cond_0
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v0

    new-instance v1, Lcfm;

    iget-object v2, p0, Lcfi;->a:Lcfc;

    .line 2096
    invoke-direct {v1, v2}, Lcfm;-><init>(Lcfc;)V

    .line 601
    invoke-virtual {v0, v1}, Lhgd;->a(Lhcu;)V

    .line 602
    return-void
.end method
