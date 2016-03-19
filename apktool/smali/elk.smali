.class public final Lelk;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# instance fields
.field a:Lhaw;

.field private b:Lhpz;

.field private c:Liji;

.field private d:Lcom/google/android/libraries/social/settings/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Limg;-><init>()V

    .line 37
    new-instance v0, Liiz;

    iget-object v1, p0, Lelk;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 38
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lelk;->binder:Lilh;

    const-class v2, Leot;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 55
    invoke-interface {v0}, Leot;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-static {}, Lezm;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Ldvd;->k()Lbfd;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 70
    invoke-static {}, Lezm;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lelk;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    :cond_0
    iget-object v0, p0, Lelk;->d:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lelk;->c:Liji;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->ch:I

    .line 73
    invoke-virtual {v0, v1}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lelk;->d:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    .line 75
    :cond_1
    iget-object v0, p0, Lelk;->d:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c()V

    .line 79
    iget-object v0, p0, Lelk;->b:Lhpz;

    const-string v1, "SMS"

    invoke-interface {v0, v1}, Lhpz;->b(Ljava/lang/String;)I

    move-result v1

    .line 80
    iget-object v0, p0, Lelk;->context:Lill;

    const-class v2, Lhba;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    iput-object v0, p0, Lelk;->a:Lhaw;

    .line 82
    invoke-direct {p0}, Lelk;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v2, Like;

    iget-object v0, p0, Lelk;->context:Lill;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Like;-><init>(Landroid/content/Context;B)V

    .line 84
    iget-object v0, p0, Lelk;->d:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 85
    iget-object v0, p0, Lelk;->binder:Lilh;

    const-class v3, Leot;

    invoke-virtual {v0, v3}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 86
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->bS:I

    invoke-virtual {v2, v3}, Like;->g(I)V

    .line 87
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->bR:I

    invoke-virtual {v2, v3}, Like;->h(I)V

    .line 88
    invoke-interface {v0}, Leot;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Like;->a(Z)V

    .line 89
    new-instance v3, Lell;

    invoke-direct {v3, p0, v0}, Lell;-><init>(Lelk;Leot;)V

    invoke-virtual {v2, v3}, Like;->a(Lijg;)V

    .line 109
    :cond_2
    invoke-static {}, Lezm;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lelk;->context:Lill;

    const-class v3, Lcom/google/android/apps/hangouts/settings/SmsSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lelk;->d:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    iget-object v2, p0, Lelk;->c:Liji;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->jY:I

    .line 113
    invoke-virtual {p0, v3}, Lelk;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 112
    invoke-virtual {v2, v3, v4, v0}, Liji;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Lijc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 120
    :cond_3
    :goto_0
    return-void

    .line 116
    :cond_4
    iget-object v0, p0, Lelk;->d:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lelk;->d:Lcom/google/android/libraries/social/settings/PreferenceCategory;

    invoke-virtual {v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Liji;

    iget-object v1, p0, Lelk;->context:Lill;

    invoke-direct {v0, v1}, Liji;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lelk;->c:Liji;

    .line 66
    invoke-direct {p0}, Lelk;->c()V

    .line 67
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lelk;->binder:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lelk;->b:Lhpz;

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Limg;->onResume()V

    .line 49
    invoke-direct {p0}, Lelk;->c()V

    .line 50
    return-void
.end method
