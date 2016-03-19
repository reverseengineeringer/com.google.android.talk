.class public final Lcae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqg;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcae;->a:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y_()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcae;->a:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 1112
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->c:Lhpz;

    .line 294
    iget-object v1, p0, Lcae;->a:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 2112
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->b:Lhpu;

    .line 294
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcae;->a:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 3112
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->s()V

    .line 297
    :cond_0
    return-void
.end method
