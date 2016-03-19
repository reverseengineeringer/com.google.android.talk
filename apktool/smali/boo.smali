.class final Lboo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Lbjb;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbkq;

.field final synthetic e:Lbng;


# direct methods
.method constructor <init>(Lbng;Lbfd;Lbjb;Ljava/lang/String;Lbkq;)V
    .locals 0

    .prologue
    .line 5833
    iput-object p1, p0, Lboo;->e:Lbng;

    iput-object p2, p0, Lboo;->a:Lbfd;

    iput-object p3, p0, Lboo;->b:Lbjb;

    iput-object p4, p0, Lboo;->c:Ljava/lang/String;

    iput-object p5, p0, Lboo;->d:Lbkq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 5836
    iget-object v0, p0, Lboo;->e:Lbng;

    .line 6285
    iget-object v0, v0, Lbng;->context:Lill;

    .line 5837
    const-string v1, "babel_extra_log_scrolling"

    .line 5836
    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5840
    const-string v0, "Babel_Scroll"

    iget-object v1, p0, Lboo;->e:Lbng;

    .line 7285
    iget-boolean v1, v1, Lbng;->aF:Z

    .line 5841
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "sendMessage postDelay autoScrolling:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 5840
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5845
    :cond_0
    iget-object v0, p0, Lboo;->e:Lbng;

    .line 8285
    iget-boolean v0, v0, Lbng;->aF:Z

    .line 5845
    if-eqz v0, :cond_1

    iget-object v0, p0, Lboo;->e:Lbng;

    .line 9285
    iget-object v0, v0, Lbng;->context:Lill;

    .line 5847
    const-string v1, "babel_disable_events_on_auto_scroll"

    const/4 v2, 0x1

    .line 5846
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5850
    const-string v0, "Babel_Scroll"

    const-string v1, "force selection was required."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5851
    iget-object v0, p0, Lboo;->e:Lbng;

    .line 10285
    iput-boolean v4, v0, Lbng;->aF:Z

    .line 5852
    iget-object v0, p0, Lboo;->e:Lbng;

    .line 11285
    iget-object v0, v0, Lbng;->bB:Landroid/widget/AbsListView;

    .line 5852
    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lboo;->e:Lbng;

    .line 12285
    iget-object v1, v1, Lbng;->bB:Landroid/widget/AbsListView;

    .line 5852
    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 5854
    :cond_1
    iget-object v0, p0, Lboo;->e:Lbng;

    .line 13285
    iput-boolean v4, v0, Lbng;->aF:Z

    .line 5855
    iget-object v0, p0, Lboo;->e:Lbng;

    .line 14285
    iget-object v0, v0, Lbng;->bw:Lbvg;

    .line 5856
    iget-object v1, p0, Lboo;->a:Lbfd;

    .line 5857
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    iget-object v2, p0, Lboo;->b:Lbjb;

    iget-object v2, v2, Lbjb;->a:Ljava/lang/String;

    iget-object v3, p0, Lboo;->c:Ljava/lang/String;

    iget-object v4, p0, Lboo;->d:Lbkq;

    iget-object v5, p0, Lboo;->e:Lbng;

    .line 15285
    iget-object v5, v5, Lbng;->f:Leoo;

    .line 5858
    invoke-virtual {v5}, Leoo;->c()Z

    move-result v5

    iget-object v6, p0, Lboo;->e:Lbng;

    .line 5859
    invoke-virtual {v6}, Lbng;->d()I

    move-result v6

    .line 5857
    invoke-interface/range {v0 .. v6}, Lbvg;->a(ILjava/lang/String;Ljava/lang/String;Lbkq;ZI)Ljava/lang/String;

    move-result-object v0

    .line 5860
    iget-object v1, p0, Lboo;->e:Lbng;

    .line 16285
    iget-object v1, v1, Lbng;->g:Lbry;

    .line 5860
    iget-object v2, p0, Lboo;->b:Lbjb;

    iget-object v2, v2, Lbjb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lbry;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5862
    return-void
.end method
