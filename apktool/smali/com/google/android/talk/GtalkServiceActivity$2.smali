.class Lcom/google/android/talk/GtalkServiceActivity$2;
.super Ljava/lang/Object;
.source "GtalkServiceActivity.java"

# interfaces
.implements Lcom/google/android/talk/SessionAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/GtalkServiceActivity;->registerForSessionAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/GtalkServiceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GtalkServiceActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/talk/GtalkServiceActivity$2;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 1
    .param p1, "service"    # Lcom/google/android/gtalkservice/IGTalkService;
    .param p2, "session"    # Lcom/google/android/gtalkservice/IImSession;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity$2;->this$0:Lcom/google/android/talk/GtalkServiceActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/GtalkServiceActivity;->sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 62
    return-void
.end method
