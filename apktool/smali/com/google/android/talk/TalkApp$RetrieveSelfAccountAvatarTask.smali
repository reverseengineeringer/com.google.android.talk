.class Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
.super Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrieveSelfAccountAvatarTask"
.end annotation


# instance fields
.field mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/TalkApp;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V
    .locals 1
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "onLoaded"    # Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->this$0:Lcom/google/android/talk/TalkApp;

    .line 1154
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;-><init>(Landroid/content/ContentResolver;Ljava/lang/Runnable;)V

    .line 1155
    iput-object p3, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    .line 1156
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;
    .locals 1
    .param p1, "accountInfos"    # [Lcom/google/android/talk/TalkApp$AccountInfo;

    .prologue
    .line 1171
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1172
    invoke-super {p0, p1}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1148
    check-cast p1, [Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V
    .locals 3
    .param p1, "avatarData"    # Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->this$0:Lcom/google/android/talk/TalkApp;

    monitor-enter v1

    .line 1161
    :try_start_0
    # getter for: Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/google/android/talk/TalkApp;->access$800()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    invoke-super {p0, p1}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 1164
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->mOnLoaded:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;

    invoke-interface {v0, p1}, Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;->run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 1167
    :cond_0
    return-void

    .line 1162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1148
    check-cast p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    return-void
.end method
