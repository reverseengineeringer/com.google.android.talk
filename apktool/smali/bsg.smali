.class final Lbsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field final synthetic a:Lbse;


# direct methods
.method constructor <init>(Lbse;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lbsg;->a:Lbse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 75
    const-string v0, "result_media_attachment"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lblb;

    .line 77
    iget-object v1, p0, Lbsg;->a:Lbse;

    .line 1049
    iget-object v1, v1, Lbse;->context:Lill;

    .line 77
    const-class v2, Lbmw;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbmw;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v1, v2}, Lbmw;->a(Ljava/util/List;)V

    .line 81
    const-string v1, "photo_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lbmo;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lbsg;->a:Lbse;

    .line 2049
    iget-object v2, v2, Lbse;->context:Lill;

    .line 85
    invoke-virtual {v2}, Lill;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 88
    iget-object v5, p0, Lbsg;->a:Lbse;

    .line 3049
    iget-object v5, v5, Lbse;->context:Lill;

    .line 88
    const-string v6, "babel_save_camera_images_to_hangouts"

    invoke-static {v5, v6, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    iget-object v5, v0, Lblb;->c:Lbkr;

    invoke-static {v2, v1, v5}, Lbmo;->a(Landroid/content/ContentResolver;Ljava/lang/String;Lbkr;)Landroid/net/Uri;

    .line 94
    :cond_0
    iget-object v1, v0, Lblb;->c:Lbkr;

    sget-object v2, Lbkr;->c:Lbkr;

    if-ne v1, v2, :cond_1

    move v2, v3

    .line 96
    :goto_0
    iget-object v1, p0, Lbsg;->a:Lbse;

    .line 4049
    iget-object v1, v1, Lbse;->binder:Lilh;

    .line 96
    const-class v5, Lbvc;

    invoke-virtual {v1, v5}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbvc;

    const/16 v6, 0x923

    if-eqz v2, :cond_2

    move v5, v4

    .line 98
    :goto_1
    if-eqz v2, :cond_3

    .line 99
    :goto_2
    iget v0, v0, Lblb;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 96
    invoke-virtual {v1, v6, v5, v3, v0}, Lbvc;->a(IIILjava/lang/Integer;)V

    .line 103
    :goto_3
    return-void

    :cond_1
    move v2, v4

    .line 94
    goto :goto_0

    :cond_2
    move v5, v3

    .line 98
    goto :goto_1

    :cond_3
    move v3, v4

    .line 99
    goto :goto_2

    .line 101
    :cond_4
    iget-object v0, p0, Lbsg;->a:Lbse;

    .line 5107
    iget-object v0, v0, Lbse;->binder:Lilh;

    const-class v1, Lbvc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v1, 0x924

    invoke-virtual {v0, v1}, Lbvc;->a(I)V

    goto :goto_3
.end method
