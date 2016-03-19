.class public Lcom/google/android/apps/hangouts/phone/ConversationActivity;
.super Lcbr;
.source "SourceFile"

# interfaces
.implements Lbzy;
.implements Ldvx;
.implements Lecj;


# static fields
.field private static final o:Lezv;


# instance fields
.field public n:Lbzw;

.field private p:Lbfd;

.field private q:Landroid/os/StrictMode$ThreadPolicy;

.field private final r:Lhpu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Conv_Activity"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->o:Lezv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcbr;-><init>()V

    .line 62
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->A:Lilh;

    .line 63
    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->r:Lhpu;

    .line 66
    new-instance v0, Layn;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Layn;-><init>(Landroid/app/Activity;Liog;)V

    .line 67
    new-instance v0, Lcvg;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lcvg;-><init>(Landroid/app/Activity;Liog;)V

    .line 68
    return-void
.end method

.method private static c(Landroid/content/Intent;)Laxj;
    .locals 3

    .prologue
    .line 224
    const-string v0, "conversation_parameters"

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Laxj;

    .line 227
    if-nez v0, :cond_0

    .line 228
    const-string v0, "conversation_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v0, "client_conversation_type"

    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 233
    new-instance v0, Laxj;

    invoke-direct {v0, v1, v2}, Laxj;-><init>(Ljava/lang/String;I)V

    .line 235
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->a(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public a(Lav;)V
    .locals 1

    .prologue
    .line 169
    instance-of v0, p1, Lcav;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lcav;

    new-instance v0, Ldek;

    invoke-direct {v0, p0}, Ldek;-><init>(Lcom/google/android/apps/hangouts/phone/ConversationActivity;)V

    .line 175
    invoke-virtual {p1, v0}, Lcav;->a(Lcbd;)V

    .line 198
    :cond_0
    return-void
.end method

.method public a(Laxj;)V
    .locals 4

    .prologue
    .line 208
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v1, "Babel"

    const-string v2, "Restart fragment for new conv id: "

    iget-object v0, p1, Laxj;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_0
    const-class v0, Lbzz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzz;

    invoke-interface {v0}, Lbzz;->a()Lbzw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    invoke-virtual {v0, p0}, Lbzw;->a(Lbzy;)V

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    const-string v1, "conversation_parameters"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    invoke-virtual {v1, v0}, Lbzw;->setArguments(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->C_()Lbg;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    sget v1, Laen;->bl:I

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    const-class v3, Lbzw;

    .line 219
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Lbz;->b(ILav;Ljava/lang/String;)Lbz;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lbz;->b()I

    .line 221
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lfcr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->p:Lbfd;

    invoke-static {p0, v0, p1, p2, p3}, Laal;->a(Landroid/app/Activity;Lbfd;Lfcr;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->finish()V

    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 256
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->aC:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->g()Lqe;

    move-result-object v0

    invoke-static {p1}, Lezc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqe;->a(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    check-cast v0, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;

    .line 277
    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;->c(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {v0, p2}, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;->e(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public b(Ldvv;)V
    .locals 4

    .prologue
    .line 292
    invoke-virtual {p1}, Ldvv;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    const-string v0, "Babel"

    invoke-virtual {p1}, Ldvv;->b()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :goto_0
    :pswitch_0
    return-void

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->p:Lbfd;

    .line 298
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->p:Lbfd;

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {p0, p1, v0, v1}, Laal;->a(Lba;Ldvv;ILjava/lang/String;)V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b_(Z)V
    .locals 2

    .prologue
    .line 308
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 310
    return-void

    .line 308
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    sget-object v0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->o:Lezv;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-super {p0, p1}, Lcbr;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "babel_conversation_activity_disable_strict_mode"

    .line 78
    invoke-static {p0, v0, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->q:Landroid/os/StrictMode$ThreadPolicy;

    .line 86
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 89
    :cond_1
    sget v0, Laal;->fd:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->setContentView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    check-cast v0, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;

    .line 94
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;->v()Landroid/widget/TextView;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/HangoutsToolbar;->w()Landroid/widget/TextView;

    move-result-object v0

    .line 98
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 99
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 100
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->r:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->p:Lbfd;

    .line 106
    if-nez p1, :cond_4

    .line 109
    const-string v0, "is_direct_share_intent"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string v0, "share_intent"

    invoke-virtual {v2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    :cond_2
    const-string v0, "share_intent"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    const-string v0, "opened_from_impression"

    const/16 v3, 0x965

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->A:Lilh;

    const-string v3, "direct_share_module_available"

    invoke-virtual {v0, v3, v4}, Lilh;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "conversation_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->A:Lilh;

    const-class v6, Lbcm;

    .line 129
    invoke-virtual {v0, v6}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    new-instance v6, Lbwj;

    iget-object v7, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->r:Lhpu;

    .line 132
    invoke-interface {v7}, Lhpu;->a()I

    move-result v7

    invoke-direct {v6, v3, v7, v4, v5}, Lbwj;-><init>(Ljava/lang/String;IJ)V

    .line 130
    invoke-interface {v0, v6}, Lbcm;->a(Lbcn;)Lbcg;

    .line 138
    :cond_3
    invoke-static {v2}, Laal;->b(Landroid/content/Intent;)V

    .line 141
    :cond_4
    invoke-static {v2}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->c(Landroid/content/Intent;)Laxj;

    move-result-object v2

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->C_()Lbg;

    move-result-object v3

    .line 144
    const-class v0, Lbzw;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Lbzw;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    if-nez v0, :cond_5

    .line 147
    sget-object v0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->o:Lezv;

    const-string v4, "instantiate_convfrag_obj"

    invoke-virtual {v0, v4}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    const-class v0, Lbzz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzz;

    invoke-interface {v0}, Lbzz;->a()Lbzw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    .line 149
    sget-object v0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->o:Lezv;

    invoke-virtual {v0, v4}, Lezv;->c(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Lbg;->a()Lbz;

    move-result-object v0

    sget v3, Laen;->bl:I

    iget-object v4, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    const-class v5, Lbzw;

    .line 154
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v0, v3, v4, v5}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lbz;->b()I

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v3, "conversation_parameters"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    invoke-virtual {v2, v0}, Lbzw;->setArguments(Landroid/os/Bundle;)V

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->n:Lbzw;

    invoke-virtual {v0, p0}, Lbzw;->a(Lbzy;)V

    .line 164
    sget-object v0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->o:Lezv;

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcbr;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->q:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->q:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 248
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcbr;->onNewIntent(Landroid/content/Intent;)V

    .line 203
    invoke-static {p1}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->c(Landroid/content/Intent;)Laxj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/ConversationActivity;->a(Laxj;)V

    .line 204
    return-void
.end method
