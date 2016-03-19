.class final Lhgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhfn;

.field final synthetic b:Lhgo;


# direct methods
.method constructor <init>(Lhgo;Lhfn;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lhgr;->b:Lhgo;

    iput-object p2, p0, Lhgr;->a:Lhfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lhgr;->b:Lhgo;

    iget-object v0, p0, Lhgr;->a:Lhfn;

    invoke-virtual {v0}, Lhfn;->a()Ljava/lang/String;

    move-result-object v0

    .line 1101
    iget-object v2, v1, Lhgo;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfu;

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v1, v0}, Lhgo;->a(Lhgn;)V

    .line 1104
    invoke-virtual {v0}, Lhfu;->a()V

    .line 240
    :cond_0
    return-void
.end method
