.class Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;
.super Ljava/lang/Object;
.source "AlertNotificationFullScreenActivity.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AlertNotificationFullScreenActivity;->loadContactInfoAndShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

.field final synthetic val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AlertNotificationFullScreenActivity;Lcom/google/android/talk/ContactInfoQuery;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iput-object p2, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoaded()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    iget-object v1, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;->val$existingCallNickQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->mExistingCallNickName:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/google/android/talk/AlertNotificationFullScreenActivity$6;->this$0:Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    # invokes: Lcom/google/android/talk/AlertNotificationFullScreenActivity;->showDialog()V
    invoke-static {v0}, Lcom/google/android/talk/AlertNotificationFullScreenActivity;->access$700(Lcom/google/android/talk/AlertNotificationFullScreenActivity;)V

    .line 435
    return-void
.end method
