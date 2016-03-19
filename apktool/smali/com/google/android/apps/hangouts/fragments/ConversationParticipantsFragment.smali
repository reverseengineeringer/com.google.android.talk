.class public Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;
.super Lcbp;
.source "SourceFile"

# interfaces
.implements Lck;
.implements Liku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbp;",
        "Lck",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Liku;"
    }
.end annotation


# instance fields
.field public a:Lhpu;

.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private aC:Z

.field private final aD:Lfch;

.field private final aE:Lcap;

.field private aF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lccw;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/lang/String;

.field private ak:[Ljava/lang/String;

.field private al:Landroid/widget/ListView;

.field private am:Lbzn;

.field private an:Lccx;

.field private ao:I

.field private ap:I

.field private final aq:Lbeu;

.field private ar:J

.field private as:Z

.field private at:Lccw;

.field private au:Lccw;

.field private av:Lccw;

.field private aw:Lccw;

.field private ax:Ljava/lang/String;

.field private ay:Ljava/lang/String;

.field private az:Lcyx;

.field public b:Lbfd;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lccw;

.field public f:Lcyx;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcbp;-><init>()V

    .line 103
    new-instance v0, Lbeu;

    invoke-direct {v0}, Lbeu;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aC:Z

    .line 129
    new-instance v0, Lfch;

    .line 1688
    invoke-direct {v0, p0}, Lfch;-><init>(Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;)V

    .line 129
    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aD:Lfch;

    .line 130
    new-instance v0, Lcap;

    .line 1699
    invoke-direct {v0, p0}, Lcap;-><init>(Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;)V

    .line 130
    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aE:Lcap;

    return-void
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 612
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    const/4 p0, 0x0

    .line 685
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0
.end method

.method private static a(Lccw;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lccw;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 617
    iput-object p1, p0, Lccw;->b:Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lccw;->g:Landroid/view/View;

    sget v1, Laen;->gy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 619
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;II)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 3

    .prologue
    .line 3032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ringtone.TYPE"

    .line 3033
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TITLE"

    .line 3034
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 3170
    sget-object v2, Leyt;->a:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3171
    sget v2, Laal;->hM:I

    invoke-static {v2}, Lejs;->a(I)Landroid/net/Uri;

    move-result-object p2

    .line 3035
    :cond_0
    :goto_0
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 3038
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 265
    invoke-virtual {p0, v0, p4}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 266
    return-void

    .line 3172
    :cond_1
    sget-object v2, Leyt;->b:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3173
    sget v2, Laal;->hL:I

    invoke-static {v2}, Lejs;->a(I)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 367
    new-instance v0, Lccw;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->eE:I

    .line 368
    invoke-virtual {v1, v2}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    .line 369
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Leyt;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lccw;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aw:Lccw;

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aw:Lccw;

    invoke-virtual {v0, p1}, Lccw;->a(Z)V

    .line 372
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/16 v2, 0x1e

    const/4 v0, 0x0

    .line 195
    iget v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ap:I

    if-ne v1, v2, :cond_0

    .line 196
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ap:I

    .line 197
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    iput-boolean v0, v1, Lccw;->d:Z

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 203
    iget-object v4, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ap:I

    invoke-static {v4, v3, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;I)I

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_0
    iput v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ap:I

    .line 200
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lccw;->d:Z

    goto :goto_0

    .line 2238
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2239
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    sget v1, Laen;->gz:I

    .line 2240
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 2241
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    iget-boolean v1, v1, Lccw;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 2242
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->av:Lccw;

    if-eqz v0, :cond_2

    .line 2243
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->av:Lccw;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    iget-boolean v1, v1, Lccw;->d:Z

    invoke-virtual {v0, v1}, Lccw;->a(Z)V

    .line 2245
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aw:Lccw;

    if-eqz v0, :cond_3

    .line 2246
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aw:Lccw;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    iget-boolean v1, v1, Lccw;->d:Z

    invoke-virtual {v0, v1}, Lccw;->a(Z)V

    .line 207
    :cond_3
    return-void
.end method

.method public a(Lfe;Landroid/database/Cursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 510
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 513
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0, p2}, Lbeu;->a(Landroid/database/Cursor;)V

    .line 514
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    if-ne v0, v3, :cond_8

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0}, Lbeu;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 517
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v0, Lcyx;->i:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 518
    iput-boolean v3, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->g:Z

    .line 520
    :cond_2
    iget-object v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcyx;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 522
    :cond_3
    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    .line 523
    iget-object v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v5, v5, Lcyx;->e:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 527
    iget-object v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    const-string v6, ""

    iput-object v6, v5, Lcyx;->e:Ljava/lang/String;

    .line 530
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 531
    iget-object v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->az:Lcyx;

    if-nez v5, :cond_1

    .line 5449
    iget v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    invoke-static {v5}, Laal;->f(I)Z

    move-result v5

    .line 4574
    if-eqz v5, :cond_5

    iget-object v6, v0, Lcyx;->b:Lczb;

    iget-object v6, v6, Lczb;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ax:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    if-nez v5, :cond_1

    iget-object v5, v0, Lcyx;->b:Lczb;

    iget-object v5, v5, Lczb;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ay:Ljava/lang/String;

    .line 4575
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4576
    :cond_6
    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->az:Lcyx;

    goto :goto_1

    .line 535
    :cond_7
    if-le v1, v3, :cond_a

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->h:Z

    .line 536
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->h:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    if-eqz v0, :cond_8

    .line 537
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v0, v0, Lcyx;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->i:Z

    .line 540
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    if-eqz v0, :cond_9

    .line 541
    invoke-static {}, Lgw;->a()Lgw;

    move-result-object v0

    .line 542
    iget-boolean v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->g:Z

    if-eqz v1, :cond_c

    .line 543
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v4

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->aE:I

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v7, v7, Lcyx;->e:Ljava/lang/String;

    sget-object v8, Lhh;->e:Lhg;

    .line 545
    invoke-virtual {v0, v7, v8}, Lgw;->a(Ljava/lang/String;Lhg;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 543
    invoke-virtual {v4, v5, v6}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccw;->a:Ljava/lang/String;

    .line 555
    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    sget v1, Laen;->gM:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 557
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    iget-object v1, v1, Lccw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->an:Lccx;

    invoke-virtual {v0, p2}, Lccx;->a(Landroid/database/Cursor;)V

    .line 6449
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    invoke-static {v0}, Laal;->f(I)Z

    move-result v0

    .line 564
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0}, Lbeu;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 565
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ap:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_d

    :goto_5
    invoke-direct {p0, v3}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Z)V

    .line 566
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aF:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aw:Lccw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 535
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 537
    goto :goto_3

    .line 549
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v4

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->ar:I

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v7, v7, Lcyx;->e:Ljava/lang/String;

    sget-object v8, Lhh;->e:Lhg;

    .line 551
    invoke-virtual {v0, v7, v8}, Lgw;->a(Ljava/lang/String;Lhg;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 549
    invoke-virtual {v4, v5, v6}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccw;->a:Ljava/lang/String;

    goto :goto_4

    :cond_d
    move v3, v2

    .line 565
    goto :goto_5

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x401
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 269
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 271
    :goto_0
    if-nez v0, :cond_3

    .line 272
    const-string v2, "Babel"

    const-string v0, "should not call setConversationName on a conversation which is not a group conversation "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 269
    goto :goto_0

    .line 272
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iput-object p1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Lbfd;Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->az:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccw;->a:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    iput-object p1, v0, Lccw;->b:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    sget v1, Laen;->gy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    iget-object v1, v1, Lccw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    iget-object v0, v0, Lccw;->g:Landroid/view/View;

    sget v1, Laen;->gy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aA:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aA:Ljava/lang/String;

    invoke-static {v0}, Lezc;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 767
    const-string v0, "block_user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 768
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    if-eqz v0, :cond_4

    .line 771
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lbfd;[Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [J

    move v0, v1

    .line 773
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 774
    iget-wide v6, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ar:J

    aput-wide v6, v2, v0

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget-object v3, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    invoke-static {v0, v3, v2, v4, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;[Ljava/lang/String;[JZZ)I

    .line 780
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0}, Lbeu;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcyx;

    .line 781
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    if-eq v3, v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a:Lhpu;

    .line 783
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iget-object v1, v3, Lcyx;->b:Lczb;

    iget-object v1, v1, Lczb;->a:Ljava/lang/String;

    iget-object v2, v3, Lcyx;->b:Lczb;

    iget-object v2, v2, Lczb;->b:Ljava/lang/String;

    iget-object v3, v3, Lcyx;->e:Ljava/lang/String;

    move v5, v4

    .line 782
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    goto :goto_1

    .line 794
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v7, v0, Lcyx;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v0, v0, Lcyx;->b:Lczb;

    iget-object v8, v0, Lczb;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    iget-object v0, v0, Lcyx;->b:Lczb;

    iget-object v9, v0, Lczb;->b:Ljava/lang/String;

    move v10, v4

    invoke-static/range {v5 .. v10}, Laal;->a(Lba;Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 800
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    const/16 v1, 0x71b

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 806
    :cond_3
    :goto_2
    return-void

    .line 803
    :cond_4
    const-string v0, "Babel"

    const-string v2, "no participants found when trying to block"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public c()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 631
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    .line 632
    invoke-static {v0}, Lekq;->a(I)Leku;

    move-result-object v1

    .line 633
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    const-class v2, Lekq;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    .line 634
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lekq;->a(ILeku;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    invoke-static {v0}, Laal;->b(Lbfd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezc;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aB:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aB:Ljava/lang/String;

    invoke-static {v0}, Lezc;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method protected isEmpty()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 591
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 592
    packed-switch p1, :pswitch_data_0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Bad request code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->an:Lccx;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->an:Lccx;

    invoke-virtual {v0}, Lccx;->notifyDataSetChanged()V

    .line 608
    :cond_0
    return-void

    .line 594
    :pswitch_0
    invoke-static {p3}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 6661
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6662
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    const/16 v2, 0x640

    invoke-static {v1, v2}, Laal;->a(Lbfd;I)V

    .line 6665
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 6666
    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aB:Ljava/lang/String;

    .line 6667
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 6668
    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    invoke-static {v2, v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e(Lbfd;Ljava/lang/String;Ljava/lang/String;)I

    .line 6670
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aw:Lccw;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    .line 6671
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Leyt;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 6670
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Lccw;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :pswitch_1
    invoke-static {p3}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 7652
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 7653
    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aA:Ljava/lang/String;

    .line 7654
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 7655
    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    invoke-static {v2, v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d(Lbfd;Ljava/lang/String;Ljava/lang/String;)I

    .line 7656
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->av:Lccw;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    .line 7657
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Leyt;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 7656
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Lccw;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-super {p0, p1}, Lcbp;->onAttach(Landroid/app/Activity;)V

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    .line 145
    const-string v1, "conversation_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d:Ljava/lang/String;

    .line 146
    const-string v1, "notification_level"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ap:I

    .line 148
    const-string v1, "client_conversation_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    .line 151
    const-string v1, "latest_timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ar:J

    .line 153
    const-string v1, "has_unknown_sender"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->as:Z

    .line 154
    const-string v1, "chat_ringtone_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aA:Ljava/lang/String;

    .line 155
    const-string v1, "hangout_ringtone_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aB:Ljava/lang/String;

    .line 156
    const-string v1, "merged_conversation_ids"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    .line 158
    const-string v1, "preferred_chat_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ax:Ljava/lang/String;

    .line 159
    const-string v1, "preferred_gaia_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ay:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->az:Lcyx;

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ak:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 162
    const-string v0, "Babel"

    const-string v1, "should not have mergedConversationIds.length == 0"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcbp;->onAttachBinder(Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a:Lhpu;

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-super {p0, p1}, Lcbp;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    .line 173
    const-string v1, "transport_type"

    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    .line 174
    invoke-virtual {v2}, Lbfd;->E()I

    move-result v2

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lba;->setResult(I)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->setHasOptionsMenu(Z)V

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0, v3, v3}, Lbeu;->d(Lbfd;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    packed-switch p1, :pswitch_data_0

    .line 505
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbeu;->d(Lbfd;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    sget v1, Lbew;->a:I

    invoke-virtual {v0, v1}, Lbeu;->a(I)Lfe;

    move-result-object v0

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x401
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 376
    sget v0, Laal;->gZ:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 377
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .prologue
    .line 295
    sget v2, Laal;->fq:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 3449
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    invoke-static {v2}, Laal;->f(I)Z

    move-result v14

    .line 4328
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4329
    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4330
    new-instance v2, Lccw;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->az:I

    invoke-virtual {v3, v4}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lccw;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    .line 4332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->at:Lccw;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4334
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ap:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3

    const/4 v6, 0x1

    .line 4335
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->aA:I

    invoke-virtual {v2, v3}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4336
    new-instance v2, Lccw;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Lccw;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    .line 4338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->au:Lccw;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4340
    new-instance v7, Lccw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->eH:I

    .line 4341
    invoke-virtual {v2, v3}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    .line 4342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Leyt;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-direct/range {v7 .. v12}, Lccw;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->av:Lccw;

    .line 4344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->av:Lccw;

    invoke-virtual {v2, v6}, Lccw;->a(Z)V

    .line 4345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->av:Lccw;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4349
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    invoke-static {v2}, Laal;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4350
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Z)V

    .line 4351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aw:Lccw;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4354
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->as:Z

    if-nez v2, :cond_2

    .line 4357
    new-instance v2, Lccw;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lccw;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    .line 4358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->e:Lccw;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aF:Ljava/util/List;

    .line 300
    new-instance v8, Lccv;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aF:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aE:Lcap;

    invoke-direct {v8, v2, v3, v4}, Lccv;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    .line 303
    new-instance v2, Lccx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->f:Lcyx;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aD:Lfch;

    move v6, v14

    invoke-direct/range {v2 .. v7}, Lccx;-><init>(Landroid/content/Context;Lbfd;Lcyx;ZLfch;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->an:Lccx;

    .line 306
    new-instance v2, Lbzn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->context:Lill;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->an:Lccx;

    invoke-direct {v2, v3, v8, v4}, Lbzn;-><init>(Landroid/content/Context;Lccv;Lccx;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->am:Lbzn;

    .line 308
    sget v2, Laen;->dU:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->al:Landroid/widget/ListView;

    .line 310
    sget v2, Laal;->gm:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->al:Landroid/widget/ListView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->al:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->al:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->am:Lbzn;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getLoaderManager()Lcj;

    move-result-object v2

    const/16 v3, 0x401

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    move-result-object v2

    invoke-virtual {v2}, Lfe;->s()V

    .line 319
    return-object v13

    .line 4334
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lcbp;->onDestroy()V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->al:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->am:Lbzn;

    invoke-virtual {v0}, Lbzn;->b()V

    .line 187
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcbp;->onDestroyView()V

    .line 192
    return-void
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->a(Lfe;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Lfe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 587
    :goto_0
    return-void

    .line 584
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->an:Lccx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccx;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x401
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Laen;->fp:I

    if-eq v0, v2, :cond_0

    .line 403
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Laen;->fs:I

    if-ne v0, v2, :cond_7

    .line 405
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aC:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 4463
    :goto_0
    return v0

    .line 4453
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0}, Lbeu;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 4454
    goto :goto_0

    .line 4458
    :cond_2
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    if-ne v0, v4, :cond_4

    .line 4459
    sget-object v1, Ldhm;->d:Ldhm;

    .line 4460
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0}, Lbeu;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 4475
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v4

    .line 4476
    iget v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    .line 4477
    invoke-static {v2}, Laal;->f(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4478
    sget-object v2, Lbkw;->b:Lbkw;

    .line 4479
    :goto_2
    iget-object v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget-object v6, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    invoke-static {v5, v6, v0, v1, v2}, Laal;->a(Lbfd;Ljava/lang/String;Ljava/util/Collection;Ldhm;Lbkw;)Landroid/content/Intent;

    move-result-object v1

    .line 4487
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "share_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 4488
    if-eqz v0, :cond_3

    .line 4489
    const-string v2, "conversation_id"

    iget-object v5, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4490
    const-string v2, "share_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4492
    :cond_3
    const/16 v0, 0x65

    invoke-virtual {v4, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4493
    iput-boolean v3, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aC:Z

    move v0, v3

    .line 408
    goto :goto_0

    .line 4462
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->az:Lcyx;

    if-nez v0, :cond_5

    move v0, v1

    .line 4463
    goto :goto_0

    .line 4465
    :cond_5
    sget-object v1, Ldhm;->c:Ldhm;

    .line 4471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4472
    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->az:Lcyx;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4478
    :cond_6
    sget-object v2, Lbkw;->a:Lbkw;

    goto :goto_2

    .line 409
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Laen;->fo:I

    if-ne v0, v2, :cond_d

    .line 410
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    invoke-virtual {v0}, Lbeu;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 412
    goto :goto_0

    .line 414
    :cond_8
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    if-ne v0, v4, :cond_9

    move v0, v3

    .line 415
    :goto_3
    if-nez v0, :cond_b

    .line 416
    const-string v2, "Babel"

    const-string v0, "should not call forkGroupConversation on a conversation which is not a group conversation "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 418
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 414
    goto :goto_3

    .line 416
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 420
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    .line 421
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    .line 422
    invoke-static {v0}, Laal;->f(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 423
    sget-object v0, Lbkw;->b:Lbkw;

    .line 424
    :goto_5
    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aj:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aq:Lbeu;

    .line 427
    invoke-virtual {v4}, Lbeu;->f()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Ldhm;->b:Ldhm;

    .line 424
    invoke-static {v1, v2, v4, v5, v0}, Laal;->a(Lbfd;Ljava/lang/String;Ljava/util/Collection;Ldhm;Lbkw;)Landroid/content/Intent;

    move-result-object v0

    .line 430
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->startActivity(Landroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->finish()V

    move v0, v3

    .line 432
    goto/16 :goto_0

    .line 423
    :cond_c
    sget-object v0, Lbkw;->a:Lbkw;

    goto :goto_5

    :cond_d
    move v0, v1

    .line 434
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    sget v0, Laen;->fp:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 382
    sget v0, Laen;->fs:I

    .line 383
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 384
    sget v0, Laen;->fo:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 4449
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    invoke-static {v0}, Laal;->f(I)Z

    move-result v6

    .line 386
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->c:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    .line 387
    if-nez v6, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    if-nez v6, :cond_1

    :goto_1
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 387
    goto :goto_0

    :cond_1
    move v1, v2

    .line 389
    goto :goto_1

    .line 391
    :cond_2
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->k()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->b:Lbfd;

    .line 394
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget v3, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->ao:I

    invoke-static {v0, v3}, Lenn;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->as:Z

    if-nez v0, :cond_4

    .line 392
    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    move v1, v2

    .line 394
    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Lcbp;->onResume()V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/ConversationParticipantsFragment;->aC:Z

    .line 441
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 818
    return-void
.end method

.method public s()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method
