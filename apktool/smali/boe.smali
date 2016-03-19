.class final Lboe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:Lbfd;

.field final synthetic c:Lbng;


# direct methods
.method constructor <init>(Lbng;Landroid/widget/AbsListView;Lbfd;)V
    .locals 0

    .prologue
    .line 3944
    iput-object p1, p0, Lboe;->c:Lbng;

    iput-object p2, p0, Lboe;->a:Landroid/widget/AbsListView;

    iput-object p3, p0, Lboe;->b:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3947
    iget-object v0, p0, Lboe;->c:Lbng;

    iget-boolean v0, v0, Lbng;->ar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lboe;->c:Lbng;

    .line 3948
    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lboe;->c:Lbng;

    .line 3949
    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3950
    iget-object v0, p0, Lboe;->c:Lbng;

    .line 4285
    iget-object v0, v0, Lbng;->bB:Landroid/widget/AbsListView;

    .line 3950
    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lboe;->c:Lbng;

    .line 5285
    iget-object v1, v1, Lbng;->bA:Ldhp;

    .line 3950
    check-cast v1, Lbhx;

    invoke-virtual {v1}, Lbhx;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 3951
    new-instance v0, Lbof;

    invoke-direct {v0, p0}, Lbof;-><init>(Lboe;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 3980
    :cond_0
    return-void
.end method
