.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->makeDialog()Landroid/app/Dialog;
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
    .line 203
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 206
    sparse-switch p2, :sswitch_data_0

    .line 221
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 210
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-boolean v1, v1, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mIsIncomingCall:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # getter for: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRingerForceStopped:Z
    invoke-static {v1}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$300(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/RingerService;->forceStopRinger(Landroid/content/Context;)V

    .line 217
    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$3;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # setter for: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mRingerForceStopped:Z
    invoke-static {v1, v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$302(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Z)Z

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method
