.class Lcom/google/android/talk/AddBuddyScreen$1;
.super Ljava/lang/Object;
.source "AddBuddyScreen.java"

# interfaces
.implements Lcom/google/android/talk/SessionAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AddBuddyScreen;->registerForSessionAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AddBuddyScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AddBuddyScreen;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/talk/AddBuddyScreen$1;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 1
    .param p1, "service"    # Lcom/google/android/gtalkservice/IGTalkService;
    .param p2, "session"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen$1;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    # invokes: Lcom/google/android/talk/AddBuddyScreen;->sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/talk/AddBuddyScreen;->access$000(Lcom/google/android/talk/AddBuddyScreen;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 123
    return-void
.end method
