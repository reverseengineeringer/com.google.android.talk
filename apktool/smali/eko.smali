.class public final Leko;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Limg;-><init>()V

    .line 20
    new-instance v0, Liiz;

    iget-object v1, p0, Leko;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    .line 30
    new-instance v2, Liji;

    iget-object v0, p0, Leko;->context:Lill;

    invoke-direct {v2, v0}, Liji;-><init>(Landroid/content/Context;)V

    .line 33
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->aj:I

    invoke-virtual {v2, v0}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v8

    .line 35
    iget-object v0, p0, Leko;->context:Lill;

    iget-object v1, p0, Leko;->lifecycle:Linz;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->ah:I

    const-string v4, "chat_notification_enabled_key"

    const-string v5, "chat_notification_sound_key"

    const/4 v6, 0x2

    const-string v7, "chat_notification_vibrate_bool_key"

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/hangouts/settings/NotificationSettingsActivity;->a(Landroid/content/Context;Liog;Liji;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lijc;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 42
    iget-object v0, p0, Leko;->context:Lill;

    iget-object v1, p0, Leko;->lifecycle:Linz;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->sI:I

    const-string v4, "hangouts_notification_enabled_key"

    const-string v5, "hangout_sound_key"

    const/4 v6, 0x1

    const-string v7, "hangout_vibrate_boolean_key"

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/hangouts/settings/NotificationSettingsActivity;->a(Landroid/content/Context;Liog;Liji;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lijc;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 49
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method
