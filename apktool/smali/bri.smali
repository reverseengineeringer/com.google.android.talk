.class public final Lbri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 6006
    iput-object p1, p0, Lbri;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldur;)V
    .locals 3

    .prologue
    .line 3009
    iget-object v0, p0, Lbri;->a:Lbng;

    .line 3285
    iput-object p1, v0, Lbng;->bu:Ldur;

    .line 3010
    iget-object v0, p0, Lbri;->a:Lbng;

    .line 4285
    invoke-virtual {v0}, Lbng;->J()V

    .line 3011
    iget-object v1, p0, Lbri;->a:Lbng;

    .line 5838
    invoke-virtual {v1}, Lbng;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5841
    iget-object v0, v1, Lbng;->aL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5842
    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5844
    :cond_0
    iget-object v0, v1, Lbng;->aL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3012
    :cond_1
    return-void
.end method
