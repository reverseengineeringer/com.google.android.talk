.class Lcom/google/android/talk/fragments/SetStatusFragment$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Lcom/google/android/talk/SessionAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 4
    .param p1, "service"    # Lcom/google/android/gtalkservice/IGTalkService;
    .param p2, "session"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    # getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$300(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    # getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$300(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    # setter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-static {v0, p2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$402(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/gtalkservice/IImSession;)Lcom/google/android/gtalkservice/IImSession;

    .line 363
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    # invokes: Lcom/google/android/talk/fragments/SetStatusFragment;->initializeFromImSession()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$500(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    # invokes: Lcom/google/android/talk/fragments/SetStatusFragment;->registerListeners()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 366
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    const-string v1, "initialize: update views"

    # invokes: Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$700(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    # invokes: Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$800(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    # invokes: Lcom/google/android/talk/fragments/SetStatusFragment;->checkRunnable()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$900(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    goto :goto_0
.end method
