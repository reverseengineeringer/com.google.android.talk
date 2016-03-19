.class public final Lcpa;
.super Ldhp;
.source "SourceFile"

# interfaces
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldhp;",
        "Lck",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static j:I

.field private static final r:Lezv;

.field private static final s:Z


# instance fields
.field final k:Landroid/content/Context;

.field final l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

.field m:J

.field n:I

.field public o:Lcpj;

.field public p:Z

.field q:Z

.field private final t:Lawo;

.field private u:J

.field private v:J

.field private w:Lhpu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "InviteListFragment"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lcpa;->r:Lezv;

    .line 51
    sget-object v0, Lezi;->f:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcpa;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;)V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldhp;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcpa;->m:J

    .line 70
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcpa;->u:J

    .line 71
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcpa;->v:J

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcpa;->n:I

    .line 103
    iput-object p1, p0, Lcpa;->k:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    .line 106
    const-class v0, Lhpu;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcpa;->w:Lhpu;

    .line 107
    const-class v0, Lawo;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    iput-object v0, p0, Lcpa;->t:Lawo;

    .line 110
    new-instance v0, Lcpj;

    iget-object v1, p0, Lcpa;->w:Lhpu;

    .line 112
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Lcpj;-><init>(Lcpa;ILcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;)V

    iput-object v0, p0, Lcpa;->o:Lcpj;

    .line 113
    return-void
.end method

.method private a(JZ)Z
    .locals 11

    .prologue
    const-wide/16 v8, -0x2

    .line 455
    sget-boolean v0, Lcpa;->s:Z

    if-eqz v0, :cond_0

    .line 456
    iget v0, p0, Lcpa;->n:I

    iget-wide v2, p0, Lcpa;->m:J

    iget-wide v4, p0, Lcpa;->u:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x7a

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Updating continuation end timestamp for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    :cond_0
    const/4 v0, 0x0

    .line 461
    const-wide/16 v2, -0x3

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 462
    iput-wide v8, p0, Lcpa;->m:J

    .line 464
    const/4 v0, 0x1

    .line 468
    :goto_0
    iput-wide v8, p0, Lcpa;->u:J

    .line 469
    if-eqz p3, :cond_1

    .line 470
    invoke-virtual {p0}, Lcpa;->k()Z

    .line 472
    :cond_1
    return v0

    .line 466
    :cond_2
    iput-wide p1, p0, Lcpa;->m:J

    goto :goto_0
.end method

.method private static e(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 637
    const/4 v0, 0x1

    .line 638
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {p0}, Lcpa;->f(Landroid/database/Cursor;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 637
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/database/Cursor;)J
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 653
    const/16 v1, 0x25

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 656
    if-eqz v1, :cond_2

    .line 657
    const-wide/16 v2, -0x1

    .line 659
    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 660
    array-length v6, v8

    .line 661
    array-length v9, v8

    move v7, v0

    move v4, v0

    move v5, v0

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 663
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 664
    cmp-long v10, v0, v2

    if-lez v10, :cond_0

    move v2, v4

    .line 671
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 661
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v5, v2

    move-wide v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    move-wide v0, v2

    move v2, v5

    goto :goto_1

    :cond_1
    move v0, v6

    .line 674
    :goto_2
    int-to-long v2, v5

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_2
    move v5, v0

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    const-string v0, "layout_inflater"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    sget v1, Laal;->mN:I

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    sget v2, Laal;->mS:I

    .line 136
    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->a(Landroid/view/View;)V

    .line 139
    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    move-object v0, p1

    .line 281
    check-cast v0, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;

    .line 282
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/ConversationListItemWrapper;->f()V

    .line 1147
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;

    .line 1148
    invoke-static {p2}, Lcpa;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 1335
    const/16 v1, 0x10

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1151
    iget-object v1, p0, Lcpa;->w:Lhpu;

    .line 1152
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    iget-object v5, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    move-object v4, p0

    .line 1151
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;->a(ILjava/lang/String;Ljava/lang/String;Lcpa;Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;)V

    .line 284
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 294
    iget-wide v0, p0, Lcpa;->v:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcpa;->w:Lhpu;

    .line 297
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iget-wide v2, p0, Lcpa;->v:J

    .line 296
    invoke-static {v0, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(IJ)I

    .line 299
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 289
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcpa;->v:J

    .line 290
    return-void
.end method

.method public d(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 617
    invoke-static {p1}, Lcpa;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 618
    new-instance v1, Lczb;

    const/16 v0, 0x10

    .line 619
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x11

    .line 620
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->d:Lcpc;

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 624
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->d:Lcpc;

    const/4 v4, 0x4

    .line 625
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 624
    invoke-interface/range {v0 .. v5}, Lcpc;->a(Lczb;Ljava/lang/String;IJ)V

    .line 627
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0}, Lcpa;->a()Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcpa;->a()Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    invoke-virtual {p0}, Lcpa;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 169
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 171
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 176
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    const/16 v4, 0x12

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    sget v0, Laal;->mV:I

    add-int/lit8 v3, v2, 0x1

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 180
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-gtz v2, :cond_0

    .line 185
    :cond_2
    if-nez v2, :cond_3

    .line 187
    sget v0, Laen;->iL:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_3
    sget v0, Laal;->mU:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 191
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_4
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :pswitch_0
    sget v0, Laen;->iV:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_1
    sget v0, Laen;->iW:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_2
    sget v0, Laen;->iX:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .locals 6

    .prologue
    .line 218
    invoke-virtual {p0}, Lcpa;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 221
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 224
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 227
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 232
    sget v0, Laal;->mW:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 232
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 248
    invoke-virtual {p0}, Lcpa;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 250
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 253
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 259
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 263
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laen;->iR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    .line 268
    goto :goto_0

    .line 273
    :cond_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 424
    iget-object v0, p0, Lcpa;->w:Lhpu;

    .line 426
    invoke-interface {v0}, Lhpu;->c()Lhqb;

    move-result-object v0

    iget v1, p0, Lcpa;->n:I

    .line 428
    invoke-static {v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 427
    invoke-interface {v0, v1, v2, v3}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 433
    invoke-virtual {p0}, Lcpa;->isEmpty()Z

    move-result v2

    .line 434
    invoke-direct {p0, v0, v1, v2}, Lcpa;->a(JZ)Z

    move-result v0

    .line 436
    invoke-virtual {p0}, Lcpa;->m()Z

    .line 441
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    iget-object v1, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->a(Landroid/view/View;)V

    .line 444
    :cond_1
    return-void
.end method

.method public k()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0}, Lcpa;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    sget-boolean v1, Lcpa;->s:Z

    if-eqz v1, :cond_2

    .line 486
    iget-wide v2, p0, Lcpa;->m:J

    iget-wide v4, p0, Lcpa;->u:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x51

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Requesting more conversations at "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_2
    iget-wide v2, p0, Lcpa;->u:J

    iget-wide v4, p0, Lcpa;->m:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 496
    iget-wide v0, p0, Lcpa;->m:J

    iput-wide v0, p0, Lcpa;->u:J

    .line 497
    iget-object v0, p0, Lcpa;->w:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iget v1, p0, Lcpa;->n:I

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(II)I

    .line 498
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    const/16 v1, 0xaa9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->a(I)V

    .line 499
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public l()Z
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcpa;->w:Lhpu;

    invoke-interface {v0}, Lhpu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcpa;->t:Lawo;

    iget-object v1, p0, Lcpa;->w:Lhpu;

    .line 510
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcpa;->m:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0}, Lcpa;->l()Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    iget-boolean v2, p0, Lcpa;->q:Z

    if-eqz v2, :cond_0

    .line 530
    iget v2, p0, Lcpa;->n:I

    if-eq v2, v3, :cond_0

    .line 534
    invoke-virtual {p0}, Lcpa;->n()Z

    move-result v2

    if-nez v2, :cond_0

    .line 542
    iput v3, p0, Lcpa;->n:I

    .line 544
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcpa;->a(JZ)Z

    .line 545
    invoke-virtual {p0}, Lcpa;->j()V

    move v0, v1

    .line 546
    goto :goto_0
.end method

.method public n()Z
    .locals 4

    .prologue
    .line 553
    iget-wide v0, p0, Lcpa;->u:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcpa;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcpa;->p:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 8
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
    const/4 v5, 0x0

    .line 303
    iget-object v0, p0, Lcpa;->w:Lhpu;

    .line 304
    invoke-interface {v0}, Lhpu;->b()Z

    move-result v0

    .line 2134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 305
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->i:Landroid/net/Uri;

    iget-object v1, p0, Lcpa;->w:Lhpu;

    .line 307
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    .line 306
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 310
    iget-object v0, p0, Lcpa;->w:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Loader created for unknown id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move-object v0, v5

    .line 324
    :goto_0
    return-object v0

    .line 314
    :pswitch_0
    new-instance v0, Ldhq;

    iget-object v1, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getActivity()Lba;

    move-result-object v1

    sget-object v4, Lcow;->a:[Ljava/lang/String;

    const-string v7, "inviter_affinity, sort_timestamp DESC"

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Ldhq;-><init>(Landroid/content/Context;Lbfd;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    check-cast p2, Landroid/database/Cursor;

    move-object v0, p1

    .line 2341
    check-cast v0, Ldhq;

    invoke-virtual {v0}, Ldhq;->D()Lbfd;

    move-result-object v0

    .line 2342
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcpa;->w:Lhpu;

    .line 2343
    invoke-interface {v1}, Lhpu;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2345
    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcpa;->t:Lawo;

    iget-object v4, p0, Lcpa;->w:Lhpu;

    invoke-interface {v4}, Lhpu;->a()I

    move-result v4

    invoke-interface {v1, v4}, Lawo;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 2344
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2346
    :cond_0
    const-string v0, "Babel"

    const-string v1, "onLoadFinished called for mismatched account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2351
    :cond_1
    :goto_0
    return-void

    .line 2349
    :cond_2
    if-nez p2, :cond_3

    .line 2350
    const-string v0, "Babel"

    const-string v1, "onLoadFinished returned with null data"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2353
    :cond_3
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2354
    sget-object v0, Lcpa;->r:Lezv;

    const-string v1, "onLoadFinished"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2355
    iput-boolean v2, p0, Lcpa;->p:Z

    .line 2356
    invoke-virtual {p0, p2}, Lcpa;->a(Landroid/database/Cursor;)V

    .line 2358
    iget-object v0, p0, Lcpa;->o:Lcpj;

    invoke-virtual {v0}, Lcpj;->notifyDataSetChanged()V

    .line 2362
    invoke-virtual {p0}, Lcpa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2363
    invoke-virtual {p0}, Lcpa;->k()Z

    .line 2365
    :cond_4
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    iget-object v1, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->a(Landroid/view/View;)V

    .line 2366
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->aw()V

    .line 2368
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->i:Landroid/net/Uri;

    iget-object v1, p0, Lcpa;->w:Lhpu;

    .line 2370
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    .line 2369
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 2376
    check-cast p1, Ldhq;

    .line 2377
    invoke-virtual {p1}, Ldhq;->l()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2378
    const-wide/16 v0, 0x0

    .line 2381
    :cond_5
    const/4 v5, 0x4

    .line 2383
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2381
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2384
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2386
    iget-object v5, p0, Lcpa;->k:Landroid/content/Context;

    iget-object v6, p0, Lcpa;->w:Lhpu;

    .line 2387
    invoke-interface {v6}, Lhpu;->a()I

    move-result v6

    invoke-static {v5, v6}, Laal;->b(Landroid/content/Context;I)J

    move-result-wide v6

    .line 2388
    sget-boolean v5, Lcpa;->s:Z

    if-eqz v5, :cond_6

    .line 2389
    cmp-long v5, v0, v6

    if-lez v5, :cond_8

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x54

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "new invite timestamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; old "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; greater? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2395
    :cond_6
    cmp-long v2, v0, v6

    if-lez v2, :cond_7

    .line 2396
    iget-object v2, p0, Lcpa;->k:Landroid/content/Context;

    iget-object v3, p0, Lcpa;->w:Lhpu;

    .line 2397
    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    .line 2396
    invoke-static {v2, v3, v0, v1}, Laal;->a(Landroid/content/Context;IJ)V

    .line 2400
    :cond_7
    sget-object v0, Lcpa;->r:Lezv;

    invoke-virtual {v0, v4}, Lezv;->c(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {p0}, Lcpa;->j()V

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 2389
    goto :goto_1
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
    .line 410
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcpa;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 412
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    .line 414
    iget-object v1, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->showContent(Landroid/view/View;)V

    .line 417
    :cond_0
    return-void
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 567
    const/4 v0, 0x3

    iput v0, p0, Lcpa;->n:I

    .line 568
    iget-object v0, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 574
    iget-object v0, p0, Lcpa;->w:Lhpu;

    invoke-interface {v0}, Lhpu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iput-boolean v3, p0, Lcpa;->q:Z

    .line 576
    sget v0, Lcpa;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcpa;->j:I

    .line 577
    iget-object v1, p0, Lcpa;->w:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    .line 578
    new-instance v2, Lcpb;

    invoke-direct {v2, p0, v1, v0}, Lcpb;-><init>(Lcpa;II)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 604
    invoke-virtual {v2, v0}, Lcpb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 606
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcpa;->a(JZ)Z

    .line 608
    :cond_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 684
    invoke-virtual {p0}, Lcpa;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcpa;->l:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 688
    const/16 v2, 0x1b

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 694
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 695
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 696
    sget v0, Laen;->iS:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 706
    :goto_0
    return-object v0

    .line 697
    :cond_0
    if-ne v2, v5, :cond_1

    .line 698
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 700
    :cond_1
    if-ne v2, v4, :cond_2

    .line 701
    sget v0, Laen;->iU:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 703
    :cond_2
    sget v0, Laen;->iT:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
