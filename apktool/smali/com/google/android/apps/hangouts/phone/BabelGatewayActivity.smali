.class public Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;
.super Lcbr;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lehm;
.implements Lhpw;


# static fields
.field public static final n:Z


# instance fields
.field private C:Landroid/content/Intent;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:J

.field private J:Z

.field private K:Landroid/net/Uri;

.field private L:Ljava/lang/String;

.field private final M:Leap;

.field public o:Lbfd;

.field public p:[Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lezi;->k:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcbr;-><init>()V

    .line 101
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->A:Lilh;

    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhqo;->a(Lhpw;)Lhpu;

    .line 107
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    .line 108
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    .line 402
    new-instance v0, Lddm;

    invoke-direct {v0, p0}, Lddm;-><init>(Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->M:Leap;

    return-void
.end method

.method public static a(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 287
    const-class v2, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    const-string v1, "com.google.android.apps.babel.realtimechat.update-watermark"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;II)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    .line 3036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 332
    const-class v2, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    if-eqz p1, :cond_1

    .line 337
    const-string v1, "participant_gaia"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "participant_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "start_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    :goto_0
    if-eqz p4, :cond_0

    .line 346
    const-string v1, "hangout_call_end_intent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    :cond_0
    const-string v1, "hangout_auto_join"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    const-string v1, "hangout_start_source"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string v1, "media_type"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v1, "extra_hangout_start_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 353
    return-object v0

    .line 3198
    :cond_1
    const-string v1, "Expected non-null"

    invoke-static {v1, p3}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "hangout_uri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 155
    const-class v2, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v1, "participant_gaia"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "participant_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "start_video"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "force_group"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v1, "invite_token_url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;JZZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "watermark"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    const-string v1, "otr_state"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string v1, "requires_mms"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :goto_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    return-object v0

    .line 274
    :cond_0
    const-string v1, "participant_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :goto_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "watermark"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 200
    const-string v1, "requires_mms"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    return-object v0

    .line 195
    :cond_0
    const-string v1, "participant_gaia"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "participant_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 623
    invoke-virtual {p0, p2}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->setResult(I)V

    .line 624
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->finish()V

    .line 625
    return-void
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;II)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 378
    invoke-static/range {p0 .. p6}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;II)Landroid/content/Intent;

    move-result-object v0

    .line 386
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "hangout_auto_join"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    return-object v0
.end method


# virtual methods
.method public a(Lbez;)V
    .locals 1

    .prologue
    .line 845
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->cc:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->d(I)V

    .line 846
    return-void
.end method

.method public a(Lbgd;)V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p1, Lbgd;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    .line 837
    iget v0, p1, Lbgd;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->e(I)V

    .line 838
    return-void
.end method

.method public a(ZLhpv;Lhpv;II)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 634
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_d

    .line 636
    invoke-static {p5}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 3522
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 4198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3524
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "opened_from_impression"

    .line 3525
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3526
    if-eqz v1, :cond_0

    .line 3527
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->A:Lilh;

    const-class v2, Lhba;

    .line 3528
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 3529
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 3530
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 3531
    invoke-interface {v0}, Lhax;->d()V

    .line 3534
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->E:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->F:Z

    if-nez v0, :cond_1

    .line 3537
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->A:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 3538
    const-string v1, "active-hangouts-account"

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lhpz;->a(Ljava/lang/String;I)V

    .line 3541
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->K:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 3542
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->K:Landroid/net/Uri;

    .line 4554
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_call_end_intent"

    .line 4555
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/PendingIntent;

    .line 4556
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 4557
    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcgs;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;)Lcgs;

    move-result-object v0

    .line 4558
    if-nez v0, :cond_4

    .line 4559
    const-string v0, "Babel_GatewayActivity"

    const-string v2, "invalid hangout request"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4560
    if-eqz v1, :cond_2

    .line 4562
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4567
    :cond_2
    :goto_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->cV:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->d(I)V

    .line 6516
    :cond_3
    :goto_1
    return-void

    .line 4563
    :catch_0
    move-exception v0

    .line 4564
    const-string v1, "Babel_GatewayActivity"

    const-string v2, "callCompletionIntent failed"

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4569
    :cond_4
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->t:Z

    iget v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->u:I

    .line 4575
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->v:I

    iget-boolean v7, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->w:Z

    iget-boolean v8, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->y:Z

    .line 4570
    invoke-static/range {v0 .. v8}, Laal;->a(Lcgs;Ljava/util/ArrayList;ZIJIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 4579
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 4580
    invoke-virtual {p0, v9}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->setResult(I)V

    .line 4581
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->finish()V

    goto :goto_1

    .line 3543
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 4593
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 5198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4595
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4596
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    invoke-static {v0}, Lehi;->a(Lbfd;)Lehi;

    move-result-object v0

    new-instance v1, Lbez;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lbez;-><init>(Ljava/lang/String;Lehm;)V

    .line 4597
    invoke-virtual {v0, v1}, Lehi;->a(Lehx;)Z

    goto :goto_1

    .line 4598
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 4599
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 4600
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->j()V

    goto :goto_1

    .line 4605
    :cond_8
    const-string v0, "Babel_GatewayActivity"

    const-string v1, "BabelGatewayActivity.createConversation: incoming intent has no participant name"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4609
    new-instance v0, Lddn;

    invoke-direct {v0, p0}, Lddn;-><init>(Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;)V

    invoke-virtual {v0}, Lddn;->g()V

    goto :goto_1

    .line 4611
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 4612
    invoke-static {v0}, Lbzq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4613
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lbzq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5758
    invoke-static {}, Lihb;->newBuilder()Laxm;

    move-result-object v1

    .line 5760
    invoke-static {}, Laxt;->newBuilder()Laxu;

    move-result-object v2

    .line 5761
    invoke-virtual {v2, v0}, Laxu;->a(Ljava/lang/String;)Laxu;

    move-result-object v2

    .line 5762
    invoke-static {v0}, Ldtw;->a(Ljava/lang/String;)Ldtw;

    move-result-object v0

    invoke-virtual {v2, v0}, Laxu;->a(Ldtw;)Laxu;

    move-result-object v0

    .line 5763
    invoke-virtual {v0}, Laxu;->a()Laxt;

    move-result-object v0

    invoke-virtual {v1, v0}, Laxm;->a(Laxt;)Laxm;

    .line 5765
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->M:Leap;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 5766
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->G:Z

    if-eqz v0, :cond_a

    .line 5768
    sget-object v0, Lbfw;->b:Lbfw;

    .line 5770
    :goto_2
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v2

    .line 5771
    invoke-virtual {v2}, Lebi;->a()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->z:I

    .line 5772
    new-instance v3, Ldwb;

    .line 5774
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ldwb;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 5775
    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ldwb;->a(I)Ldwb;

    move-result-object v3

    .line 5776
    invoke-virtual {v1}, Laxm;->a()Lihb;

    move-result-object v1

    invoke-virtual {v3, v1}, Ldwb;->a(Lihb;)Ldwb;

    move-result-object v1

    .line 5777
    invoke-virtual {v1, v0}, Ldwb;->a(Lbfw;)Ldwb;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->s:Z

    .line 5778
    invoke-virtual {v0, v1}, Ldwb;->a(Z)Ldwb;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->G:Z

    .line 5779
    invoke-virtual {v0, v1}, Ldwb;->b(Z)Ldwb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->L:Ljava/lang/String;

    .line 5780
    invoke-virtual {v0, v1}, Ldwb;->a(Ljava/lang/String;)Ldwb;

    move-result-object v0

    .line 5781
    invoke-virtual {v0}, Ldwb;->a()Landroid/content/Intent;

    move-result-object v0

    .line 5772
    invoke-static {v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5769
    :cond_a
    sget-object v0, Lbfw;->c:Lbfw;

    goto :goto_2

    .line 4615
    :cond_b
    const-string v0, "BabelGatewayActivity.createConversation: Participant id is null and conversation id is null"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3548
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    invoke-static {v0}, Laal;->d(Lbfd;)Landroid/content/Intent;

    move-result-object v0

    .line 3549
    invoke-direct {p0, v0, v9}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 6508
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->K:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 6509
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_call_end_intent"

    .line 6510
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 6511
    if-eqz v0, :cond_3

    .line 6513
    :try_start_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 6514
    :catch_1
    move-exception v0

    .line 6515
    const-string v1, "Babel"

    const-string v2, "Call complete intent could not be sent"

    invoke-static {v1, v2, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 826
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 827
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    invoke-static {v0}, Laal;->d(Lbfd;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Intent;I)V

    .line 828
    return-void
.end method

.method public e(I)V
    .locals 14

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->E:Z

    if-eqz v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 7134
    :goto_0
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 856
    iget-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->I:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->I:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lbfd;Ljava/lang/String;J)I

    .line 860
    :cond_0
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->n:Z

    if-eqz v0, :cond_1

    .line 861
    const-string v0, "Auto-sending message to conversation "

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 863
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->A:Lilh;

    const-class v1, Lefk;

    .line 864
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefk;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->D:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->J:Z

    const/4 v12, 0x0

    iget v13, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->H:I

    .line 865
    invoke-interface/range {v0 .. v13}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    .line 879
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->setResult(I)V

    .line 880
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->finish()V

    .line 898
    :goto_2
    return-void

    .line 854
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 861
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 881
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->F:Z

    if-eqz v0, :cond_5

    .line 882
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->I:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lbfd;Ljava/lang/String;J)I

    .line 884
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->setResult(I)V

    .line 885
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->finish()V

    goto :goto_2

    .line 887
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 889
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    .line 888
    invoke-static {v0, v1, p1}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 890
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 891
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 892
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string v2, "conversation_id"

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const-string v2, "share_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 896
    :cond_6
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public j()V
    .locals 5

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 724
    const-string v0, "BabelGatewayActivity.createConversationWithParticipants: different number of participant gaia ids and names"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-static {}, Lihb;->newBuilder()Laxm;

    move-result-object v1

    .line 731
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 733
    invoke-static {}, Laxt;->newBuilder()Laxu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 734
    invoke-virtual {v2, v3}, Laxu;->a(Ljava/lang/String;)Laxu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 735
    invoke-static {v3, v4}, Ldtw;->a(Ljava/lang/String;Ljava/lang/String;)Ldtw;

    move-result-object v3

    invoke-virtual {v2, v3}, Laxu;->a(Ldtw;)Laxu;

    move-result-object v2

    .line 736
    invoke-virtual {v2}, Laxu;->a()Laxt;

    move-result-object v2

    invoke-virtual {v1, v2}, Laxm;->a(Laxt;)Laxm;

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->M:Leap;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 743
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lebi;->a()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->z:I

    .line 745
    new-instance v2, Ldwb;

    .line 747
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ldwb;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->o:Lbfd;

    .line 748
    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ldwb;->a(I)Ldwb;

    move-result-object v2

    .line 749
    invoke-virtual {v1}, Laxm;->a()Lihb;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldwb;->a(Lihb;)Ldwb;

    move-result-object v1

    sget-object v2, Lbfw;->c:Lbfw;

    .line 750
    invoke-virtual {v1, v2}, Ldwb;->a(Lbfw;)Ldwb;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->s:Z

    .line 751
    invoke-virtual {v1, v2}, Ldwb;->a(Z)Ldwb;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->G:Z

    .line 752
    invoke-virtual {v1, v2}, Ldwb;->b(Z)Ldwb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->L:Ljava/lang/String;

    .line 753
    invoke-virtual {v1, v2}, Ldwb;->a(Ljava/lang/String;)Ldwb;

    move-result-object v1

    .line 754
    invoke-virtual {v1}, Ldwb;->a()Landroid/content/Intent;

    move-result-object v1

    .line 745
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->setResult(I)V

    .line 822
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->finish()V

    .line 823
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->setResult(I)V

    .line 816
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->finish()V

    .line 817
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    .line 456
    sget-boolean v0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->n:Z

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "intent.getType() = "

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "participant_gaia"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->p:[Ljava/lang/String;

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "participant_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->q:[Ljava/lang/String;

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->r:Ljava/lang/String;

    .line 469
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    .line 3392
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3393
    if-nez v0, :cond_3

    .line 3394
    const-string v0, "android.intent.extra.TEXT"

    invoke-static {v1, v0}, Laal;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_3
    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->D:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->E:Z

    .line 471
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.babel.realtimechat.update-watermark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->F:Z

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "otr_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "otr_state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->H:I

    .line 484
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "watermark"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->I:J

    .line 485
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "requires_mms"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->J:Z

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "start_video"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->s:Z

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "force_group"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->G:Z

    .line 488
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->K:Landroid/net/Uri;

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_auto_join"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->t:Z

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_start_source"

    const/16 v2, 0x33

    .line 491
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->u:I

    .line 492
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_video_source"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->v:I

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_mute_microphone"

    .line 494
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->w:Z

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "media_type"

    .line 496
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->x:I

    .line 497
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "hangout_mute_playback"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->y:Z

    .line 498
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->C:Landroid/content/Intent;

    const-string v1, "invite_token_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->L:Ljava/lang/String;

    .line 501
    invoke-super {p0, p1}, Lcbr;->onCreate(Landroid/os/Bundle;)V

    .line 502
    return-void

    .line 457
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->H:I

    goto/16 :goto_1

    .line 481
    :cond_6
    iput v4, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->H:I

    goto/16 :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 795
    if-nez p2, :cond_0

    move-object v2, v0

    .line 796
    :goto_0
    if-nez p2, :cond_1

    move-object v1, v0

    .line 798
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 810
    :goto_2
    return-object v0

    .line 795
    :cond_0
    const-string v1, "error_title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 796
    :cond_1
    const-string v1, "error_message"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 801
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 802
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 803
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 804
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->M:Leap;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 787
    invoke-super {p0}, Lcbr;->onDestroy()V

    .line 788
    return-void
.end method
