.class Ldd;
.super Ldj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Ldj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcy;)Landroid/app/Notification;
    .locals 25

    .prologue
    .line 707
    new-instance v1, Ldm;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcy;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcy;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcy;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcy;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcy;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcy;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lcy;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcy;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcy;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcy;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lcy;->o:I

    move-object/from16 v0, p1

    iget v13, v0, Lcy;->p:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcy;->q:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcy;->k:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcy;->l:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcy;->j:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcy;->n:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcy;->v:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcy;->C:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcy;->x:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcy;->r:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcy;->s:Z

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcy;->t:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v1 .. v24}, Ldm;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 713
    move-object/from16 v0, p1

    iget-object v2, v0, Lcy;->u:Ljava/util/ArrayList;

    .line 1042
    invoke-static {v1, v2}, Lct;->a(Lcr;Ljava/util/ArrayList;)V

    .line 714
    move-object/from16 v0, p1

    iget-object v2, v0, Lcy;->m:Ldk;

    .line 2042
    invoke-static {v1, v2}, Lct;->a(Lcs;Ldk;)V

    .line 2471
    invoke-interface {v1}, Lcs;->b()Landroid/app/Notification;

    move-result-object v1

    .line 715
    return-object v1
.end method

.method public a([Lcu;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcu;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3174
    if-nez p1, :cond_1

    .line 3175
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 3177
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3178
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 3179
    invoke-static {v3}, Laal;->a(Ldo;)Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
