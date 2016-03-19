.class public final Lcce;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/InvitationFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbfd;Ldrj;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 222
    iget-object v0, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 1071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->d:Lczb;

    .line 222
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 2071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->d:Lczb;

    .line 222
    iget-object v0, v0, Lczb;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ldrj;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p2}, Ldrj;->m()Ljava/util/ArrayList;

    move-result-object v4

    .line 228
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 3071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->i:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 229
    iget-object v0, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v2, v3

    .line 230
    :goto_1
    if-ge v2, v5, :cond_3

    .line 232
    const/4 v1, 0x0

    .line 233
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrk;

    .line 234
    iget v7, v0, Ldrk;->c:I

    packed-switch v7, :pswitch_data_0

    .line 249
    :goto_2
    iget-object v0, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 4071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->i:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 236
    :pswitch_0
    iget-object v0, v0, Ldrk;->a:Ljava/lang/String;

    move-object v1, v0

    .line 237
    goto :goto_2

    .line 239
    :pswitch_1
    iget-object v1, v0, Ldrk;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->rF:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Ldrk;->b:Ljava/lang/String;

    aput-object v8, v7, v3

    iget-object v0, v0, Ldrk;->a:Ljava/lang/String;

    aput-object v0, v7, v9

    invoke-virtual {v6, v1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 242
    :cond_2
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->tj:I

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v0, v0, Ldrk;->a:Ljava/lang/String;

    aput-object v0, v7, v3

    invoke-virtual {v6, v1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 244
    goto :goto_2

    .line 246
    :pswitch_2
    iget-object v0, v0, Ldrk;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_2

    .line 255
    :cond_3
    invoke-virtual {p2}, Ldrj;->k()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lccf;

    invoke-direct {v0, p0}, Lccf;-><init>(Lcce;)V

    .line 275
    new-instance v1, Lbhs;

    new-instance v2, Leyd;

    .line 276
    invoke-virtual {p2}, Ldrj;->k()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 5071
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->h:Landroid/widget/ImageView;

    .line 277
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 278
    invoke-virtual {v4}, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x43000000    # 128.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 277
    invoke-virtual {v2, v3, v4}, Leyd;->a(II)Leyd;

    move-result-object v2

    .line 279
    invoke-virtual {v2, v9}, Leyd;->a(Z)Leyd;

    move-result-object v2

    invoke-virtual {v2, v9}, Leyd;->d(Z)Leyd;

    move-result-object v2

    iget-object v3, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 6071
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->d:Lczb;

    .line 280
    invoke-direct {v1, v2, v0, v9, v3}, Lbhs;-><init>(Leyd;Lbhv;ZLjava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 7071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->binder:Lilh;

    .line 282
    const-class v2, Leit;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    invoke-virtual {v0, v1}, Leit;->a(Lehx;)Z

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
