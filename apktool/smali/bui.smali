.class final Lbui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lbuh;


# direct methods
.method constructor <init>(Lbuh;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lbui;->a:Lbuh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const-wide/16 v4, 0x0

    .line 313
    iget-object v3, p0, Lbui;->a:Lbuh;

    .line 1330
    const-string v0, "Babel_Stickers"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "sticker pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    iget-object v0, v3, Lbuh;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lbum;

    invoke-virtual {v0, p3}, Lbum;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbul;

    .line 1332
    iget-object v1, v0, Lbul;->a:Ljava/lang/String;

    const-string v2, "Recent"

    iget-object v6, v3, Lbuh;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Lbuh;->a(Ljava/lang/String;Z)V

    .line 1333
    iget-object v1, v0, Lbul;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1334
    const-string v2, "file://"

    iget-object v1, v0, Lbul;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1335
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1336
    const-string v6, "album_id"

    iget-object v7, v3, Lbuh;->d:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const-string v6, "photo_url"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    const-string v6, "picasa_photo_id"

    iget-object v7, v0, Lbul;->a:Ljava/lang/String;

    .line 2063
    if-nez v7, :cond_2

    .line 1339
    :goto_1
    invoke-virtual {v1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1340
    iget-object v1, v3, Lbuh;->binder:Lilh;

    const-class v4, Lbmw;

    invoke-virtual {v1, v4}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbmw;

    .line 1341
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    new-instance v5, Lblj;

    invoke-direct {v5}, Lblj;-><init>()V

    .line 1343
    sget-object v6, Lbkr;->d:Lbkr;

    iput-object v6, v5, Lblj;->c:Lbkr;

    .line 1344
    iget-object v6, v3, Lbuh;->d:Ljava/lang/String;

    iput-object v6, v5, Lblj;->f:Ljava/lang/String;

    .line 1345
    iget-object v0, v0, Lbul;->a:Ljava/lang/String;

    iput-object v0, v5, Lblj;->e:Ljava/lang/String;

    .line 1346
    iput-object v2, v5, Lblj;->b:Ljava/lang/String;

    .line 1347
    iput-object v2, v5, Lblj;->a:Ljava/lang/String;

    .line 1348
    iget-object v0, v3, Lbuh;->context:Lill;

    .line 1349
    invoke-virtual {v0}, Lill;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Leye;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lblj;->d:Ljava/lang/String;

    .line 1350
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    invoke-interface {v1, v4}, Lbmw;->a(Ljava/util/List;)V

    .line 1354
    iget-object v0, v3, Lbuh;->binder:Lilh;

    const-class v1, Lbub;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 314
    return-void

    .line 1334
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lbul;->b:Ljava/lang/String;

    move-object v2, v1

    goto :goto_0

    .line 2063
    :cond_2
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 3051
    invoke-static {v7, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    goto :goto_1
.end method
