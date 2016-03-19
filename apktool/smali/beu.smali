.class public final Lbeu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbev;

.field private b:Lbfd;

.field private c:Ljava/lang/String;

.field private final d:Leyp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leyp",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Leyp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leyp",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbeu;-><init>(Lbev;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lbev;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Leyp;

    invoke-direct {v0}, Leyp;-><init>()V

    iput-object v0, p0, Lbeu;->d:Leyp;

    .line 44
    new-instance v0, Leyp;

    invoke-direct {v0}, Leyp;-><init>()V

    iput-object v0, p0, Lbeu;->e:Leyp;

    .line 109
    iput-object p1, p0, Lbeu;->a:Lbev;

    .line 110
    return-void
.end method

.method public static a(Lbfd;Landroid/database/Cursor;)Lcyx;
    .locals 14

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 197
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 201
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 202
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 203
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 204
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 205
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 207
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 208
    const/4 v10, 0x0

    .line 209
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 213
    :cond_0
    invoke-static {}, Lczd;->values()[Lczd;

    move-result-object v0

    const/16 v13, 0x8

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    aget-object v0, v0, v13

    .line 216
    invoke-static/range {v0 .. v11}, Laal;->a(Lczd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Lcyx;

    move-result-object v1

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 232
    const-class v2, Lbil;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbil;

    invoke-virtual {v0, p0}, Lbil;->a(Lbfd;)Lbij;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v1, v12}, Lbij;->a(Lcyx;Ljava/lang/String;)V

    .line 234
    return-object v1
.end method

.method public static a(Lbfd;Ljava/lang/String;I)Lfe;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfd;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 126
    invoke-virtual {p0}, Lbfd;->b()Lczb;

    move-result-object v0

    iget-object v0, v0, Lczb;->b:Ljava/lang/String;

    .line 127
    sget v1, Lbew;->a:I

    if-ne p2, v1, :cond_0

    .line 128
    const-string v5, "(chat_id!=? OR chat_id IS NULL)  AND active=1"

    .line 129
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 130
    const-string v7, "first_name ASC"

    .line 133
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 135
    invoke-static {p0, v0}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Lbfd;Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v3

    .line 136
    new-instance v0, Ldhq;

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 137
    sget-object v4, Lbex;->a:[Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Ldhq;-><init>(Landroid/content/Context;Lbfd;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v6, v7

    move-object v5, v7

    goto :goto_0
.end method

.method public static a(Lbfd;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/google/android/apps/hangouts/content/EsProvider;->c(Lbfd;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 118
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 119
    return-void
.end method

.method public static b(Lbfd;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 192
    sget v0, Lbew;->a:I

    invoke-static {p0, p1, v0}, Lbeu;->b(Lbfd;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static b(Lbfd;Ljava/lang/String;I)I
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 167
    invoke-virtual {p0}, Lbfd;->b()Lczb;

    move-result-object v0

    iget-object v0, v0, Lczb;->b:Ljava/lang/String;

    .line 168
    sget v1, Lbew;->a:I

    if-ne p2, v1, :cond_4

    .line 169
    const-string v3, "(chat_id!=? OR chat_id IS NULL)  AND active=1"

    .line 170
    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v7

    .line 172
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/apps/hangouts/content/EsProvider;->c(Lbfd;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3036
    :try_start_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "count(*) as count"

    aput-object v8, v2, v5

    const/4 v5, 0x0

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 183
    if-eqz v6, :cond_0

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_0
    :goto_1
    return v0

    .line 183
    :cond_1
    if-eqz v6, :cond_2

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 187
    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v4, v6

    move-object v3, v6

    goto :goto_0
.end method

.method public static c(Lbfd;Ljava/lang/String;)Lbeu;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 239
    new-instance v6, Lbeu;

    invoke-direct {v6}, Lbeu;-><init>()V

    .line 240
    invoke-virtual {v6, p0, p1}, Lbeu;->d(Lbfd;Ljava/lang/String;)V

    .line 241
    sget v0, Lbew;->a:I

    .line 4271
    iget-object v1, v6, Lbeu;->b:Lbfd;

    iget-object v2, v6, Lbeu;->c:Ljava/lang/String;

    .line 5151
    invoke-virtual {v1}, Lbfd;->b()Lczb;

    move-result-object v3

    iget-object v7, v3, Lczb;->b:Ljava/lang/String;

    .line 5152
    sget v3, Lbew;->a:I

    if-ne v0, v3, :cond_1

    .line 5153
    const-string v3, "(chat_id!=? OR chat_id IS NULL)  AND active=1"

    .line 5154
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v4, v0

    .line 5155
    const-string v5, "first_name ASC"

    .line 5157
    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/apps/hangouts/content/EsProvider;->c(Lbfd;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 5159
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lbex;->a:[Ljava/lang/String;

    .line 5160
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {v6, v0}, Lbeu;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_0
    return-object v6

    .line 246
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move-object v4, v5

    move-object v3, v5

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lbeu;->a:Lbev;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lbeu;->a:Lbev;

    invoke-virtual {v0}, Lbev;->a()V

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lfe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lbeu;->b:Lbfd;

    iget-object v1, p0, Lbeu;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbeu;->a(Lbfd;Ljava/lang/String;I)Lfe;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lbeu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 279
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0}, Leyp;->clear()V

    .line 280
    iget-object v0, p0, Lbeu;->e:Leyp;

    invoke-virtual {v0}, Leyp;->clear()V

    .line 281
    if-eqz p1, :cond_2

    .line 282
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    :cond_0
    iget-object v0, p0, Lbeu;->b:Lbfd;

    invoke-static {v0, p1}, Lbeu;->a(Lbfd;Landroid/database/Cursor;)Lcyx;

    move-result-object v2

    .line 285
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 286
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v2, Lcyx;->b:Lczb;

    invoke-virtual {p0, v0}, Lbeu;->c(Lczb;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lbeu;->e:Leyp;

    iget-object v3, v2, Lcyx;->b:Lczb;

    invoke-virtual {v0, v3, v2}, Leyp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_1
    iget-object v0, p0, Lbeu;->d:Leyp;

    iget-object v3, v2, Lcyx;->b:Lczb;

    invoke-virtual {v0, v3, v2}, Leyp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :cond_2
    invoke-direct {p0}, Lbeu;->h()V

    .line 295
    return-void

    .line 285
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lczb;)Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0, p1}, Leyp;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lczb;)Lcyx;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0, p1}, Leyp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0}, Leyp;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lbeu;->e:Leyp;

    invoke-virtual {v0}, Leyp;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c(Lczb;)Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lbeu;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->b()Lczb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lczb;->a(Lczb;)Z

    move-result v0

    return v0
.end method

.method public d(Lczb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0, p1}, Leyp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 355
    if-eqz v0, :cond_0

    .line 356
    iget-object v0, v0, Lcyx;->h:Ljava/lang/String;

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lbfd;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lbeu;->b:Lbfd;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lbeu;->c:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    iput-object p1, p0, Lbeu;->b:Lbfd;

    .line 263
    iput-object p2, p0, Lbeu;->c:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0}, Leyp;->clear()V

    .line 265
    iget-object v0, p0, Lbeu;->e:Leyp;

    invoke-virtual {v0}, Leyp;->clear()V

    .line 266
    invoke-direct {p0}, Lbeu;->h()V

    .line 268
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0}, Leyp;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0}, Leyp;->size()I

    move-result v0

    return v0
.end method

.method public e(Lczb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0, p1}, Leyp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0}, Leyp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbeu;->d:Leyp;

    invoke-virtual {v1}, Leyp;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public g()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v0, p0, Lbeu;->d:Leyp;

    invoke-virtual {v0}, Leyp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lczb;

    invoke-virtual {p0, v1}, Lbeu;->c(Lczb;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    iget v0, v0, Lcyx;->D:I

    sget v1, Lcyz;->b:I

    if-eq v0, v1, :cond_2

    .line 346
    :cond_1
    :goto_1
    return v3

    .line 342
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 343
    goto :goto_0

    .line 346
    :cond_3
    if-lez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1
.end method
