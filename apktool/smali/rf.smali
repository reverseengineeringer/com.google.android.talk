.class public Lrf;
.super Lba;
.source "SourceFile"

# interfaces
.implements Lep;
.implements Lqj;
.implements Lrg;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private j:Lrh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3023
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrf;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method


# virtual methods
.method public A_()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1216
    sget-object v0, Lcn;->a:Lco;

    invoke-virtual {v0, p0}, Lco;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 100
    return-void
.end method

.method public a(Leo;)V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p1, p0}, Leo;->a(Landroid/app/Activity;)Leo;

    .line 293
    return-void
.end method

.method public a(Lwb;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public a_(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 391
    invoke-static {p0, p1}, Lcn;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrh;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

.method public b()Lqi;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->i()Lqi;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 407
    invoke-static {p0, p1}, Lcn;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public b(Lwb;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public g()Lqe;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->a()Lqe;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public i()Lrh;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lrf;->j:Lrh;

    if-nez v0, :cond_0

    .line 2117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lrh;->a(Landroid/content/Context;Landroid/view/Window;Lrg;)Lrh;

    move-result-object v0

    .line 456
    iput-object v0, p0, Lrf;->j:Lrh;

    .line 458
    :cond_0
    iget-object v0, p0, Lrf;->j:Lrh;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->g()V

    .line 199
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Lba;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh;->a(Landroid/content/res/Configuration;)V

    .line 131
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->j()V

    .line 60
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->c()V

    .line 61
    invoke-super {p0, p1}, Lba;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lba;->onDestroy()V

    .line 162
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->h()V

    .line 163
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lba;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lrf;->g()Lqe;

    move-result-object v0

    .line 152
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lqe;->d()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lrf;->z_()Z

    move-result v0

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Lba;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0, p1, p2}, Lba;->onPanelClosed(ILandroid/view/Menu;)V

    .line 449
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lba;->onPostCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->d()V

    .line 68
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lba;->onPostResume()V

    .line 142
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->f()V

    .line 143
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lba;->onStop()V

    .line 136
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->e()V

    .line 137
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lba;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 168
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh;->a(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh;->a(I)V

    .line 110
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh;->a(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrh;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

.method public y_()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lrf;->i()Lrh;

    move-result-object v0

    invoke-virtual {v0}, Lrh;->g()V

    .line 192
    return-void
.end method

.method public z_()Z
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lrf;->A_()Landroid/content/Intent;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0, v0}, Lrf;->a_(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-static {p0}, Leo;->a(Landroid/content/Context;)Leo;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Lrf;->a(Leo;)V

    .line 344
    invoke-virtual {v0}, Leo;->b()V

    .line 347
    :try_start_0
    invoke-static {p0}, Laj;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v0, 0x1

    .line 360
    :goto_1
    return v0

    .line 351
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lrf;->finish()V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0, v0}, Lrf;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
