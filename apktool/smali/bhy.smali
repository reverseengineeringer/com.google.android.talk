.class final Lbhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field final synthetic a:Lbhx;


# direct methods
.method constructor <init>(Lbhx;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lbhy;->a:Lbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 165
    instance-of v0, p1, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->m()V

    .line 168
    :cond_0
    return-void
.end method
