.class public final Lfdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lck",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/views/MessageListItemView;

.field private final b:Ljava/lang/StringBuilder;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/MessageListItemView;Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 2230
    iput-object p1, p0, Lfdi;->a:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2231
    iput-object p3, p0, Lfdi;->b:Ljava/lang/StringBuilder;

    .line 2232
    iput-object p2, p0, Lfdi;->c:Landroid/content/Context;

    .line 2233
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2237
    new-instance v0, Lfdk;

    iget-object v1, p0, Lfdi;->c:Landroid/content/Context;

    iget-object v2, p0, Lfdi;->a:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 3101
    iget-object v2, v2, Lcom/google/android/apps/hangouts/views/MessageListItemView;->i:Lbfd;

    .line 2238
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    iget-object v3, p0, Lfdi;->a:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 4101
    iget-object v3, v3, Lcom/google/android/apps/hangouts/views/MessageListItemView;->h:Ljava/lang/String;

    .line 2238
    invoke-direct {v0, v1, v2, v3}, Lfdk;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2226
    check-cast p2, Ljava/lang/String;

    .line 4243
    iget-object v0, p0, Lfdi;->a:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 5101
    iput-object p2, v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;->g:Ljava/lang/String;

    .line 4244
    iget-object v0, p0, Lfdi;->c:Landroid/content/Context;

    iget-object v1, p0, Lfdi;->b:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfdi;->a:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 6101
    iget-wide v2, v2, Lcom/google/android/apps/hangouts/views/MessageListItemView;->d:J

    .line 4245
    const/4 v4, 0x0

    iget-object v5, p0, Lfdi;->a:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 7101
    iget-object v5, v5, Lcom/google/android/apps/hangouts/views/MessageListItemView;->g:Ljava/lang/String;

    .line 4244
    invoke-static/range {v0 .. v5}, Laal;->a(Landroid/content/Context;Ljava/lang/StringBuilder;JLjava/lang/String;Ljava/lang/String;)V

    .line 2226
    return-void
.end method

.method public onLoaderReset(Lfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2249
    return-void
.end method
