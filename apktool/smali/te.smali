.class public final Lte;
.super Lze;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lte;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 296
    invoke-direct {p0, p1}, Lze;-><init>(Landroid/view/View;)V

    .line 297
    return-void
.end method


# virtual methods
.method public a()Lza;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lte;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 1042
    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Ltf;

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lte;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 2042
    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Ltf;

    .line 302
    invoke-virtual {v0}, Ltf;->a()Lza;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lte;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 3042
    iget-object v1, v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ltn;

    .line 310
    if-eqz v1, :cond_0

    iget-object v1, p0, Lte;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 4042
    iget-object v1, v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ltn;

    .line 310
    iget-object v2, p0, Lte;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 5042
    iget-object v2, v2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Ltp;

    .line 310
    invoke-interface {v1, v2}, Ltn;->a(Ltp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lte;->a()Lza;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lza;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 314
    :cond_0
    return v0
.end method
