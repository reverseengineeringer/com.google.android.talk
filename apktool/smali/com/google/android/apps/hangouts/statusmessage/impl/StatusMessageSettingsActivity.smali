.class public final Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;
.super Lipf;
.source "SourceFile"

# interfaces
.implements Ljry;
.implements Ljrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lipf;",
        "Ljry",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljrz",
        "<",
        "Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;

.field private volatile k:Lept;

.field private volatile l:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private final o:Ljtg;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lipf;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->n:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljtg;

    invoke-direct {v0, p0}, Ljtg;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->l:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->l:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->k:Lept;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Ljry;

    invoke-interface {v0}, Ljry;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsc;

    new-instance v2, Ljse;

    invoke-direct {v2, p0}, Ljse;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v2}, Ljsc;->b(Ljse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lept;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->k:Lept;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->k:Lept;

    check-cast v0, Ljsb;

    invoke-interface {v0}, Ljsb;->d()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->l:Ljava/lang/Object;

    .line 180
    :cond_1
    monitor-exit v1

    .line 182
    :cond_2
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing entry point. If you\'re in a test with explicit entry points specified in your @TestRoot, check that you\'re not missing the one for this class."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->h()V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->l:Ljava/lang/Object;

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lipf;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0, p1}, Lipf;->attachBaseContext(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method public g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-class v0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;

    return-object v0
.end method

.method protected g_()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Lipf;->g_()V

    .line 242
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Lipf;->onActivityResult(IILandroid/content/Intent;)V

    .line 227
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3}, Lipf;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 281
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->o()V

    .line 145
    :try_start_0
    invoke-super {p0}, Lipf;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2155
    const-string v0, "Back pressed"

    invoke-static {v0}, Ljud;->b(Ljava/lang/String;)V

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 3155
    const-string v1, "Back pressed"

    invoke-static {v1}, Ljud;->b(Ljava/lang/String;)V

    .line 147
    throw v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Lipf;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->p:Z

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->a()V

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->h()V

    .line 1200
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->j:Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;

    if-nez v0, :cond_1

    .line 1201
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->p:Z

    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createPeer() called outside of onCreate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v1}, Ljtg;->b()V

    throw v0

    .line 1204
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->h()V

    .line 1205
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->k:Lept;

    invoke-virtual {v0}, Lept;->a()Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->j:Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->k:Lept;

    check-cast v0, Ljsl;

    invoke-interface {v0}, Ljsl;->b()Ljsr;

    move-result-object v0

    invoke-virtual {v0}, Ljsr;->a()V

    .line 73
    invoke-super {p0, p1}, Lipf;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->j:Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivityPeer;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->b()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->p:Z

    .line 79
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    invoke-super {p0, p1}, Lipf;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lipf;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->m()V

    .line 135
    :try_start_0
    invoke-super {p0}, Lipf;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->n()V

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v1}, Ljtg;->n()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0, p1}, Lipf;->onNewIntent(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->i()V

    .line 115
    :try_start_0
    invoke-super {p0}, Lipf;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->j()V

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v1}, Ljtg;->j()V

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0, p1}, Lipf;->onPostCreate(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->g()V

    .line 105
    :try_start_0
    invoke-super {p0}, Lipf;->onPostResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->h()V

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v1}, Ljtg;->h()V

    throw v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lipf;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 270
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3}, Lipf;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 276
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lipf;->onRestart()V

    .line 252
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1}, Lipf;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->e()V

    .line 95
    :try_start_0
    invoke-super {p0}, Lipf;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->f()V

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v1}, Ljtg;->f()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0, p1}, Lipf;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->c()V

    .line 85
    :try_start_0
    invoke-super {p0}, Lipf;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->d()V

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v1}, Ljtg;->d()V

    throw v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->k()V

    .line 125
    :try_start_0
    invoke-super {p0}, Lipf;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v0}, Ljtg;->l()V

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;->o:Ljtg;

    invoke-virtual {v1}, Ljtg;->l()V

    throw v0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Lipf;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 286
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lipf;->onUserLeaveHint()V

    .line 237
    return-void
.end method
