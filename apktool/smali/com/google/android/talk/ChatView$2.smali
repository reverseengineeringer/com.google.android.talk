.class Lcom/google/android/talk/ChatView$2;
.super Landroid/database/ContentObserver;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;Landroid/os/Bundle;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/android/talk/ChatView$2;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 488
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 489
    iget-object v0, p0, Lcom/google/android/talk/ChatView$2;->this$0:Lcom/google/android/talk/ChatView;

    # getter for: Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->requeryForContactInfo()V

    .line 490
    return-void
.end method
