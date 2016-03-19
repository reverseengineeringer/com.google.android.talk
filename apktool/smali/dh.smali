.class final Ldh;
.super Ldc;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Ldc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcy;)Landroid/app/Notification;
    .locals 14

    .prologue
    .line 580
    new-instance v0, Ldq;

    iget-object v1, p1, Lcy;->a:Landroid/content/Context;

    iget-object v2, p1, Lcy;->B:Landroid/app/Notification;

    iget-object v3, p1, Lcy;->b:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcy;->c:Ljava/lang/CharSequence;

    iget-object v5, p1, Lcy;->h:Ljava/lang/CharSequence;

    iget-object v6, p1, Lcy;->f:Landroid/widget/RemoteViews;

    iget v7, p1, Lcy;->i:I

    iget-object v8, p1, Lcy;->d:Landroid/app/PendingIntent;

    iget-object v9, p1, Lcy;->e:Landroid/app/PendingIntent;

    iget-object v10, p1, Lcy;->g:Landroid/graphics/Bitmap;

    iget v11, p1, Lcy;->o:I

    iget v12, p1, Lcy;->p:I

    iget-boolean v13, p1, Lcy;->q:Z

    invoke-direct/range {v0 .. v13}, Ldq;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 1471
    invoke-interface {v0}, Lcs;->b()Landroid/app/Notification;

    move-result-object v0

    .line 585
    return-object v0
.end method
