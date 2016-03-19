.class public Labq;
.super Lba;
.source "SourceFile"

# interfaces
.implements Lacc;


# instance fields
.field private j:Labn;

.field private k:Labm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Labn;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Labn;

    invoke-direct {v0, p0}, Labn;-><init>(Lacc;)V

    return-object v0
.end method

.method public h()Labn;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Labq;->j:Labn;

    return-object v0
.end method

.method public i()Landroid/content/Context;
    .locals 0

    .prologue
    .line 119
    return-object p0
.end method

.method public j()Labm;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Labq;->k:Labm;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Labm;

    invoke-virtual {p0}, Labq;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, v1}, Labm;-><init>(Landroid/app/ActionBar;)V

    iput-object v0, p0, Labq;->k:Labm;

    .line 127
    :cond_0
    iget-object v0, p0, Labq;->k:Labm;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lba;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Labq;->j:Labn;

    invoke-virtual {v0}, Labn;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-super {p0}, Lba;->onBackPressed()V

    .line 88
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lba;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Labq;->g()Labn;

    move-result-object v0

    iput-object v0, p0, Labq;->j:Labn;

    .line 41
    iget-object v0, p0, Labq;->j:Labn;

    invoke-virtual {v0, p1}, Labn;->a(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Labq;->j:Labn;

    invoke-virtual {v0}, Labn;->d()V

    .line 80
    invoke-super {p0}, Lba;->onDestroy()V

    .line 81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Labq;->j:Labn;

    invoke-virtual {v0, p1}, Labn;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lba;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Labq;->j:Labn;

    invoke-virtual {v0}, Labn;->c()V

    .line 68
    invoke-super {p0}, Lba;->onPause()V

    .line 69
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lba;->onResume()V

    .line 62
    iget-object v0, p0, Labq;->j:Labn;

    invoke-virtual {v0}, Labn;->b()V

    .line 63
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Lba;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Labq;->j:Labn;

    invoke-virtual {v0, p1}, Labn;->b(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lba;->onStart()V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lba;->onStop()V

    .line 75
    return-void
.end method
