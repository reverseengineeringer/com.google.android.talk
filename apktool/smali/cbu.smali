.class public abstract Lcbu;
.super Lcbp;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListViewType:Landroid/widget/AbsListView;",
        ">",
        "Lcbp;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field public bB:Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListViewType;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcbp;-><init>()V

    .line 28
    iput v0, p0, Lcbu;->c:I

    .line 29
    iput v0, p0, Lcbu;->d:I

    return-void
.end method


# virtual methods
.method protected av()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 99
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcbu;->a:I

    .line 108
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcbu;->b:I

    .line 1036
    :goto_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 115
    const-string v1, "babel_extra_log_scrolling"

    invoke-static {v0, v1, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "Babel_Scroll"

    iget v1, p0, Lcbu;->a:I

    iget v2, p0, Lcbu;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "saveScrollPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_2
    iput v5, p0, Lcbu;->b:I

    goto :goto_1
.end method

.method public aw()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 126
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcbu;->b:I

    if-nez v0, :cond_2

    iget v0, p0, Lcbu;->a:I

    if-eqz v0, :cond_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcbu;->a:I

    iget v2, p0, Lcbu;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 132
    const-string v1, "babel_extra_log_scrolling"

    invoke-static {v0, v1, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const-string v0, "Babel_Scroll"

    iget v1, p0, Lcbu;->a:I

    iget v2, p0, Lcbu;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "restoreScrollPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_3
    iput v5, p0, Lcbu;->a:I

    .line 138
    iput v5, p0, Lcbu;->b:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-super {p0, p1}, Lcbp;->onCreate(Landroid/os/Bundle;)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const-string v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcbu;->a:I

    .line 37
    const-string v0, "scroll_off"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcbu;->b:I

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iput v0, p0, Lcbu;->a:I

    .line 40
    iput v0, p0, Lcbu;->b:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcbp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v1

    .line 51
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    .line 52
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 54
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0}, Lcbp;->onDestroyView()V

    .line 60
    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 61
    iput-object v1, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    .line 62
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcbp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcbu;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcbu;->bB:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcbu;->av()V

    .line 70
    const-string v0, "scroll_pos"

    iget v1, p0, Lcbu;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v0, "scroll_off"

    iget v1, p0, Lcbu;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 77
    if-lez p4, :cond_0

    .line 78
    add-int v0, p2, p3

    .line 83
    iput v0, p0, Lcbu;->c:I

    .line 84
    iput p4, p0, Lcbu;->d:I

    .line 86
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
