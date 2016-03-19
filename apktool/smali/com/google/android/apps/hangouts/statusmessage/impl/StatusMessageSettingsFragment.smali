.class public final Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;
.super Lipe;
.source "SourceFile"

# interfaces
.implements Ljry;
.implements Ljrz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lipe;",
        "Ljry",
        "<",
        "Leqb;",
        ">;",
        "Ljrz",
        "<",
        "Lepv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lepv;

.field private b:Leqb;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lipe;-><init>()V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lipe;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->a(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    check-cast p1, Ljry;

    invoke-interface {p1}, Ljry;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsd;

    new-instance v1, Ljsj;

    invoke-direct {v1, p0}, Ljsj;-><init>(Lav;)V

    .line 181
    invoke-interface {v0, v1}, Ljsd;->b(Ljsj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqb;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->b:Leqb;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->b:Leqb;

    invoke-virtual {v0}, Leqb;->a()Lepv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->a:Lepv;

    .line 187
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing entry point. If you\'re in a test with explicit entry points specified in your @TestRoot, check that you\'re not missing the one for this class."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b()Lepv;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->a:Lepv;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "peer() called before initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->a:Lepv;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->b:Leqb;

    .line 23
    return-object v0
.end method

.method public g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lepv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Lepv;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 173
    invoke-super {p0, p1}, Lipe;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 174
    new-instance v0, Ljsa;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v1}, Lba;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->b:Leqb;

    invoke-direct {v0, v1, v2}, Ljsa;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0}, Ljsa;->b()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Ljud;->b()V

    .line 95
    :try_start_0
    invoke-super {p0, p1}, Lipe;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {}, Ljud;->c()V

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Ljud;->b()V

    .line 59
    :try_start_0
    invoke-super {p0, p1}, Lipe;->onAttach(Landroid/app/Activity;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->a:Lepv;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->a(Landroid/app/Activity;)V

    .line 1093
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1100
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->dG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    invoke-static {}, Ljud;->c()V

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Ljud;->b()V

    .line 73
    :try_start_0
    invoke-super {p0, p1}, Lipe;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Ljud;->c()V

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Ljud;->b()V

    .line 83
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lipe;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2039
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->b()Lepv;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Lepv;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    invoke-static {}, Ljud;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Ljud;->b()V

    .line 155
    :try_start_0
    invoke-super {p0}, Lipe;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {}, Ljud;->c()V

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Ljud;->b()V

    .line 145
    :try_start_0
    invoke-super {p0}, Lipe;->onDestroyView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-static {}, Ljud;->c()V

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Ljud;->b()V

    .line 165
    :try_start_0
    invoke-super {p0}, Lipe;->onDetach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {}, Ljud;->c()V

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Ljud;->b()V

    .line 125
    :try_start_0
    invoke-super {p0}, Lipe;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {}, Ljud;->c()V

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Ljud;->b()V

    .line 115
    :try_start_0
    invoke-super {p0}, Lipe;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Ljud;->c()V

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0, p1}, Lipe;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3039
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsFragment;->b()Lepv;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lepv;->a(Landroid/os/Bundle;)V

    .line 208
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Ljud;->b()V

    .line 105
    :try_start_0
    invoke-super {p0}, Lipe;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {}, Ljud;->c()V

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Ljud;->b()V

    .line 135
    :try_start_0
    invoke-super {p0}, Lipe;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {}, Ljud;->c()V

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    invoke-static {}, Ljud;->c()V

    throw v0
.end method
