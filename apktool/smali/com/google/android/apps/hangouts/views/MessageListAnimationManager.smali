.class public final Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field static f:I


# instance fields
.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/apps/hangouts/views/MessageListAnimationManager$AnimateInNewMessageRunnable;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field final d:Lfcx;

.field e:Lfcy;

.field private g:Landroid/widget/AbsListView;

.field private h:Landroid/os/Handler;

.field private i:Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lezi;->u:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;Lfcx;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->b:Ljava/util/Queue;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->c:Z

    .line 168
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->g:Landroid/widget/AbsListView;

    .line 169
    iput-object p2, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->d:Lfcx;

    .line 170
    iput-object p3, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->h:Landroid/os/Handler;

    .line 172
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->eN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->f:I

    .line 173
    return-void
.end method


# virtual methods
.method public a()Lfcx;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->d:Lfcx;

    return-object v0
.end method

.method public a(Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->i:Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    .line 177
    return-void
.end method

.method public a(Lfcy;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->e:Lfcy;

    .line 50
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->c:Z

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->d:Lfcx;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->d:Lfcx;

    invoke-virtual {v0}, Lfcx;->a()V

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->c(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->i:Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->i:Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->g:Landroid/widget/AbsListView;

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->i:Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->h()V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->d:Lfcx;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->d:Lfcx;

    invoke-virtual {v0}, Lfcx;->b()V

    .line 72
    :cond_2
    return-void
.end method

.method public b()Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->i:Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    return-object v0
.end method

.method public b(Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;)V
    .locals 3

    .prologue
    .line 188
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->a:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "enqueueForAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    new-instance v0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager$AnimateInNewMessageRunnable;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->g:Landroid/widget/AbsListView;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager$AnimateInNewMessageRunnable;-><init>(Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;Landroid/widget/AbsListView;)V

    .line 1195
    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->c:Z

    if-eqz v1, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 1198
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
