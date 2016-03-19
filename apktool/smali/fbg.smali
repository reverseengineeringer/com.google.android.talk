.class public abstract Lfbg;
.super Lfan;
.source "SourceFile"

# interfaces
.implements Lbhv;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field public static k:I

.field static m:Z

.field private static final n:Z

.field private static o:Ljava/lang/Boolean;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:J

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:I

.field private T:Ljava/lang/Object;

.field private final U:Lauw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauw",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final V:Lbhv;

.field private final W:Ljava/lang/StringBuilder;

.field private final aa:Ljava/lang/StringBuilder;

.field private final ab:Landroid/text/SpannableStringBuilder;

.field d:Lbhs;

.field e:Leys;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:Lcao;

.field public l:I

.field private p:Lbhs;

.field private q:Leys;

.field private r:Lceh;

.field private s:Lcei;

.field private t:I

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-object v0, Lezi;->u:Limx;

    sput-boolean v1, Lfbg;->n:Z

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lfbg;->o:Ljava/lang/Boolean;

    .line 161
    sput v1, Lfbg;->k:I

    .line 166
    new-instance v0, Lfbh;

    invoke-direct {v0}, Lfbh;-><init>()V

    invoke-static {v0}, Laal;->a(Ldju;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfbg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 207
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfbg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 230
    iput p2, p0, Lfbg;->x:I

    .line 231
    iput p3, p0, Lfbg;->J:I

    .line 232
    iput-boolean p4, p0, Lfbg;->R:Z

    .line 233
    iput-boolean p5, p0, Lfbg;->P:Z

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-direct {p0, p1, p2}, Lfan;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lfbg;->h:I

    .line 156
    iput v1, p0, Lfbg;->S:I

    .line 191
    new-instance v0, Lfbi;

    invoke-direct {v0, p0}, Lfbi;-><init>(Lfbg;)V

    iput-object v0, p0, Lfbg;->U:Lauw;

    .line 737
    new-instance v0, Lfbj;

    invoke-direct {v0, p0}, Lfbj;-><init>(Lfbg;)V

    iput-object v0, p0, Lfbg;->V:Lbhv;

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lfbg;->aa:Ljava/lang/StringBuilder;

    .line 1236
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    .line 211
    iput-boolean v1, p0, Lfbg;->w:Z

    .line 214
    sget v0, Lfbg;->k:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lfbg;->k:I

    iput v0, p0, Lfbg;->l:I

    .line 216
    const-class v0, Lceh;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    iput-object v0, p0, Lfbg;->r:Lceh;

    .line 217
    const-class v0, Lcei;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcei;

    iput-object v0, p0, Lfbg;->s:Lcei;

    .line 218
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 1165
    iget-object v0, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1166
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1168
    invoke-virtual {p0}, Lfbg;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hX:I

    .line 1171
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-static {v1, v2}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lfbg;->b()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1175
    iget-object v2, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1177
    :cond_1
    iget v1, p0, Lfbg;->S:I

    invoke-static {v1}, Laal;->f(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1178
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->iD:I

    .line 1180
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-static {v1, v2}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1182
    :cond_2
    invoke-virtual {p0}, Lfbg;->i()I

    move-result v1

    if-nez v1, :cond_3

    .line 1183
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hW:I

    .line 1185
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1183
    invoke-static {v1, v2}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1188
    :cond_3
    invoke-virtual {p0}, Lfbg;->j()I

    move-result v1

    if-nez v1, :cond_4

    .line 1189
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hU:I

    .line 1191
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1189
    invoke-static {v1, v2}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_4
    invoke-virtual {p0}, Lfbg;->k()I

    move-result v1

    if-nez v1, :cond_5

    .line 1195
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hY:I

    .line 1197
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {v1, v2}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_5
    iget-boolean v1, p0, Lfbg;->w:Z

    if-eqz v1, :cond_6

    .line 1201
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hV:I

    .line 1203
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-static {v1, v0}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1206
    :cond_6
    invoke-virtual {p0}, Lfbg;->f()I

    move-result v0

    if-nez v0, :cond_8

    .line 1207
    invoke-virtual {p0}, Lfbg;->h()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1209
    invoke-virtual {p0}, Lfbg;->g()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1211
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1212
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1216
    :cond_8
    invoke-virtual {p0}, Lfbg;->d()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1218
    iget-object v1, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_9
    iget-object v0, p0, Lfbg;->W:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lfbg;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1222
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1226
    invoke-virtual {p0}, Lfbg;->d()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1227
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/text/SpannedString;

    if-eqz v1, :cond_1

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfbt;->a(Landroid/content/Context;)Lfbt;

    move-result-object v1

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {v1, v0}, Lfbt;->a(Landroid/text/Spanned;)V

    .line 1231
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfbg;->a(Ljava/lang/CharSequence;)V

    .line 1232
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 398
    invoke-static {p1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->b(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 399
    long-to-int v0, v0

    .line 401
    const/16 v1, 0x14

    .line 403
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->L:Ljava/lang/String;

    .line 404
    const/4 v1, 0x7

    .line 406
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfbg;->M:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lfbg;->M:Ljava/lang/String;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lfbg;->N:I

    .line 409
    return-void
.end method

.method private a(Lbfd;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 292
    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->ha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 302
    iget v0, p0, Lfbg;->x:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 340
    :pswitch_1
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fV:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v0, p0, Lfbg;->B:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lfbg;->b(Ljava/lang/String;Lbfd;)V

    .line 305
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->is:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lfbg;->a(Ljava/lang/String;Lbfd;)V

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v0, p0, Lfbg;->B:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lfbg;->b(Ljava/lang/String;Lbfd;)V

    .line 310
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->it:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-direct {p0, v0, p1}, Lfbg;->a(Ljava/lang/String;Lbfd;)V

    goto :goto_0

    .line 314
    :pswitch_4
    iget-object v0, p0, Lfbg;->y:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lfbg;->a(Ljava/lang/String;Lbfd;)V

    goto :goto_0

    .line 317
    :pswitch_5
    iget-object v0, p0, Lfbg;->D:Ljava/lang/String;

    iget-object v1, p0, Lfbg;->C:Ljava/lang/String;

    iget-object v2, p0, Lfbg;->G:Ljava/lang/String;

    .line 318
    invoke-static {p1, v0, v1, v2, v3}, Laal;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :pswitch_6
    invoke-static {}, Lemc;->values()[Lemc;

    move-result-object v0

    iget v1, p0, Lfbg;->E:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lfbg;->D:Ljava/lang/String;

    iget-object v2, p0, Lfbg;->C:Ljava/lang/String;

    iget-object v3, p0, Lfbg;->I:Ljava/lang/String;

    .line 329
    invoke-static {p1, v0, v1, v2, v3}, Laal;->a(Lbfd;Lemc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :pswitch_7
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->hC:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 352
    :pswitch_8
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 358
    :pswitch_9
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->hD:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 364
    :pswitch_a
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->ia:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-direct {p0, v0, v4, v4}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0, v3}, Lfbg;->k(I)V

    .line 368
    iget-object v0, p0, Lfbg;->K:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfbg;->d(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lbfd;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    iget-boolean v0, p0, Lfbg;->R:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->iv:I

    new-array v3, v7, [Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->gq:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 251
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    iget v2, p0, Lfbg;->x:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 272
    iget-object v2, p0, Lfbg;->B:Ljava/lang/String;

    .line 273
    const-string v3, "://"

    invoke-static {v2, v3}, Lezc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 274
    if-lez v2, :cond_0

    .line 276
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laal;->hy:I

    new-array v4, v7, [Ljava/lang/Object;

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 277
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lfbg;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 282
    return-void

    .line 254
    :cond_1
    iget v0, p0, Lfbg;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 255
    iget-object v0, p0, Lfbg;->A:Ljava/lang/String;

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    invoke-virtual {p2}, Lbfd;->y()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lbfd;->A()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    :cond_2
    iget-object v0, p0, Lfbg;->F:Ljava/lang/String;

    .line 261
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    iget-object v0, p0, Lfbg;->M:Ljava/lang/String;

    .line 264
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_5
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->iv:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 721
    invoke-virtual {p0, v4}, Lfbg;->a(I)V

    .line 722
    iput-object p1, p0, Lfbg;->y:Ljava/lang/String;

    .line 723
    iput-object p2, p0, Lfbg;->u:Ljava/lang/CharSequence;

    .line 724
    iput-object p3, p0, Lfbg;->v:Ljava/lang/CharSequence;

    .line 6241
    invoke-direct {p0}, Lfbg;->B()V

    .line 6245
    iget-object v0, p0, Lfbg;->y:Ljava/lang/String;

    .line 6246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6247
    const-string v0, ""

    .line 6253
    :goto_0
    iget-object v1, p0, Lfbg;->u:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6254
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6264
    :goto_1
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfbt;->a(Landroid/content/Context;)Lfbt;

    move-result-object v1

    .line 6265
    invoke-virtual {p0}, Lfbg;->e()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lfbt;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v1

    .line 6266
    iget-object v2, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6267
    if-nez v1, :cond_5

    .line 6268
    iget-object v1, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6272
    :goto_2
    iget-object v0, p0, Lfbg;->v:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6273
    iget-object v0, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 6274
    iget-object v0, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 6276
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lfbg;->v:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "<i>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6277
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6278
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x404041

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6281
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 6278
    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 6283
    iget-object v1, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6285
    :cond_1
    iget-object v0, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lfbg;->a(Ljava/lang/CharSequence;)V

    .line 726
    return-void

    .line 6248
    :cond_2
    iget v0, p0, Lfbg;->z:I

    invoke-static {v0}, Laal;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lfbg;->J:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 6250
    iget-object v0, p0, Lfbg;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 6251
    :cond_3
    iget-object v0, p0, Lfbg;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto/16 :goto_0

    .line 6256
    :cond_4
    iget-object v1, p0, Lfbg;->aa:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6257
    iget-object v1, p0, Lfbg;->aa:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfbg;->u:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 6258
    iget-object v1, p0, Lfbg;->aa:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6259
    iget-object v1, p0, Lfbg;->aa:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 6260
    iget-object v0, p0, Lfbg;->aa:Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 6270
    :cond_5
    iget-object v0, p0, Lfbg;->ab:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/String;Lbfd;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfbg;->c(I)V

    .line 779
    invoke-static {p1}, Lezc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    iget-object v0, p0, Lfbg;->r:Lceh;

    invoke-interface {v0}, Lceh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    iget-object v2, p0, Lfbg;->r:Lceh;

    iget-object v3, p0, Lfbg;->U:Lauw;

    iget-object v0, p0, Lfbg;->s:Lcei;

    sget v4, Lfbg;->c:I

    .line 784
    invoke-interface {v0, v4}, Lcei;->b(I)Lauk;

    move-result-object v4

    iget-object v0, p0, Lfbg;->s:Lcei;

    .line 785
    invoke-interface {v0}, Lcei;->b()Laix;

    move-result-object v0

    invoke-virtual {v0}, Laix;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhav;

    .line 781
    invoke-interface {v2, v1, v3, v4, v0}, Lceh;->b(Ljava/lang/String;Lauw;Lauk;Lhav;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    iget-object v0, p0, Lfbg;->Q:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfbg;->d:Lbhs;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfbg;->e:Leys;

    if-nez v0, :cond_0

    .line 789
    :cond_2
    invoke-direct {p0}, Lfbg;->v()V

    .line 790
    iput-object v1, p0, Lfbg;->Q:Ljava/lang/String;

    .line 791
    new-instance v0, Lbhs;

    new-instance v2, Leyd;

    .line 793
    invoke-virtual {p2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lfbg;->c:I

    .line 794
    invoke-virtual {v2, v1}, Leyd;->a(I)Leyd;

    move-result-object v1

    .line 795
    invoke-virtual {v1, v4}, Leyd;->d(Z)Leyd;

    move-result-object v1

    iget-object v2, p0, Lfbg;->V:Lbhv;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lbhs;-><init>(Leyd;Lbhv;ZLjava/lang/Object;)V

    iput-object v0, p0, Lfbg;->d:Lbhs;

    .line 799
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lfbg;->d:Lbhs;

    invoke-virtual {v0, v1}, Leit;->a(Lehx;)Z

    move-result v0

    .line 801
    sget-boolean v1, Lfbg;->n:Z

    if-eqz v1, :cond_0

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setImageSnippet - image was cached:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-object v0, p0, Lfbg;->d:Lbhs;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lfbg;->d:Lbhs;

    invoke-virtual {v0}, Lbhs;->b()V

    .line 812
    iput-object v1, p0, Lfbg;->d:Lbhs;

    .line 814
    :cond_0
    invoke-virtual {p0, v1}, Lfbg;->a(Landroid/graphics/Bitmap;)V

    .line 815
    iget-object v0, p0, Lfbg;->e:Leys;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lfbg;->e:Leys;

    invoke-virtual {v0}, Leys;->b()V

    .line 817
    iput-object v1, p0, Lfbg;->e:Leys;

    .line 819
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lfbg;->c(I)V

    .line 820
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0, v1}, Lfbg;->a(I)V

    .line 6730
    invoke-direct {p0}, Lfbg;->B()V

    .line 6731
    iput-object v0, p0, Lfbg;->y:Ljava/lang/String;

    .line 6732
    iput-object v0, p0, Lfbg;->u:Ljava/lang/CharSequence;

    .line 6733
    iput-object v0, p0, Lfbg;->v:Ljava/lang/CharSequence;

    .line 6734
    invoke-virtual {p0, v1}, Lfbg;->a(I)V

    .line 826
    invoke-direct {p0}, Lfbg;->v()V

    .line 827
    invoke-virtual {p0, v1}, Lfbg;->k(I)V

    .line 828
    invoke-virtual {p0, v0}, Lfbg;->d(Ljava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method private x()V
    .locals 10

    .prologue
    const/4 v6, 0x6

    const/4 v1, -0x1

    const-wide v8, 0x3fec71c71c71c71cL    # 0.8888888888888888

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 834
    iget-object v0, p0, Lfbg;->j:Lcao;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfbg;->j:Lcao;

    iget-object v2, p0, Lfbg;->f:Ljava/lang/String;

    .line 835
    invoke-interface {v0, v2}, Lcao;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v5

    .line 836
    :goto_0
    if-eqz v2, :cond_6

    .line 838
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->b:I

    .line 840
    :goto_1
    invoke-virtual {p0, v0}, Lfbg;->setBackgroundResource(I)V

    .line 845
    if-eqz v2, :cond_7

    move v0, v1

    move v2, v1

    move v3, v4

    .line 857
    :goto_2
    iget v7, p0, Lfbg;->h:I

    if-ne v7, v5, :cond_13

    .line 860
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dk:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lfbg;->setBackgroundColor(I)V

    move v2, v1

    .line 863
    :goto_3
    invoke-virtual {p0, v2, v1, v3}, Lfbg;->a(III)V

    .line 865
    iget-boolean v0, p0, Lfbg;->w:Z

    if-eqz v0, :cond_9

    sget v0, Lfbg;->b:I

    :goto_4
    invoke-virtual {p0, v0}, Lfbg;->d(I)V

    .line 867
    iget-boolean v0, p0, Lfbg;->w:Z

    if-eqz v0, :cond_a

    .line 868
    const/16 v0, 0xff

    .line 867
    :goto_5
    invoke-virtual {p0, v0}, Lfbg;->e(I)V

    .line 872
    invoke-virtual {p0}, Lfbg;->c()V

    .line 873
    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 874
    :cond_0
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bI:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 878
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    .line 879
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    .line 875
    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 880
    iget-boolean v0, p0, Lfbg;->w:Z

    if-eqz v0, :cond_b

    .line 882
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dl:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 884
    :goto_6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 885
    invoke-virtual {p0, v1}, Lfbg;->a(Landroid/graphics/drawable/Drawable;)V

    .line 888
    :cond_1
    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lfbg;->h:I

    if-ne v0, v6, :cond_3

    .line 891
    :cond_2
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lfbg;->h:I

    if-ne v0, v6, :cond_c

    .line 894
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bF:I

    .line 892
    :goto_7
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 899
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    .line 900
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    .line 896
    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    iget-boolean v0, p0, Lfbg;->w:Z

    if-eqz v0, :cond_d

    .line 903
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dl:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 905
    :goto_8
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 906
    invoke-virtual {p0, v1}, Lfbg;->a(Landroid/graphics/drawable/Drawable;)V

    .line 909
    :cond_3
    iget v0, p0, Lfbg;->h:I

    if-ne v0, v5, :cond_f

    .line 911
    invoke-virtual {p0}, Lfbg;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 912
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bK:I

    .line 910
    :goto_9
    invoke-virtual {p0, v0}, Lfbg;->l(I)V

    .line 926
    :goto_a
    iget-boolean v0, p0, Lfbg;->w:Z

    if-eqz v0, :cond_11

    move v0, v6

    .line 927
    :goto_b
    iget-object v1, p0, Lfbg;->v:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 928
    add-int/lit8 v0, v0, 0x1

    .line 932
    :cond_4
    if-ne v0, v5, :cond_12

    :goto_c
    invoke-virtual {p0, v5}, Lfbg;->a(Z)V

    .line 933
    invoke-virtual {p0, v0}, Lfbg;->b(I)V

    .line 934
    return-void

    :cond_5
    move v2, v4

    .line 835
    goto/16 :goto_0

    .line 839
    :cond_6
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->a:I

    goto/16 :goto_1

    .line 848
    :cond_7
    iget-boolean v0, p0, Lfbg;->w:Z

    if-eqz v0, :cond_8

    .line 849
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dm:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 850
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Laal;->dl:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v3, v5

    .line 851
    goto/16 :goto_2

    .line 853
    :cond_8
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dm:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 854
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Laal;->dk:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v3, v4

    goto/16 :goto_2

    .line 865
    :cond_9
    sget v0, Lfbg;->a:I

    goto/16 :goto_4

    .line 868
    :cond_a
    const/16 v0, 0x7f

    goto/16 :goto_5

    .line 883
    :cond_b
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dk:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_6

    .line 895
    :cond_c
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bS:I

    goto/16 :goto_7

    .line 904
    :cond_d
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dk:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_8

    .line 913
    :cond_e
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bU:I

    goto :goto_9

    .line 916
    :cond_f
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 918
    invoke-virtual {p0}, Lfbg;->p()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 919
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bG:I

    .line 917
    :goto_d
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 921
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->dm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 922
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 923
    invoke-virtual {p0, v0}, Lfbg;->c(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 920
    :cond_10
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bT:I

    goto :goto_d

    :cond_11
    move v0, v5

    .line 926
    goto/16 :goto_b

    :cond_12
    move v5, v4

    .line 932
    goto/16 :goto_c

    :cond_13
    move v1, v0

    goto/16 :goto_3
.end method

.method private y()Lbeo;
    .locals 2

    .prologue
    .line 1019
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0}, Leot;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    iget v0, p0, Lfbg;->S:I

    invoke-static {v0}, Laal;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    sget-object v0, Lbeo;->c:Lbeo;

    .line 1026
    :goto_0
    return-object v0

    .line 1022
    :cond_0
    iget v0, p0, Lfbg;->S:I

    invoke-static {v0}, Laal;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    sget-object v0, Lbeo;->b:Lbeo;

    goto :goto_0

    .line 1026
    :cond_1
    sget-object v0, Lbeo;->a:Lbeo;

    goto :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1137
    iget-object v0, p0, Lfbg;->p:Lbhs;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lfbg;->p:Lbhs;

    invoke-virtual {v0}, Lbhs;->b()V

    .line 1139
    iput-object v1, p0, Lfbg;->p:Lbhs;

    .line 1141
    :cond_0
    iget-object v0, p0, Lfbg;->q:Leys;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lfbg;->q:Leys;

    invoke-virtual {v0}, Leys;->b()V

    .line 1143
    iput-object v1, p0, Lfbg;->q:Leys;

    .line 1145
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(III)V
.end method

.method public a(ILandroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lfbg;->h:I

    if-eq v0, p1, :cond_0

    .line 709
    iput p1, p0, Lfbg;->h:I

    .line 711
    invoke-virtual {p0}, Lfbg;->l()V

    .line 712
    invoke-virtual {p0}, Lfbg;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lfbg;->f(I)V

    .line 714
    :cond_0
    return-void

    .line 712
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;Lbfd;ZLjava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/16 v10, 0xa

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 552
    invoke-direct {p0}, Lfbg;->w()V

    .line 554
    iput-object p4, p0, Lfbg;->T:Ljava/lang/Object;

    .line 555
    sget v0, Laen;->bx:I

    invoke-virtual {p0, v0}, Lfbg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2413
    invoke-static {p1}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(Landroid/database/Cursor;)J

    move-result-wide v6

    .line 2414
    long-to-int v8, v6

    .line 2415
    const/16 v1, 0x20

    shr-long/2addr v6, v1

    long-to-int v1, v6

    iput v1, p0, Lfbg;->t:I

    .line 2419
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2418
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->f:Ljava/lang/String;

    .line 2422
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2421
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lfbg;->x:I

    .line 2423
    iget v1, p0, Lfbg;->x:I

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lfbg;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2424
    const/16 v1, 0x9

    iput v1, p0, Lfbg;->x:I

    .line 2426
    :cond_0
    const/16 v1, 0x1c

    .line 2428
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2427
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lfbg;->E:I

    .line 2429
    const/16 v1, 0x9

    .line 2431
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2430
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->y:Ljava/lang/String;

    .line 2432
    const/16 v1, 0x1d

    .line 2434
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2433
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lfbg;->z:I

    .line 2435
    const/16 v1, 0xb

    .line 2437
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2436
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->C:Ljava/lang/String;

    .line 2440
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2439
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->D:Ljava/lang/String;

    .line 2441
    const/16 v1, 0xc

    .line 2443
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2442
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->B:Ljava/lang/String;

    .line 2444
    const/16 v1, 0x1e

    .line 2446
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2445
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->F:Ljava/lang/String;

    .line 2448
    const/16 v1, 0xd

    .line 2450
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2449
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->A:Ljava/lang/String;

    .line 2452
    const/16 v1, 0x19

    .line 2454
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2453
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lfbg;->O:Z

    .line 2456
    const/16 v1, 0x2a

    .line 2458
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2457
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lfbg;->P:Z

    .line 2460
    const/16 v1, 0x22

    .line 2462
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2461
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->G:Ljava/lang/String;

    .line 2464
    const/16 v1, 0x21

    .line 2466
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2465
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfbg;->I:Ljava/lang/String;

    .line 2468
    const/16 v1, 0x24

    .line 2470
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2469
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lfbg;->J:I

    .line 2471
    const/16 v1, 0x27

    .line 2473
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2472
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    .line 2482
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2484
    div-int/lit16 v1, v1, 0x3e8

    .line 2485
    div-int/lit8 v7, v1, 0x3c

    .line 2486
    rem-int/lit8 v1, v1, 0x3c

    .line 2488
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2489
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2490
    if-ge v1, v10, :cond_1

    .line 2491
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2494
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2475
    iput-object v1, p0, Lfbg;->K:Ljava/lang/String;

    .line 2476
    const/16 v1, 0x1d

    .line 2478
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2477
    invoke-static {v1, v8}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lfbg;->S:I

    .line 558
    invoke-direct {p0, p1}, Lfbg;->a(Landroid/database/Cursor;)V

    .line 560
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lfbg;->g:I

    .line 575
    iget-object v1, p0, Lfbg;->C:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfbg;->C:Ljava/lang/String;

    .line 577
    invoke-virtual {p2}, Lbfd;->b()Lczb;

    move-result-object v6

    iget-object v6, v6, Lczb;->b:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lfbg;->R:Z

    .line 579
    const/16 v1, 0x16

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lfbg;->i:I

    .line 3378
    if-eqz p3, :cond_c

    .line 3379
    const/4 v1, 0x4

    .line 581
    :goto_3
    invoke-virtual {p0, v1, p1}, Lfbg;->a(ILandroid/database/Cursor;)V

    .line 583
    sget-boolean v1, Lfbg;->n:Z

    if-eqz v1, :cond_3

    .line 584
    const-string v1, "bindConversationItem "

    iget-object v4, p0, Lfbg;->f:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 587
    :cond_3
    :goto_4
    sget-boolean v1, Lfbg;->m:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 588
    iget v1, p0, Lfbg;->t:I

    if-le v1, v2, :cond_13

    .line 589
    const-string v1, "(%d)"

    new-array v4, v2, [Ljava/lang/Object;

    iget v6, p0, Lfbg;->t:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 588
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :cond_4
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 594
    invoke-static {v0}, Lcom/google/android/apps/hangouts/views/ConversationNameView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfbg;->b(Ljava/lang/String;)V

    .line 606
    :goto_6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    .line 607
    const/4 v4, 0x5

    .line 608
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 609
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_5

    cmp-long v0, v6, v0

    if-gez v0, :cond_5

    .line 610
    iget-object v0, p0, Lfbg;->f:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;)V

    .line 613
    :cond_5
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    iput-wide v0, p0, Lfbg;->H:J

    .line 614
    invoke-virtual {p0}, Lfbg;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    iget-wide v6, p0, Lfbg;->H:J

    invoke-static {v6, v7, v0, v1, v3}, Laal;->a(JJZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lfbg;->b(Ljava/lang/CharSequence;)V

    .line 617
    iget-wide v6, p0, Lfbg;->H:J

    invoke-static {v6, v7, v0, v1, v2}, Laal;->a(JJZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfbg;->c(Ljava/lang/CharSequence;)V

    .line 619
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 621
    :goto_7
    if-eqz v2, :cond_18

    move v0, v3

    :goto_8
    invoke-virtual {p0, v0}, Lfbg;->h(I)V

    .line 622
    const/4 v0, 0x2

    .line 623
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_19

    if-nez v2, :cond_19

    move v0, v3

    .line 622
    :goto_9
    invoke-virtual {p0, v0}, Lfbg;->g(I)V

    .line 628
    const/16 v0, 0x1a

    .line 629
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1a

    move v0, v3

    .line 628
    :goto_a
    invoke-virtual {p0, v0}, Lfbg;->i(I)V

    .line 632
    iget v0, p0, Lfbg;->x:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    move v5, v3

    :cond_6
    invoke-virtual {p0, v5}, Lfbg;->j(I)V

    .line 636
    :cond_7
    invoke-virtual {p2}, Lbfd;->g()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lfbg;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lfbg;->w:Z

    .line 637
    invoke-direct {p0, p1}, Lfbg;->a(Landroid/database/Cursor;)V

    .line 639
    iget-object v0, p0, Lfbg;->L:Ljava/lang/String;

    .line 640
    invoke-virtual {p0}, Lfbg;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 641
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    iget v2, p0, Lfbg;->N:I

    if-lez v2, :cond_1b

    .line 644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 645
    invoke-static {v0, v2, v1}, Laal;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 646
    iget v0, p0, Lfbg;->N:I

    .line 647
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v0, v3

    .line 646
    invoke-virtual {p0, v2, v0, p2, v1}, Lfbg;->a(Ljava/util/List;ILbfd;Ljava/util/List;)V

    .line 654
    :cond_8
    :goto_b
    invoke-direct {p0, p2}, Lfbg;->a(Lbfd;)V

    .line 655
    invoke-direct {p0}, Lfbg;->x()V

    .line 656
    invoke-direct {p0}, Lfbg;->A()V

    .line 657
    return-void

    :cond_9
    move v1, v3

    .line 2453
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 2457
    goto/16 :goto_1

    :cond_b
    move v1, v3

    .line 577
    goto/16 :goto_2

    .line 3380
    :cond_c
    const/16 v1, 0x16

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    .line 3382
    goto/16 :goto_3

    .line 3383
    :cond_d
    iget v1, p0, Lfbg;->x:I

    if-ne v1, v2, :cond_e

    .line 3384
    const/4 v1, 0x2

    goto/16 :goto_3

    .line 3385
    :cond_e
    iget v1, p0, Lfbg;->x:I

    if-ne v1, v5, :cond_f

    move v1, v4

    .line 3386
    goto/16 :goto_3

    .line 3387
    :cond_f
    iget v1, p0, Lfbg;->x:I

    if-ne v1, v10, :cond_10

    .line 3388
    const/4 v1, 0x5

    goto/16 :goto_3

    .line 3389
    :cond_10
    iget v1, p0, Lfbg;->x:I

    const/16 v4, 0xb

    if-ne v1, v4, :cond_11

    .line 3390
    const/4 v1, 0x6

    goto/16 :goto_3

    :cond_11
    move v1, v3

    .line 3392
    goto/16 :goto_3

    .line 584
    :cond_12
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 589
    :cond_13
    const-string v1, ""

    goto/16 :goto_5

    .line 596
    :cond_14
    iget-object v0, p0, Lfbg;->M:Ljava/lang/String;

    .line 597
    if-eqz v0, :cond_16

    .line 4360
    const-string v1, "L"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    :goto_c
    invoke-virtual {p0, v0}, Lfbg;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4360
    :cond_15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 600
    :cond_16
    const-string v0, ""

    invoke-static {v0}, Lcom/google/android/apps/hangouts/views/ConversationNameView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfbg;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    move v2, v3

    .line 619
    goto/16 :goto_7

    :cond_18
    move v0, v5

    .line 621
    goto/16 :goto_8

    :cond_19
    move v0, v5

    .line 627
    goto/16 :goto_9

    :cond_1a
    move v0, v5

    .line 631
    goto/16 :goto_a

    .line 649
    :cond_1b
    const-string v0, "Babel"

    const-string v2, "No participants found for conversation."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, p2, v1}, Lfbg;->a(Ljava/util/List;ILbfd;Ljava/util/List;)V

    goto/16 :goto_b
.end method

.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1316
    return-void
.end method

.method public a(Lcao;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lfbg;->j:Lcao;

    .line 244
    return-void
.end method

.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 7188
    const-string v0, "Expected null"

    invoke-static {v0, p2}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 974
    sget-boolean v0, Lfbg;->n:Z

    if-eqz v0, :cond_0

    .line 975
    iget v4, p0, Lfbg;->l:I

    if-nez p1, :cond_3

    move-object v3, v1

    .line 980
    :goto_0
    if-nez p2, :cond_4

    move-object v0, v1

    .line 982
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CLIV("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") setImageBitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gifImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " success="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " loadedFromCache="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 989
    :cond_0
    iget-object v0, p0, Lfbg;->p:Lbhs;

    if-eq v0, p4, :cond_5

    .line 991
    if-eqz p1, :cond_1

    .line 992
    invoke-virtual {p1}, Leys;->b()V

    .line 994
    :cond_1
    sget-boolean v0, Lfbg;->n:Z

    if-eqz v0, :cond_2

    .line 995
    iget-object v0, p0, Lfbg;->T:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setImage leaving early: mAvatarLoadedToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :cond_2
    :goto_2
    return-void

    .line 980
    :cond_3
    invoke-virtual {p1}, Leys;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    .line 982
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1001
    :cond_5
    iput-object v1, p0, Lfbg;->p:Lbhs;

    .line 1003
    if-eqz p3, :cond_2

    .line 1009
    iget-object v0, p0, Lfbg;->q:Leys;

    .line 8188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8198
    const-string v0, "Expected non-null"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    iput-object p1, p0, Lfbg;->q:Leys;

    .line 1012
    if-nez p5, :cond_6

    const/4 v0, 0x1

    .line 1013
    :goto_3
    invoke-virtual {p1}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p4}, Lbhs;->l()Ljava/lang/Object;

    move-result-object v3

    .line 1012
    invoke-virtual {p0, v0, v1, v2, v3}, Lfbg;->a(ZLandroid/graphics/Bitmap;ZLjava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method protected a(Ljava/util/List;ILbfd;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lbfd;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1039
    iget-object v0, p0, Lfbg;->p:Lbhs;

    if-eqz v0, :cond_6

    .line 1041
    iget-object v0, p0, Lfbg;->p:Lbhs;

    invoke-virtual {v0}, Lbhs;->c()Ljava/lang/String;

    move-result-object v8

    .line 1044
    :goto_0
    invoke-direct {p0}, Lfbg;->y()Lbeo;

    move-result-object v10

    .line 1050
    invoke-virtual/range {p3 .. p3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    .line 1051
    invoke-static {}, Lbfq;->a()I

    move-result v4

    iget-object v5, p0, Lfbg;->f:Ljava/lang/String;

    iget-object v7, p0, Lfbg;->T:Ljava/lang/Object;

    sget-object v0, Lbeo;->a:Lbeo;

    if-eq v10, v0, :cond_8

    const/4 v9, 0x1

    :goto_1
    const/4 v11, 0x1

    move-object v0, p1

    move v1, p2

    move-object/from16 v2, p4

    move-object v6, p0

    .line 1046
    invoke-static/range {v0 .. v11}, Lbem;->a(Ljava/util/List;ILjava/util/List;Ljava/lang/String;ILjava/lang/String;Lbhv;Ljava/lang/Object;Ljava/lang/String;ZLbeo;Z)Lbhs;

    move-result-object v6

    .line 1067
    if-eqz p1, :cond_0

    .line 1068
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    if-nez p2, :cond_9

    const/4 v3, 0x1

    .line 1069
    :goto_2
    if-nez v6, :cond_1

    if-eqz v3, :cond_a

    :cond_1
    const/4 v0, 0x1

    move v5, v0

    .line 1070
    :goto_3
    if-eqz v6, :cond_b

    const/4 v0, 0x1

    .line 1072
    :goto_4
    sget-boolean v1, Lfbg;->n:Z

    if-eqz v1, :cond_2

    .line 1073
    iget v7, p0, Lfbg;->l:I

    iget-object v9, p0, Lfbg;->f:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 1080
    const-string v1, "null"

    :goto_5
    iget-object v2, p0, Lfbg;->q:Leys;

    if-nez v2, :cond_d

    .line 1082
    const-string v2, "null"

    move-object v4, v2

    :goto_6
    if-nez p1, :cond_e

    .line 1090
    const-string v2, " null"

    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x77

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "CLIV("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ") setAvatarUrls convId="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " newRequest="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " oldBitmap="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " clearPrev="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " fetch="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " setDefault="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " avatarUrls="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_2
    if-eqz v5, :cond_3

    .line 1094
    invoke-direct {p0}, Lfbg;->z()V

    .line 1097
    :cond_3
    if-eqz v0, :cond_12

    .line 1098
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lbhs;->b(Z)V

    .line 1099
    iput-object v6, p0, Lfbg;->p:Lbhs;

    .line 1100
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lfbg;->p:Lbhs;

    invoke-virtual {v0, v1}, Leit;->a(Lehx;)Z

    move-result v0

    .line 1102
    if-eqz v0, :cond_f

    .line 1104
    sget-boolean v0, Lfbg;->n:Z

    if-eqz v0, :cond_4

    .line 1105
    iget v0, p0, Lfbg;->l:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CLIV("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") loaded setAvatarUrl came from cache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lfbg;->p:Lbhs;

    .line 1110
    const/4 v0, 0x0

    .line 1117
    :goto_8
    if-eqz v0, :cond_5

    .line 1118
    const/4 v0, 0x0

    .line 1120
    invoke-direct {p0}, Lfbg;->y()Lbeo;

    move-result-object v1

    invoke-static {v1}, Lbfq;->a(Lbeo;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lfbg;->T:Ljava/lang/Object;

    .line 1118
    invoke-virtual {p0, v0, v1, v2, v3}, Lfbg;->a(ZLandroid/graphics/Bitmap;ZLjava/lang/Object;)V

    .line 1123
    sget-boolean v0, Lfbg;->n:Z

    if-eqz v0, :cond_5

    .line 1124
    iget v2, p0, Lfbg;->l:I

    if-nez v8, :cond_10

    .line 1129
    const-string v0, "true"

    move-object v1, v0

    :goto_9
    if-nez p1, :cond_11

    .line 1131
    const-string v0, "null"

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CLIV("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") setAvatarUrls setting default avatar: oldkeynull="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " avatarUrls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_5
    return-void

    .line 1042
    :cond_6
    iget-object v0, p0, Lfbg;->q:Leys;

    if-nez v0, :cond_7

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lfbg;->q:Leys;

    invoke-virtual {v0}, Leys;->h()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1051
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1068
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1069
    :cond_a
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_3

    .line 1070
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1080
    :cond_c
    invoke-virtual {v6}, Lbhs;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 1082
    :cond_d
    iget-object v2, p0, Lfbg;->q:Leys;

    invoke-virtual {v2}, Leys;->h()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_6

    .line 1090
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 1113
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 1129
    :cond_10
    const-string v0, "false"

    move-object v1, v0

    goto :goto_9

    .line 1131
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_12
    move v0, v3

    goto/16 :goto_8
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(ZLandroid/graphics/Bitmap;ZLjava/lang/Object;)V
.end method

.method protected a(Landroid/database/Cursor;I)Z
    .locals 10

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 501
    iget v0, p0, Lfbg;->x:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    iget v0, p0, Lfbg;->x:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_4

    .line 503
    :cond_0
    const/4 v0, 0x0

    .line 504
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 506
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 508
    :cond_1
    const/16 v3, 0x1b

    .line 509
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2051
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 512
    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    move v1, v0

    .line 538
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    .line 512
    goto :goto_0

    .line 513
    :cond_4
    iget v0, p0, Lfbg;->x:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    iget v0, p0, Lfbg;->x:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 517
    :cond_5
    const/16 v0, 0x2b

    .line 518
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 520
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "babel_old_message_without_notification"

    sget-wide v8, Leea;->d:J

    invoke-static {v0, v3, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    .line 523
    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    move v0, v1

    .line 2319
    :goto_2
    sget-object v3, Ldvp;->v:Ldml;

    invoke-virtual {v3, p2}, Ldml;->b(I)Z

    move-result v3

    .line 525
    if-eqz v3, :cond_8

    .line 2345
    sget-object v3, Ldvp;->x:Ldml;

    invoke-virtual {v3, p2}, Ldml;->b(I)Z

    move-result v3

    .line 526
    if-eqz v3, :cond_8

    iget v3, p0, Lfbg;->J:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 531
    iget-boolean v3, p0, Lfbg;->R:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lfbg;->P:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_2

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    move v0, v2

    .line 523
    goto :goto_2

    .line 533
    :cond_8
    iget-boolean v3, p0, Lfbg;->R:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lfbg;->O:Z

    if-eqz v3, :cond_9

    if-eqz v0, :cond_2

    :cond_9
    move v1, v2

    goto :goto_1

    .line 536
    :cond_a
    iget-boolean v0, p0, Lfbg;->R:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lfbg;->O:Z

    if-nez v0, :cond_2

    :cond_b
    move v1, v2

    goto :goto_1
.end method

.method public abstract b()Ljava/lang/CharSequence;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract b(Ljava/lang/CharSequence;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract c(Ljava/lang/CharSequence;)V
.end method

.method public abstract d()Ljava/lang/CharSequence;
.end method

.method public abstract d(I)V
.end method

.method public abstract d(Ljava/lang/CharSequence;)V
.end method

.method public abstract e()Landroid/widget/TextView;
.end method

.method public abstract e(I)V
.end method

.method public abstract f()I
.end method

.method public abstract f(I)V
.end method

.method public abstract g()Ljava/lang/CharSequence;
.end method

.method public abstract g(I)V
.end method

.method public abstract h()Ljava/lang/CharSequence;
.end method

.method public abstract h(I)V
.end method

.method public abstract i()I
.end method

.method public abstract i(I)V
.end method

.method public abstract j()I
.end method

.method public abstract j(I)V
.end method

.method public abstract k()I
.end method

.method public abstract k(I)V
.end method

.method public abstract l()V
.end method

.method public abstract l(I)V
.end method

.method public abstract m()Z
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 667
    iget v0, p0, Lfbg;->h:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lfbg;->i:I

    if-eq v0, v2, :cond_0

    move v1, v2

    .line 671
    :goto_0
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lhpu;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 670
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 672
    if-eqz v1, :cond_1

    sget-object v1, Lfbg;->o:Ljava/lang/Boolean;

    .line 5015
    invoke-static {v1, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 673
    if-eqz v1, :cond_1

    .line 674
    invoke-virtual {v0}, Lbfd;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 667
    goto :goto_0

    :cond_1
    move v2, v3

    .line 674
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1293
    invoke-direct {p0}, Lfbg;->w()V

    .line 1294
    invoke-direct {p0}, Lfbg;->z()V

    .line 1295
    invoke-super {p0}, Lfan;->onDetachedFromWindow()V

    .line 1296
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lfbg;->o:Ljava/lang/Boolean;

    .line 239
    invoke-super {p0}, Lfan;->onFinishInflate()V

    .line 240
    return-void
.end method

.method public p()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 681
    iget v0, p0, Lfbg;->h:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lfbg;->i:I

    if-ne v0, v2, :cond_1

    move v1, v2

    .line 685
    :goto_0
    invoke-virtual {p0}, Lfbg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lhpu;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 684
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 686
    if-nez v1, :cond_0

    iget v1, p0, Lfbg;->h:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    :cond_0
    sget-object v1, Lfbg;->o:Ljava/lang/Boolean;

    .line 6015
    invoke-static {v1, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 687
    if-eqz v1, :cond_2

    .line 688
    invoke-virtual {v0}, Lbfd;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 681
    goto :goto_0

    :cond_2
    move v2, v3

    .line 688
    goto :goto_1
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 696
    iget v0, p0, Lfbg;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfbg;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lfbg;->w:Z

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lfbg;->g:I

    return v0
.end method

.method public setActivated(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 948
    invoke-virtual {p0}, Lfbg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 949
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 953
    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->hP:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 949
    :goto_0
    invoke-static {p0, v3, v0}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    .line 956
    invoke-super {p0}, Lfan;->isActivated()Z

    move-result v0

    .line 957
    invoke-super {p0, p1}, Lfan;->setActivated(Z)V

    .line 958
    if-eq p1, v0, :cond_0

    .line 959
    invoke-direct {p0}, Lfbg;->x()V

    .line 960
    invoke-direct {p0}, Lfbg;->A()V

    .line 961
    sget v0, Laen;->aV:I

    invoke-virtual {p0, v0}, Lfbg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 962
    sget v0, Laen;->aA:I

    invoke-virtual {p0, v0}, Lfbg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 964
    :cond_0
    return-void

    .line 954
    :cond_1
    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->hQ:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 961
    goto :goto_1

    :cond_3
    move v2, v1

    .line 962
    goto :goto_2
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 938
    invoke-super {p0}, Lfan;->isSelected()Z

    move-result v0

    .line 939
    invoke-super {p0, p1}, Lfan;->setSelected(Z)V

    .line 940
    if-eq p1, v0, :cond_0

    .line 941
    invoke-direct {p0}, Lfbg;->x()V

    .line 942
    invoke-direct {p0}, Lfbg;->A()V

    .line 944
    :cond_0
    return-void
.end method

.method public t()I
    .locals 1

    .prologue
    .line 1307
    iget v0, p0, Lfbg;->S:I

    return v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 1311
    iget-wide v0, p0, Lfbg;->H:J

    return-wide v0
.end method
