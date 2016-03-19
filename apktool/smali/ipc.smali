.class public Lipc;
.super Lrf;
.source "SourceFile"

# interfaces
.implements Liof;


# instance fields
.field public final B:Lipg;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lrf;-><init>()V

    .line 28
    new-instance v0, Lipg;

    invoke-direct {v0}, Lipg;-><init>()V

    iput-object v0, p0, Lipc;->B:Lipg;

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lipc;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lipc;->j:I

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/content/Intent;)V

    .line 195
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lipc;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lipc;->j:I

    .line 199
    return-void
.end method


# virtual methods
.method public a(Lav;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->u()V

    .line 303
    invoke-super {p0, p1}, Lrf;->a(Lav;)V

    .line 304
    return-void
.end method

.method public a(Lav;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p2}, Lipc;->c(Landroid/content/Intent;)V

    .line 159
    invoke-super {p0, p1, p2, p3}, Lrf;->a(Lav;Landroid/content/Intent;I)V

    .line 160
    invoke-direct {p0}, Lipc;->j()V

    .line 161
    return-void
.end method

.method public a(Lwb;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->j()V

    .line 222
    invoke-super {p0, p1}, Lrf;->a(Lwb;)V

    .line 223
    return-void
.end method

.method public b(Lwb;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->k()V

    .line 228
    invoke-super {p0, p1}, Lrf;->b(Lwb;)V

    .line 229
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lrf;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->i()V

    .line 216
    invoke-super {p0}, Lrf;->finish()V

    .line 217
    return-void
.end method

.method public getLifecycle()Liog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lipc;->B:Lipg;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1, p2, p3}, Lipg;->a(IILandroid/content/Intent;)V

    .line 125
    invoke-super {p0, p1, p2, p3}, Lrf;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->d()V

    .line 107
    invoke-super {p0}, Lrf;->onAttachedToWindow()V

    .line 108
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-super {p0}, Lrf;->onBackPressed()V

    .line 282
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lrf;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->c(Landroid/os/Bundle;)V

    .line 42
    invoke-super {p0, p1}, Lrf;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->o()V

    .line 242
    invoke-super {p0, p1, p2, p3}, Lrf;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 243
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lrf;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->c()V

    .line 101
    invoke-super {p0}, Lrf;->onDestroy()V

    .line 102
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->e()V

    .line 113
    invoke-super {p0}, Lrf;->onDetachedFromWindow()V

    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lrf;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lrf;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->t()V

    .line 138
    invoke-super {p0}, Lrf;->onLowMemory()V

    .line 139
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->g()V

    .line 204
    invoke-super {p0, p1}, Lrf;->onNewIntent(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lrf;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->b()V

    .line 83
    invoke-super {p0}, Lrf;->onPause()V

    .line 84
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/os/Bundle;)V

    .line 51
    invoke-super {p0, p1}, Lrf;->onPostCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->a()V

    .line 77
    invoke-super {p0}, Lrf;->onPostResume()V

    .line 78
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->b(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lrf;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1, p2, p3}, Lipg;->a(I[Ljava/lang/String;[I)V

    .line 133
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->b(Landroid/os/Bundle;)V

    .line 64
    invoke-super {p0, p1}, Lrf;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lipc;->C_()Lbg;

    move-result-object v0

    invoke-static {v0}, Laen;->a(Lbg;)V

    .line 70
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->r()V

    .line 71
    invoke-super {p0}, Lrf;->onResume()V

    .line 72
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0, p1}, Lipg;->d(Landroid/os/Bundle;)V

    .line 95
    invoke-super {p0, p1}, Lrf;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lipc;->C_()Lbg;

    move-result-object v0

    invoke-static {v0}, Laen;->a(Lbg;)V

    .line 57
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->q()V

    .line 58
    invoke-super {p0}, Lrf;->onStart()V

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->s()V

    .line 89
    invoke-super {p0}, Lrf;->onStop()V

    .line 90
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->h()V

    .line 210
    invoke-super {p0}, Lrf;->onUserLeaveHint()V

    .line 211
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lipc;->B:Lipg;

    invoke-virtual {v0}, Lipg;->f()V

    .line 119
    invoke-super {p0, p1}, Lrf;->onWindowFocusChanged(Z)V

    .line 120
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lipc;->c(Landroid/content/Intent;)V

    .line 144
    invoke-super {p0, p1}, Lrf;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-direct {p0}, Lipc;->j()V

    .line 146
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lipc;->c(Landroid/content/Intent;)V

    .line 152
    invoke-super {p0, p1, p2}, Lrf;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 153
    invoke-direct {p0}, Lipc;->j()V

    .line 154
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lipc;->c(Landroid/content/Intent;)V

    .line 175
    invoke-super {p0, p1, p2}, Lrf;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    invoke-direct {p0}, Lipc;->j()V

    .line 177
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lipc;->c(Landroid/content/Intent;)V

    .line 183
    invoke-super {p0, p1, p2, p3}, Lrf;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 184
    invoke-direct {p0}, Lipc;->j()V

    .line 185
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p2}, Lipc;->c(Landroid/content/Intent;)V

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Lrf;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 169
    invoke-direct {p0}, Lipc;->j()V

    .line 170
    return-void
.end method
