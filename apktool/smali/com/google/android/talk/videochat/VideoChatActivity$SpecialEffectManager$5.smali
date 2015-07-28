.class Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$5;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->showPickerForBackgrounds(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$5;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$5;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->hideSpecialEffectsPicker()Z
    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3700(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    .line 975
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 976
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 977
    check-cast v2, Ljava/lang/String;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 978
    .local v0, "backgroundUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$5;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->startBackgroundReplaceTraining(Landroid/net/Uri;)V
    invoke-static {v3, v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3800(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Landroid/net/Uri;)V

    .line 989
    .end local v0    # "backgroundUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 980
    .restart local v2    # "tag":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    .local v1, "i":Landroid/content/Intent;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "video/*"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 985
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager$5;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    iget-object v3, v3, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
