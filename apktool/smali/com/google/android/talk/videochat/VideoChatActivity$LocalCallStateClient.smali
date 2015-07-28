.class Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;
.super Lcom/google/android/videochat/CallStateClient;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalCallStateClient"
.end annotation


# instance fields
.field public mCallStateClientListening:Z

.field public mCallStateClientLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 1

    .prologue
    .line 553
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 554
    invoke-direct {p0, p1}, Lcom/google/android/videochat/CallStateClient;-><init>(Landroid/content/Context;)V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientListening:Z

    .line 551
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientLock:Ljava/lang/Object;

    .line 555
    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 3
    .param p1, "remoteBareJid"    # Ljava/lang/String;
    .param p2, "callState"    # Lcom/google/android/videochat/CallState;
    .param p3, "isRequestReply"    # Z
    .param p4, "callbackParam"    # Ljava/lang/Object;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-boolean v1, p2, Lcom/google/android/videochat/CallState;->mute:Z

    # setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mIsMuted:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1802(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 568
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-boolean v1, p2, Lcom/google/android/videochat/CallState;->secure:Z

    # setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureState:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$102(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 569
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v1, p2, Lcom/google/android/videochat/CallState;->audioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    # setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1902(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/videochat/CallState$AudioDeviceState;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 570
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v1, p2, Lcom/google/android/videochat/CallState;->availableAudioDevices:Ljava/util/Set;

    # setter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mAvailableAudioDevices:Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2002(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/util/Set;)Ljava/util/Set;

    .line 571
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->updateAudioUi()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2100(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 573
    iget v0, p2, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 575
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x2

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2200(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    goto :goto_0

    .line 580
    :pswitch_3
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request call with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accepted call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x1

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2200(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 598
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-string v1, "call ended"

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->startTextChatActivity()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2400(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 602
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2500(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto/16 :goto_0

    .line 605
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x3

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2200(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 606
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In call with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/videochat/CallState;->secure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
