.class final Lfcs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lfcr;


# direct methods
.method constructor <init>(Lfcr;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lfcs;->a:Lfcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lfcs;->a:Lfcr;

    .line 1013
    iget-object v0, v0, Lfcr;->d:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lfcs;->a:Lfcr;

    .line 2013
    iget-object v0, v0, Lfcr;->d:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lfcs;->a:Lfcr;

    .line 3013
    iget-object v0, v0, Lfcr;->c:Lfcv;

    .line 55
    iget-object v1, p0, Lfcs;->a:Lfcr;

    .line 4013
    iget-object v1, v1, Lfcr;->d:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->u()I

    move-result v1

    invoke-interface {v0, v1}, Lfcv;->b(I)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lfcs;->a:Lfcr;

    .line 5013
    iget-object v0, v0, Lfcr;->c:Lfcv;

    .line 57
    check-cast p1, Lfcr;

    iget-object v1, p0, Lfcs;->a:Lfcr;

    .line 6078
    iget-object v1, v1, Lfcr;->a:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lfcs;->a:Lfcr;

    iget-object v2, v2, Lfcr;->b:Ljava/lang/String;

    .line 57
    invoke-interface {v0, p1, v1, v2}, Lfcv;->a(Lfcr;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
