.class Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryAdapter"
.end annotation


# instance fields
.field mLocalChatList:Lcom/google/android/talk/util/ChatList;

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/talk/util/ChatList;)V
    .locals 0
    .param p2, "switcher"    # Lcom/google/android/talk/util/ChatList;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 987
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mLocalChatList:Lcom/google/android/talk/util/ChatList;

    .line 989
    return-void
.end method


# virtual methods
.method public getIntent(I)Landroid/content/Intent;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 996
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mLocalChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 998
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mLocalChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v1}, Lcom/google/android/talk/util/ChatList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 999
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method
