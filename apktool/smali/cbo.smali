.class public Lcbo;
.super Lcbu;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListViewType:Landroid/widget/AbsListView;",
        "AdapterType:",
        "Ldhp;",
        ">",
        "Lcbu",
        "<T",
        "ListViewType;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public bA:Ldhp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdapterType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcbu;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcbo;->bA:Ldhp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbo;->bA:Ldhp;

    invoke-virtual {v0}, Ldhp;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbo;->bA:Ldhp;

    invoke-virtual {v0}, Ldhp;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcbo;->bA:Ldhp;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcbo;->bA:Ldhp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldhp;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 21
    :cond_0
    invoke-super {p0}, Lcbu;->onDetach()V

    .line 22
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcbu;->onPause()V

    .line 28
    iget-object v0, p0, Lcbo;->bA:Ldhp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbo;->bA:Ldhp;

    invoke-virtual {v0}, Ldhp;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcbo;->bA:Ldhp;

    invoke-virtual {v0}, Ldhp;->c()V

    .line 31
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcbu;->onResume()V

    .line 37
    iget-object v0, p0, Lcbo;->bA:Ldhp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbo;->bA:Ldhp;

    invoke-virtual {v0}, Ldhp;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcbo;->bA:Ldhp;

    invoke-virtual {v0}, Ldhp;->d()V

    .line 40
    :cond_0
    return-void
.end method
