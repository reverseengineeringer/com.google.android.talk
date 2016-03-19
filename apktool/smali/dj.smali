.class Ldj;
.super Ldi;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Ldi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcy;)Landroid/app/Notification;
    .locals 25

    .prologue
    .line 656
    new-instance v1, Ldt;

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

    invoke-direct/range {v1 .. v24}, Ldt;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 662
    move-object/from16 v0, p1

    iget-object v2, v0, Lcy;->u:Ljava/util/ArrayList;

    .line 1042
    invoke-static {v1, v2}, Lct;->a(Lcr;Ljava/util/ArrayList;)V

    .line 663
    move-object/from16 v0, p1

    iget-object v2, v0, Lcy;->m:Ldk;

    .line 2042
    invoke-static {v1, v2}, Lct;->a(Lcs;Ldk;)V

    .line 2471
    invoke-interface {v1}, Lcs;->b()Landroid/app/Notification;

    move-result-object v1

    .line 664
    return-object v1
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3120
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 669
    return-object v0
.end method
