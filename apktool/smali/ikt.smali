.class public Likt;
.super Lime;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private aj:Liku;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lime;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)Likt;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 138
    new-instance v0, Likt;

    invoke-direct {v0}, Likt;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, v5

    move v7, p4

    .line 139
    invoke-virtual/range {v0 .. v7}, Likt;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;III)Likt;

    move-result-object v0

    return-object v0
.end method

.method private r()Liku;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Likt;->aj:Liku;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Likt;->aj:Liku;

    .line 432
    :goto_0
    return-object v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Likt;->getTargetFragment()Lav;

    move-result-object v0

    instance-of v0, v0, Liku;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p0}, Likt;->getTargetFragment()Lav;

    move-result-object v0

    check-cast v0, Liku;

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p0}, Likt;->getActivity()Lba;

    move-result-object v0

    instance-of v0, v0, Liku;

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {p0}, Likt;->getActivity()Lba;

    move-result-object v0

    check-cast v0, Liku;

    goto :goto_0

    .line 432
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 303
    invoke-virtual {p0}, Likt;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 305
    invoke-virtual {p0}, Likt;->q()Landroid/content/Context;

    move-result-object v2

    .line 308
    const-string v1, "theme"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 309
    new-instance v1, Lre;

    const-string v3, "theme"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lre;-><init>(Landroid/content/Context;I)V

    move-object v4, v1

    .line 314
    :goto_0
    const-string v1, "title"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "title"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lre;->a(Ljava/lang/CharSequence;)Lre;

    .line 318
    :cond_0
    const-string v1, "message"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    const-string v1, "message"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 324
    :try_start_0
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laal;->uW:I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 326
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->uf:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 328
    if-eqz v1, :cond_1

    .line 329
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 330
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1098
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v1, v2}, Laal;->a(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 335
    :cond_1
    :goto_1
    invoke-virtual {v4, v6}, Lre;->b(Landroid/view/View;)Lre;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    :goto_2
    const-string v1, "positive"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    const-string v1, "positive"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p0}, Lre;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lre;

    .line 346
    :cond_3
    const-string v1, "negative"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    const-string v1, "negative"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p0}, Lre;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lre;

    .line 350
    :cond_4
    const-string v1, "icon_attribute"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_a

    .line 351
    const-string v1, "icon_attribute"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lre;->b(I)Lre;

    .line 356
    :cond_5
    :goto_3
    const-string v1, "list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 357
    const-string v1, "list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p0}, Lre;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lre;

    .line 360
    :cond_6
    const-string v1, "multi_choice_list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 361
    const-string v1, "multi_choice_list"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 363
    const-string v1, "multi_choice_list_states"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 364
    const-string v1, "multi_choice_list_states"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 368
    :goto_4
    invoke-virtual {v4, v2, v1, p0}, Lre;->a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lre;

    .line 371
    :cond_7
    invoke-virtual {v4}, Lre;->b()Lrd;

    move-result-object v1

    return-object v1

    .line 311
    :cond_8
    new-instance v1, Lre;

    invoke-direct {v1, v2}, Lre;-><init>(Landroid/content/Context;)V

    move-object v4, v1

    goto/16 :goto_0

    .line 331
    :cond_9
    :try_start_1
    instance-of v2, v3, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 332
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    invoke-static {v1, v2}, Laal;->a(Landroid/widget/TextView;Landroid/text/Spannable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 336
    :catch_0
    move-exception v1

    .line 337
    const-string v2, "AlertFragmentDialog"

    const-string v6, "Cannot inflated view"

    invoke-static {v2, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    invoke-virtual {v4, v3}, Lre;->b(Ljava/lang/CharSequence;)Lre;

    goto/16 :goto_2

    .line 352
    :cond_a
    const-string v1, "icon"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    const-string v1, "icon"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lre;->a(I)Lre;

    goto :goto_3

    .line 366
    :cond_b
    array-length v1, v2

    new-array v1, v1, [Z

    goto :goto_4
.end method

.method protected a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;III)Likt;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    if-eqz p1, :cond_0

    .line 189
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    if-eqz p2, :cond_1

    .line 193
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 196
    :cond_1
    if-eqz p3, :cond_2

    .line 197
    const-string v1, "positive"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_2
    if-eqz p4, :cond_3

    .line 201
    const-string v1, "negative"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_3
    if-eqz p7, :cond_4

    .line 213
    const-string v1, "theme"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    :cond_4
    invoke-virtual {p0, v0}, Likt;->setArguments(Landroid/os/Bundle;)V

    .line 217
    return-object p0
.end method

.method public a(Liku;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Likt;->aj:Liku;

    .line 291
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Likt;->r()Liku;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Likt;->getArguments()Landroid/os/Bundle;

    invoke-virtual {p0}, Likt;->getTag()Ljava/lang/String;

    invoke-interface {v0}, Liku;->q()V

    .line 417
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 376
    invoke-direct {p0}, Likt;->r()Liku;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    .line 378
    packed-switch p2, :pswitch_data_0

    .line 390
    invoke-virtual {p0}, Likt;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 391
    const-string v2, "list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    .line 392
    invoke-virtual {p0}, Likt;->getTag()Ljava/lang/String;

    invoke-interface {v0}, Liku;->r()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    invoke-virtual {p0}, Likt;->getArguments()Landroid/os/Bundle;

    invoke-virtual {p0}, Likt;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Liku;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :pswitch_1
    invoke-virtual {p0}, Likt;->getArguments()Landroid/os/Bundle;

    invoke-virtual {p0}, Likt;->getTag()Ljava/lang/String;

    invoke-interface {v0}, Liku;->f()V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3

    .prologue
    .line 402
    invoke-direct {p0}, Likt;->r()Liku;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Likt;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 405
    const-string v2, "multi_choice_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    .line 406
    invoke-virtual {p0}, Likt;->getTag()Ljava/lang/String;

    invoke-interface {v0}, Liku;->s()V

    .line 409
    :cond_0
    return-void
.end method

.method public q()Landroid/content/Context;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Likt;->getActivity()Lba;

    move-result-object v0

    return-object v0
.end method
