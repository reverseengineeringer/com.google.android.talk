.class final Lbof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lboe;


# direct methods
.method constructor <init>(Lboe;)V
    .locals 0

    .prologue
    .line 3952
    iput-object p1, p0, Lbof;->a:Lboe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3955
    iget-object v0, p0, Lbof;->a:Lboe;

    iget-object v0, v0, Lboe;->c:Lbng;

    iget-boolean v0, v0, Lbng;->ar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbof;->a:Lboe;

    iget-object v0, v0, Lboe;->c:Lbng;

    .line 3956
    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbof;->a:Lboe;

    iget-object v0, v0, Lboe;->c:Lbng;

    .line 3957
    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3958
    iget-object v0, p0, Lbof;->a:Lboe;

    iget-object v0, v0, Lboe;->a:Landroid/widget/AbsListView;

    iget-object v1, p0, Lbof;->a:Lboe;

    iget-object v1, v1, Lboe;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3959
    if-eqz v0, :cond_1

    .line 3960
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lbof;->a:Lboe;

    iget-object v1, v1, Lboe;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getBottom()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3962
    :goto_0
    iget-object v1, p0, Lbof;->a:Lboe;

    iget-object v1, v1, Lboe;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lbof;->a:Lboe;

    iget-object v2, v2, Lboe;->a:Landroid/widget/AbsListView;

    .line 3963
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 3964
    iget-object v0, p0, Lbof;->a:Lboe;

    iget-object v0, v0, Lboe;->b:Lbfd;

    const/16 v1, 0xb83

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 3976
    :cond_0
    :goto_1
    return-void

    .line 3960
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3968
    :cond_2
    if-eqz v0, :cond_0

    .line 3969
    iget-object v0, p0, Lbof;->a:Lboe;

    iget-object v0, v0, Lboe;->b:Lbfd;

    const/16 v1, 0xb89

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_1
.end method
