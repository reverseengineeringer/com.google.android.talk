.class public Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract$AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# instance fields
.field private mAccountId:J

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "keepUpdated"    # Z
    .param p3, "accountId"    # J
    .param p5, "handlerForUpdateNotifications"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 1811
    invoke-static {p3, p4}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getContentUriByAccountId(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "value"

    aput-object v4, v2, v0

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "name"

    invoke-direct {p0, v0, v1, p2, p5}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 1817
    iput-object p1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1818
    iput-wide p3, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    .line 1819
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 2323
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2324
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "def":Z
    :cond_0
    return p2
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 2362
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2363
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "def":J
    :cond_0
    return-wide p2
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 2336
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2337
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "def":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 2061
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2069
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2071
    const/4 v1, 0x1

    .line 2073
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAudioChatEnabled()Z
    .locals 3

    .prologue
    .line 2106
    const-string v0, "audiochatv2"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    # invokes: Lcom/google/android/gsf/TalkContract$AccountSettings;->isEnabled(J)Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getCameraEnabled()Z
    .locals 3

    .prologue
    .line 2181
    const-string v0, "show_camera"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    # invokes: Lcom/google/android/gsf/TalkContract$AccountSettings;->isEnabled(J)Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 2197
    const/16 v0, 0x8

    .line 2199
    .local v0, "caps":I
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getAudioChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2200
    or-int/lit8 v0, v0, 0x1

    .line 2203
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2204
    or-int/lit8 v0, v0, 0x2

    .line 2206
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2207
    or-int/lit8 v0, v0, 0x4

    .line 2211
    :cond_1
    return v0
.end method

.method public getNotifyFriendInvitation()Z
    .locals 2

    .prologue
    .line 2257
    const-string v0, "notify_invite"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 2

    .prologue
    .line 2238
    const-string v0, "show_away_on_idle"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowMobileIndicator(Landroid/content/Context;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 2053
    const-string v1, "mobile_indicator"

    invoke-static {p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1979
    const-string v0, "text-notif-type"

    const-string v1, "statusbar"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2016
    const-string v0, "ringtone"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextVibrate()Z
    .locals 2

    .prologue
    .line 1875
    const-string v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTextVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1894
    const-string v1, "vibrate-when"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, "when":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1898
    .end local v0    # "when":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "when":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "silent"

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "never"

    goto :goto_1
.end method

.method public getVideoChatEnabled()Z
    .locals 3

    .prologue
    .line 2147
    const-string v0, "videochatv2"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    # invokes: Lcom/google/android/gsf/TalkContract$AccountSettings;->isEnabled(J)Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getVideoImageStabilization()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1960
    const-string v0, "video-image-stabilization"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1998
    const-string v0, "video-notif-type"

    const-string v1, "popup"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2034
    const-string v0, "ringtone-video"

    const-string v1, "content://settings/system/ringtone"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoVibrate()Z
    .locals 2

    .prologue
    .line 1917
    const-string v0, "vibrate-video"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1936
    const-string v1, "vibrate-when-video"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1937
    .local v0, "when":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1940
    .end local v0    # "when":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "when":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "silent"

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "never"

    goto :goto_1
.end method

.method public setAudioChatEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAudioChatEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 2084
    return-void
.end method

.method public setCameraEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setCameraEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 2175
    return-void
.end method

.method public setNotifyFriendInvitation(Z)V
    .locals 3
    .param p1, "notify"    # Z

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotifyFriendInvitation(Landroid/content/ContentResolver;ZJ)V

    .line 2249
    return-void
.end method

.method public setShowAwayOnIdle(Z)V
    .locals 3
    .param p1, "showAway"    # Z

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowAwayOnIdle(Landroid/content/ContentResolver;ZJ)V

    .line 2230
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .locals 3
    .param p1, "showMobile"    # Z

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;ZJ)V

    .line 2044
    return-void
.end method

.method public setTextNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "notificationType"    # Ljava/lang/String;

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1971
    return-void
.end method

.method public setTextRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .param p1, "ringtoneUri"    # Ljava/lang/String;

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 2008
    return-void
.end method

.method public setTextVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .param p1, "when"    # Ljava/lang/String;

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1885
    return-void
.end method

.method public setVideoChatEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoChatEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 2125
    return-void
.end method

.method public setVideoImageStabilization(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageStabilization"    # Ljava/lang/String;

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoImageStabilization(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1952
    return-void
.end method

.method public setVideoNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "notificationType"    # Ljava/lang/String;

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1990
    return-void
.end method

.method public setVideoRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .param p1, "ringtoneUri"    # Ljava/lang/String;

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 2026
    return-void
.end method

.method public setVideoVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .param p1, "when"    # Ljava/lang/String;

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1927
    return-void
.end method
