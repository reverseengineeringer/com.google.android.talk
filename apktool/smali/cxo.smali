.class final Lcxo;
.super Lcya;
.source "SourceFile"


# static fields
.field private static final d:Z


# instance fields
.field final a:Lczb;

.field final b:Ljava/lang/String;

.field final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcxt;->b:Z

    sput-boolean v0, Lcxo;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Lcya;-><init>()V

    .line 55
    invoke-static {p1}, Lcxo;->a(Landroid/database/Cursor;)Lcwz;

    move-result-object v1

    iput-object v1, p0, Lcxo;->o:Lcwz;

    .line 56
    sget-object v1, Leku;->b:Leku;

    iput-object v1, p0, Lcxo;->p:Leku;

    .line 58
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcxo;->r:Ljava/lang/String;

    .line 59
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcxo;->r:Ljava/lang/String;

    iget-object v3, p0, Lcxo;->o:Lcwz;

    invoke-static {v1, v2, v3, p2}, Lcxo;->a(Ljava/lang/String;Ljava/lang/String;Lcwz;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcxo;->q:Ljava/lang/String;

    .line 61
    new-instance v1, Lczb;

    const/4 v2, 0x5

    .line 62
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    .line 63
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcxo;->a:Lczb;

    .line 64
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcxo;->b:Ljava/lang/String;

    .line 65
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcxo;->c:Z

    .line 66
    sget-boolean v0, Lcxo;->d:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "Invitation Line from "

    iget-object v1, p0, Lcxo;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/database/Cursor;)Lcwz;
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    .line 81
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v5, v0

    .line 86
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 87
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    new-instance v1, Lcwz;

    .line 91
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x4

    .line 93
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v1 .. v13}, Lcwz;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZILjava/lang/String;IJ)V

    return-object v1
.end method

.method static b(I)Lcwz;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2036
    :try_start_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 149
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 3036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 150
    const-class v2, Lhpz;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpz;

    .line 151
    invoke-interface {v1, p0}, Lhpz;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v0, p0}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v6

    .line 4036
    :cond_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 155
    invoke-static {v0, p0}, Lbff;->d(Landroid/content/Context;I)Lczb;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 159
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, v0, Lczb;->b:Ljava/lang/String;

    aput-object v0, v4, v1
    :try_end_0
    .catch Lhqd; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->i:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcxp;->a:[Ljava/lang/String;

    const-string v3, "inviter_chat_id!=? AND notification_level!=10 AND is_pending_leave!=1 AND sort_timestamp>chat_watermark AND inviter_first_name IS NOT NULL"

    const-string v5, "sort_timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_8

    .line 171
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    :goto_1
    new-instance v2, Lcxo;

    invoke-direct {v2, v1, p0}, Lcxo;-><init>(Landroid/database/Cursor;I)V

    .line 180
    iget-object v0, v2, Lcxo;->r:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcxo;->q:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 181
    if-nez v6, :cond_4

    .line 182
    invoke-static {v1}, Lcxo;->a(Landroid/database/Cursor;)Lcwz;

    move-result-object v0

    .line 185
    :goto_2
    iget-object v3, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v2, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 191
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 193
    :cond_2
    if-eqz v0, :cond_3

    .line 194
    iget-object v2, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lcwz;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_3
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_5
    move-object v6, v0

    .line 202
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_2

    :cond_5
    move-object v0, v6

    goto :goto_3

    :cond_6
    move-object v6, v0

    goto :goto_1

    :cond_7
    move-object v0, v6

    goto :goto_4

    :cond_8
    move-object v0, v6

    goto :goto_5
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 39
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 40
    invoke-interface {v0, p1}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcxo;->o:Lcwz;

    iget-object v1, v1, Lcwz;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbeu;->b(Lbfd;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
