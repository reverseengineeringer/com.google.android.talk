.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
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
    .line 228
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 231
    packed-switch p2, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # invokes: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dismissNotificationAndFinish()V
    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$600(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 251
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v0, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-wide v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v3, v3, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->acceptCall(JLjava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    const-string v1, "click positive button"

    iget-object v2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v2, v2, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    # invokes: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->dumpIntent(Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$400(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Ljava/lang/String;Landroid/content/Intent;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mShowChatIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v0, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-wide v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$4;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v3, v3, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRemoteJid:Ljava/lang/String;

    # invokes: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->declineCall(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$500(Lcom/google/android/talk/AlertNotificationFullScreenActivity;JLjava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
