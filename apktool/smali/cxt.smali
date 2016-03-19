.class public Lcxt;
.super Lcyb;
.source "SourceFile"


# static fields
.field static final b:Z

.field static m:Lcxx;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Intent;

.field public h:Ljava/lang/String;

.field public i:I

.field public final j:Lbfz;

.field final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcxt;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lcwx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcxt;->b:Z

    .line 232
    new-instance v0, Lcxx;

    invoke-direct {v0}, Lcxx;-><init>()V

    sput-object v0, Lcxt;->m:Lcxx;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcwx;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-virtual {p3}, Lcwx;->a()Lexn;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcyb;-><init>(Landroid/content/Context;ILexn;)V

    .line 79
    iput-object v1, p0, Lcxt;->c:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcxt;->d:Ljava/lang/CharSequence;

    .line 81
    iput-object v1, p0, Lcxt;->e:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcxt;->f:Ljava/lang/CharSequence;

    .line 83
    iput-object v1, p0, Lcxt;->g:Landroid/content/Intent;

    .line 84
    iput-object v1, p0, Lcxt;->h:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcxt;->i:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcxt;->k:Ljava/util/List;

    .line 335
    iput-object p3, p0, Lcxt;->l:Lcwx;

    .line 336
    new-instance v0, Lbfz;

    invoke-direct {v0, p1, p2}, Lbfz;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcxt;->j:Lbfz;

    .line 337
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 101
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 102
    check-cast v0, Landroid/text/Spannable;

    .line 1110
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 1111
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    .line 1112
    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcxz;->b(Landroid/content/Context;I)V

    .line 289
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcyk;->a(Landroid/content/Context;ILexn;)V

    .line 290
    return-void
.end method

.method static a(Landroid/content/Context;ILcwx;ZZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 242
    const/4 v0, 0x0

    .line 243
    iget-object v1, p2, Lcwx;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 244
    iget-object v0, p2, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 245
    iget-object v0, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcya;

    .line 247
    instance-of v0, v0, Lcxo;

    if-eqz v0, :cond_2

    .line 248
    new-instance v4, Lcwy;

    invoke-direct {v4, p0, p1, p2}, Lcwy;-><init>(Landroid/content/Context;ILcwx;)V

    .line 253
    :goto_0
    iget-object v0, p2, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 257
    new-instance v0, Lcxz;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcxz;-><init>(Landroid/content/Context;ILcwx;Lcxt;ZZ)V

    .line 268
    :cond_0
    :goto_1
    sget-boolean v1, Lcxt;->b:Z

    if-eqz v1, :cond_1

    .line 269
    if-eqz v0, :cond_1

    .line 270
    iget-object v1, v0, Lcxt;->e:Ljava/lang/String;

    iget-object v2, v0, Lcxt;->f:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " content: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    if-nez v0, :cond_4

    .line 275
    invoke-static {p0, p1}, Lcxt;->a(Landroid/content/Context;I)V

    .line 281
    :goto_2
    return-void

    .line 250
    :cond_2
    new-instance v0, Lcyk;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcyk;-><init>(Landroid/content/Context;ILcwx;ZZ)V

    move-object v4, v0

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {p0, p1}, Lcxz;->b(Landroid/content/Context;I)V

    move-object v0, v4

    goto :goto_1

    .line 277
    :cond_4
    iget-object v1, v0, Lcxt;->r:Lexn;

    invoke-static {p0, p1, v1}, Lcyk;->a(Landroid/content/Context;ILexn;)V

    .line 279
    invoke-virtual {v0, p3}, Lcxt;->a(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 297
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcxt;->p:Landroid/content/Context;

    sget v2, Laal;->hP:I

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 300
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcxt;->p:Landroid/content/Context;

    sget v3, Laal;->hQ:I

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 303
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v5, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcxt;->p:Landroid/content/Context;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->gQ:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 311
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 312
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 314
    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 315
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 317
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 316
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 319
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 320
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 321
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 323
    :cond_3
    invoke-virtual {p0, p4}, Lcxt;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 325
    :cond_4
    return-object v2
.end method

.method protected a(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 341
    iget-object v0, p0, Lcxt;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyb;

    .line 342
    invoke-virtual {v0, v6}, Lcyb;->a(Z)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcxt;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcxt;->w:Lcy;

    sget v2, Laal;->hz:I

    iget-object v3, p0, Lcxt;->l:Lcwx;

    iget v3, v3, Lcwx;->a:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcxt;->l:Lcwx;

    iget v5, v5, Lcwx;->a:I

    .line 348
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 346
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    .line 349
    iget-object v1, p0, Lcxt;->l:Lcwx;

    iget v1, v1, Lcwx;->a:I

    if-le v1, v6, :cond_1

    .line 350
    iget-object v1, p0, Lcxt;->w:Lcy;

    sget v2, Laal;->hA:I

    iget-object v3, p0, Lcxt;->l:Lcwx;

    iget-object v3, v3, Lcwx;->b:Ljava/util/List;

    .line 351
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcxt;->l:Lcwx;

    iget-object v5, v5, Lcwx;->b:Ljava/util/List;

    .line 352
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 350
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    .line 354
    :cond_1
    invoke-super {p0, p1}, Lcyb;->a(Z)V

    .line 355
    return-void
.end method

.method protected a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-virtual {p0}, Lcxt;->o()Leku;

    move-result-object v4

    .line 403
    sget-object v0, Lcxu;->a:[I

    invoke-virtual {v4}, Leku;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 415
    const-string v0, "chat_notification_vibrate_bool_key"

    move-object v1, v0

    .line 418
    :goto_0
    iget-object v0, p0, Lcxt;->p:Landroid/content/Context;

    const-class v3, Lhpz;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 419
    sget-object v3, Leku;->a:Leku;

    if-ne v4, v3, :cond_0

    .line 421
    const-string v3, "SMS"

    invoke-interface {v0, v3}, Lhpz;->b(Ljava/lang/String;)I

    move-result v3

    .line 423
    :goto_1
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 425
    const-string v0, "Babel"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid account in shouldVibrate; notType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 428
    :goto_2
    return v0

    .line 405
    :pswitch_0
    const-string v0, "sms_notification_vibrate_bool_key"

    move-object v1, v0

    .line 406
    goto :goto_0

    .line 408
    :pswitch_1
    const-string v0, "gv_sms_vibrate_boolean_key"

    move-object v1, v0

    .line 409
    goto :goto_0

    .line 411
    :pswitch_2
    const-string v0, "gv_voicemail_vibrate_boolean_key"

    move-object v1, v0

    .line 412
    goto :goto_0

    .line 422
    :cond_0
    iget v3, p0, Lcxt;->q:I

    goto :goto_1

    .line 428
    :cond_1
    invoke-interface {v0, v3}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_2

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 434
    new-instance v0, Lcxv;

    invoke-direct {v0}, Lcxv;-><init>()V

    iget-object v1, p0, Lcxt;->p:Landroid/content/Context;

    iget v2, p0, Lcxt;->q:I

    iget-object v3, p0, Lcxt;->r:Lexn;

    .line 435
    invoke-virtual {v3}, Lexn;->b()Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-virtual {v0, v1, v2, v3}, Lcxv;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 457
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bV:I

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method protected f()I
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcxt;->p:Landroid/content/Context;

    const-string v1, "babel_notify_chat_priority_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected g()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcxt;->g:Landroid/content/Intent;

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcxt;->u:Lcy;

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/String;)Lcy;

    .line 360
    invoke-super {p0}, Lcyb;->h()V

    .line 361
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcxt;->p:Landroid/content/Context;

    invoke-static {v0}, Lcww;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget v0, p0, Lcxt;->q:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x78a

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 466
    :cond_0
    return-void
.end method

.method protected l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcxt;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcxt;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    iget-object v0, v0, Lcwz;->k:Ljava/lang/String;

    .line 389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcxt;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcxt;->c:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcxt;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcxt;->d:Ljava/lang/CharSequence;

    .line 92
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcxt;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcxt;->e:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcxt;->f:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcxt;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyb;

    .line 366
    invoke-virtual {v0}, Lcyb;->n()V

    goto :goto_0

    .line 368
    :cond_0
    invoke-super {p0}, Lcyb;->n()V

    .line 369
    return-void
.end method

.method protected o()Leku;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcxt;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcxt;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 379
    invoke-virtual {v0}, Lcwz;->a()Leku;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Leku;->b:Leku;

    goto :goto_0
.end method

.method protected final p()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    iget-object v0, p0, Lcxt;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 476
    iget-object v3, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcxq;

    if-eqz v3, :cond_0

    .line 479
    iget-object v0, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxq;

    iget-wide v4, v0, Lcxq;->j:J

    .line 480
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 483
    iget-object v0, p0, Lcxt;->j:Lbfz;

    invoke-virtual {v0, v2, v3, v1}, Lbfz;->a(JLjava/util/List;)V

    .line 484
    return-void
.end method
