.class public Lipf;
.super Lba;
.source "SourceFile"

# interfaces
.implements Liof;


# instance fields
.field private j:I

.field public final m:Lipg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lba;-><init>()V

    .line 26
    new-instance v0, Lipg;

    invoke-direct {v0}, Lipg;-><init>()V

    iput-object v0, p0, Lipf;->m:Lipg;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lipf;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lipf;->j:I

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/content/Intent;)V

    .line 193
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lipf;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lipf;->j:I

    .line 197
    return-void
.end method


# virtual methods
.method public a(Lav;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->u()V

    .line 303
    invoke-super {p0, p1}, Lba;->a(Lav;)V

    .line 304
    return-void
.end method

.method public a(Lav;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p2}, Lipf;->a(Landroid/content/Intent;)V

    .line 157
    invoke-super {p0, p1, p2, p3}, Lba;->a(Lav;Landroid/content/Intent;I)V

    .line 158
    invoke-direct {p0}, Lipf;->g()V

    .line 159
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lba;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->i()V

    .line 214
    invoke-super {p0}, Lba;->finish()V

    .line 215
    return-void
.end method

.method public getLifecycle()Liog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lipf;->m:Lipg;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->k()V

    .line 228
    invoke-super {p0, p1}, Lba;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 229
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->j()V

    .line 221
    invoke-super {p0, p1}, Lba;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 222
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1, p2, p3}, Lipg;->a(IILandroid/content/Intent;)V

    .line 123
    invoke-super {p0, p1, p2, p3}, Lba;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->d()V

    .line 105
    invoke-super {p0}, Lba;->onAttachedToWindow()V

    .line 106
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-super {p0}, Lba;->onBackPressed()V

    .line 282
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lba;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->c(Landroid/os/Bundle;)V

    .line 40
    invoke-super {p0, p1}, Lba;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->o()V

    .line 242
    invoke-super {p0, p1, p2, p3}, Lba;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 243
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lba;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->c()V

    .line 99
    invoke-super {p0}, Lba;->onDestroy()V

    .line 100
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->e()V

    .line 111
    invoke-super {p0}, Lba;->onDetachedFromWindow()V

    .line 112
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lba;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lba;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->t()V

    .line 136
    invoke-super {p0}, Lba;->onLowMemory()V

    .line 137
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->g()V

    .line 202
    invoke-super {p0, p1}, Lba;->onNewIntent(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lba;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->b()V

    .line 81
    invoke-super {p0}, Lba;->onPause()V

    .line 82
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->a(Landroid/os/Bundle;)V

    .line 49
    invoke-super {p0, p1}, Lba;->onPostCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->a()V

    .line 75
    invoke-super {p0}, Lba;->onPostResume()V

    .line 76
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->b(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lba;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1, p2, p3}, Lipg;->a(I[Ljava/lang/String;[I)V

    .line 131
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->b(Landroid/os/Bundle;)V

    .line 62
    invoke-super {p0, p1}, Lba;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lipf;->C_()Lbg;

    move-result-object v0

    invoke-static {v0}, Laen;->a(Lbg;)V

    .line 68
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->r()V

    .line 69
    invoke-super {p0}, Lba;->onResume()V

    .line 70
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0, p1}, Lipg;->d(Landroid/os/Bundle;)V

    .line 93
    invoke-super {p0, p1}, Lba;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lipf;->C_()Lbg;

    move-result-object v0

    invoke-static {v0}, Laen;->a(Lbg;)V

    .line 55
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->q()V

    .line 56
    invoke-super {p0}, Lba;->onStart()V

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->s()V

    .line 87
    invoke-super {p0}, Lba;->onStop()V

    .line 88
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->h()V

    .line 208
    invoke-super {p0}, Lba;->onUserLeaveHint()V

    .line 209
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lipf;->m:Lipg;

    invoke-virtual {v0}, Lipg;->f()V

    .line 117
    invoke-super {p0, p1}, Lba;->onWindowFocusChanged(Z)V

    .line 118
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lipf;->a(Landroid/content/Intent;)V

    .line 142
    invoke-super {p0, p1}, Lba;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-direct {p0}, Lipf;->g()V

    .line 144
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lipf;->a(Landroid/content/Intent;)V

    .line 150
    invoke-super {p0, p1, p2}, Lba;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lipf;->g()V

    .line 152
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lipf;->a(Landroid/content/Intent;)V

    .line 173
    invoke-super {p0, p1, p2}, Lba;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    invoke-direct {p0}, Lipf;->g()V

    .line 175
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lipf;->a(Landroid/content/Intent;)V

    .line 181
    invoke-super {p0, p1, p2, p3}, Lba;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 182
    invoke-direct {p0}, Lipf;->g()V

    .line 183
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p2}, Lipf;->a(Landroid/content/Intent;)V

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Lba;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 167
    invoke-direct {p0}, Lipf;->g()V

    .line 168
    return-void
.end method
