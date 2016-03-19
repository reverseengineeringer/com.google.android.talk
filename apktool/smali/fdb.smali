.class public final Lfdb;
.super Lhbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbw",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/MessageListItemView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 377
    iput-object p1, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    iput-object p2, p0, Lfdb;->a:Ljava/lang/String;

    iput-object p3, p0, Lfdb;->b:Ljava/lang/String;

    invoke-direct {p0}, Lhbw;-><init>()V

    .line 378
    iget-object v0, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 1101
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;->c:Lbzw;

    .line 378
    invoke-virtual {v0}, Lbzw;->an()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfdb;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1387
    iget-object v0, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 2101
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;->c:Lbzw;

    .line 1387
    invoke-virtual {v0}, Lbzw;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 3101
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;->c:Lbzw;

    .line 1388
    invoke-virtual {v0}, Lbzw;->an()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfdb;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1389
    :cond_0
    const-string v0, "Babel"

    const-string v1, "Not showing SmartProfile from conversation because user switched conversations/fragments."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1398
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v0, p0, Lfdb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfdb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1396
    const-string v0, "Babel"

    const-string v1, "Not showing SmartProfile from conversation because there\'s no personId"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1397
    iget-object v0, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->gA:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1401
    :cond_2
    iget-object v0, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lemf;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemf;

    .line 1402
    iget-object v1, p0, Lfdb;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1403
    iget-object v1, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 1404
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 4101
    iget-object v2, v2, Lcom/google/android/apps/hangouts/views/MessageListItemView;->c:Lbzw;

    .line 1404
    iget-object v3, p0, Lfdb;->a:Ljava/lang/String;

    iget-object v4, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 5101
    iget-object v4, v4, Lcom/google/android/apps/hangouts/views/MessageListItemView;->e:Ljava/lang/String;

    .line 1404
    iget-object v5, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 6101
    iget-object v5, v5, Lcom/google/android/apps/hangouts/views/MessageListItemView;->b:Lcom/google/android/apps/hangouts/views/AvatarView;

    .line 1404
    invoke-virtual {v5}, Lcom/google/android/apps/hangouts/views/AvatarView;->b()Ljava/lang/String;

    move-result-object v5

    .line 1403
    invoke-interface/range {v0 .. v5}, Lemf;->a(Landroid/content/Context;Lav;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_1
    iget-object v0, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 10101
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;->i:Lbfd;

    .line 1415
    const/16 v1, 0x85d    # 3.0E-42f

    .line 1414
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 1406
    :cond_3
    iget-object v1, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 1407
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 7101
    iget-object v2, v2, Lcom/google/android/apps/hangouts/views/MessageListItemView;->c:Lbzw;

    .line 1408
    iget-object v3, p0, Lfdb;->b:Ljava/lang/String;

    iget-object v4, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 8101
    iget-object v4, v4, Lcom/google/android/apps/hangouts/views/MessageListItemView;->e:Ljava/lang/String;

    .line 1410
    iget-object v5, p0, Lfdb;->c:Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 9101
    iget-object v5, v5, Lcom/google/android/apps/hangouts/views/MessageListItemView;->b:Lcom/google/android/apps/hangouts/views/AvatarView;

    .line 1411
    invoke-virtual {v5}, Lcom/google/android/apps/hangouts/views/AvatarView;->b()Ljava/lang/String;

    move-result-object v5

    .line 1406
    invoke-interface/range {v0 .. v5}, Lemf;->b(Landroid/content/Context;Lav;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
