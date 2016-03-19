.class public final Lwf;
.super Ltx;
.source "SourceFile"


# instance fields
.field final synthetic f:Lwe;

.field private g:Lue;


# direct methods
.method public constructor <init>(Lwe;Landroid/content/Context;Lue;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 717
    iput-object p1, p0, Lwf;->f:Lwe;

    .line 718
    const/4 v3, 0x0

    sget v5, Laen;->F:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Ltx;-><init>(Landroid/content/Context;Ltl;Landroid/view/View;ZI)V

    .line 720
    iput-object p3, p0, Lwf;->g:Lue;

    .line 722
    invoke-virtual {p3}, Lue;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Ltp;

    .line 723
    invoke-virtual {v0}, Ltp;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    iget-object v0, p1, Lwe;->g:Lwh;

    .line 725
    if-nez v0, :cond_2

    .line 2052
    iget-object v0, p1, Lwe;->f:Lub;

    .line 725
    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Lwf;->a(Landroid/view/View;)V

    .line 728
    :cond_0
    iget-object v0, p1, Lwe;->k:Lwk;

    invoke-virtual {p0, v0}, Lwf;->a(Lua;)V

    .line 731
    invoke-virtual {p3}, Lue;->size()I

    move-result v1

    move v0, v4

    .line 732
    :goto_1
    if-ge v0, v1, :cond_1

    .line 733
    invoke-virtual {p3, v0}, Lue;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 734
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 735
    const/4 v4, 0x1

    .line 739
    :cond_1
    invoke-virtual {p0, v4}, Lwf;->a(Z)V

    .line 740
    return-void

    .line 3052
    :cond_2
    iget-object v0, p1, Lwe;->g:Lwh;

    goto :goto_0

    .line 732
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 744
    invoke-super {p0}, Ltx;->onDismiss()V

    .line 745
    iget-object v0, p0, Lwf;->f:Lwe;

    .line 4052
    const/4 v1, 0x0

    iput-object v1, v0, Lwe;->i:Lwf;

    .line 746
    iget-object v0, p0, Lwf;->f:Lwe;

    const/4 v1, 0x0

    iput v1, v0, Lwe;->l:I

    .line 747
    return-void
.end method
