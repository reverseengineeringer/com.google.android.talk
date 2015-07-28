.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->setCancelCallbackListener(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v0, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-wide v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v3, v3, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    # invokes: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->declineCall(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$500(Lcom/google/android/talk/AlertNotificationFullScreenActivity;JLjava/lang/String;)V

    .line 264
    :cond_0
    const-string v0, "talk"

    const-string v1, "[AlertNotificationFullScreen] onCancel: dismiss"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$5;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # invokes: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissNotificationAndFinish()V
    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$600(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 266
    return-void
.end method
