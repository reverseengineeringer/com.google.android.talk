.class final Lbth;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lbso;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbtg;

.field private c:Lbso;


# direct methods
.method constructor <init>(Lbtg;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lbth;->b:Lbtg;

    iput-object p2, p0, Lbth;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 427
    check-cast p1, [Lbso;

    .line 2432
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lbth;->c:Lbso;

    .line 2433
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2434
    iget-object v1, p0, Lbth;->a:Landroid/content/Context;

    iget-object v2, p0, Lbth;->c:Lbso;

    iget-object v2, v2, Lbso;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2435
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 427
    check-cast p1, Ljava/lang/String;

    .line 1440
    iget-object v0, p0, Lbth;->c:Lbso;

    iget-object v1, p0, Lbth;->b:Lbtg;

    iget-object v1, v1, Lbtg;->p:Lbso;

    if-ne v0, v1, :cond_0

    .line 1441
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1442
    iget-object v2, p0, Lbth;->b:Lbtg;

    iget-object v2, v2, Lbtg;->w:Landroid/widget/TextView;

    invoke-static {v0, v1, v4}, Laal;->a(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    iget-object v2, p0, Lbth;->b:Lbtg;

    iget-object v2, v2, Lbtg;->w:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Laal;->a(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1444
    iget-object v0, p0, Lbth;->b:Lbtg;

    iget-object v0, v0, Lbtg;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Lbth;->b:Lbtg;

    iget-object v1, v0, Lbtg;->q:Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;

    iget-object v0, p0, Lbth;->b:Lbtg;

    iget-object v0, v0, Lbtg;->q:Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lbth;->b:Lbtg;

    iget-object v2, v2, Lbtg;->p:Lbso;

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a(Landroid/view/View;Lbso;Z)V

    .line 427
    :cond_0
    return-void
.end method
