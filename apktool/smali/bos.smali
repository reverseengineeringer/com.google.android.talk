.class final Lbos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbqf;


# direct methods
.method constructor <init>(Lbqf;)V
    .locals 0

    .prologue
    .line 6619
    iput-object p1, p0, Lbos;->a:Lbqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 6622
    iget-object v0, p0, Lbos;->a:Lbqf;

    iget-object v0, v0, Lbqf;->a:Lbng;

    .line 7285
    iget-object v1, v0, Lbng;->bx:Lbju;

    .line 6622
    sget-object v2, Lbkw;->b:Lbkw;

    iget-object v0, p0, Lbos;->a:Lbqf;

    iget-object v0, v0, Lbqf;->a:Lbng;

    .line 8665
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8666
    iget-object v0, v0, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->g()Lbeu;

    move-result-object v0

    .line 8667
    invoke-virtual {v0}, Lbeu;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 8670
    iget-object v5, v0, Lcyx;->b:Lczb;

    iget-object v6, v0, Lcyx;->c:Ljava/lang/String;

    iget-object v7, v0, Lcyx;->g:Ljava/lang/String;

    .line 8672
    invoke-static {v5, v6, v7}, Ldtw;->a(Lczb;Ljava/lang/String;Ljava/lang/String;)Ldtw;

    move-result-object v5

    iget-object v6, v0, Lcyx;->e:Ljava/lang/String;

    iget-object v0, v0, Lcyx;->h:Ljava/lang/String;

    .line 8671
    invoke-static {v5, v6, v0}, Laxt;->a(Ldtw;Ljava/lang/String;Ljava/lang/String;)Laxt;

    move-result-object v0

    .line 8670
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6622
    :cond_0
    invoke-interface {v1, v2, v3}, Lbju;->a(Lbkw;Ljava/util/Collection;)V

    .line 6624
    return-void
.end method
