.class public final Lbre;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lblb;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/content/Context;

.field final c:I

.field final d:Landroid/content/ContentResolver;

.field final synthetic e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    iput-object p2, p0, Lbre;->b:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lbre;->a:Landroid/net/Uri;

    .line 78
    iput p3, p0, Lbre;->c:I

    .line 79
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lbre;->d:Landroid/content/ContentResolver;

    .line 80
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 10084
    sget-object v2, Lbkr;->a:Lbkr;

    .line 10088
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 10092
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->n:Ljava/lang/Boolean;

    .line 11015
    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 10093
    if-eqz v0, :cond_2

    .line 10094
    sget-object v0, Lbkr;->c:Lbkr;

    :goto_0
    move-object v2, v0

    .line 10097
    :cond_0
    iget-object v0, p0, Lbre;->b:Landroid/content/Context;

    iget v1, p0, Lbre;->c:I

    iget-object v3, p0, Lbre;->a:Landroid/net/Uri;

    iget-object v4, p0, Lbre;->a:Landroid/net/Uri;

    .line 10099
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 10098
    invoke-static/range {v0 .. v5}, Lbmo;->a(Landroid/content/Context;ILbkr;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lblb;

    move-result-object v0

    .line 10104
    if-nez v0, :cond_1

    .line 10105
    invoke-virtual {p0, v6}, Lbre;->cancel(Z)Z

    .line 69
    :cond_1
    return-object v0

    .line 10095
    :cond_2
    sget-object v0, Lbkr;->b:Lbkr;

    goto :goto_0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1113
    const-string v0, "Babel_PreviewImage"

    iget-object v1, p0, Lbre;->a:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cancelled preview. Unable to create attachment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    sget v1, Laal;->kq:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1116
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    iget-object v1, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 1117
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->finish()V

    .line 69
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 69
    check-cast p1, Lblb;

    .line 1122
    iget-object v0, p1, Lblb;->c:Lbkr;

    sget-object v1, Lbkr;->c:Lbkr;

    if-ne v0, v1, :cond_0

    .line 1123
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 2055
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->l:Landroid/widget/VideoView;

    .line 1123
    invoke-virtual {v0, v7}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 3055
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->l:Landroid/widget/VideoView;

    .line 1124
    iget-object v1, p0, Lbre;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1125
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 4055
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->l:Landroid/widget/VideoView;

    .line 1125
    new-instance v1, Lbrf;

    invoke-direct {v1, p0}, Lbrf;-><init>(Lbre;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1147
    :goto_0
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 9055
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->j:Landroid/view/View;

    .line 1147
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 10055
    iput-object p1, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->m:Lblb;

    .line 69
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 5055
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->k:Landroid/widget/ImageView;

    .line 1134
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 6055
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->A:Lilh;

    .line 1135
    const-class v1, Lceh;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    .line 1136
    iget-object v1, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 7055
    iget-object v1, v1, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->A:Lilh;

    .line 1136
    const-class v2, Lcei;

    invoke-virtual {v1, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcei;

    .line 1137
    const/4 v2, 0x0

    .line 1138
    iget-object v3, p0, Lbre;->a:Landroid/net/Uri;

    invoke-static {v3}, Lbmo;->a(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1139
    new-instance v2, Lave;

    iget-object v3, p1, Lblb;->d:Ljava/lang/String;

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p1, Lblb;->g:I

    invoke-direct {v2, v3, v4, v5, v6}, Lave;-><init>(Ljava/lang/String;JI)V

    .line 1144
    :cond_1
    iget-object v3, p0, Lbre;->a:Landroid/net/Uri;

    iget-object v4, p0, Lbre;->e:Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;

    .line 8055
    iget-object v4, v4, Lcom/google/android/apps/hangouts/conversation/v2/PreviewImageActivity;->k:Landroid/widget/ImageView;

    .line 1145
    invoke-interface {v1}, Lcei;->a()Lauk;

    move-result-object v1

    .line 1144
    invoke-interface {v0, v3, v4, v2, v1}, Lceh;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lave;Lauk;)V

    goto :goto_0
.end method
