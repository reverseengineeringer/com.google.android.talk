.class final Leoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leod;


# instance fields
.field private a:Landroid/database/Cursor;

.field private final b:Lbfz;


# direct methods
.method public constructor <init>(Lbfz;JJ)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x3e8

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Leoe;->b:Lbfz;

    .line 257
    :try_start_0
    iget-object v0, p0, Leoe;->b:Lbfz;

    invoke-virtual {v0}, Lbfz;->e()Lbha;

    move-result-object v6

    const-string v7, "messages"

    .line 1162
    sget-object v8, Leog;->a:[Ljava/lang/String;

    .line 2069
    sget-object v0, Leny;->d:Ljava/lang/String;

    .line 261
    const-string v1, "timestamp"

    mul-long v2, p2, v4

    mul-long/2addr v4, p4

    .line 260
    invoke-static/range {v0 .. v5}, Leny;->a(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "timestamp DESC"

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    .line 257
    invoke-virtual/range {v0 .. v5}, Lbha;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Leoe;->a:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string v1, "Babel_SMS"

    iget-object v2, p0, Leoe;->b:Lbfz;

    invoke-virtual {v2}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SmsSyncManager A#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": failed to query local sms/mms "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    throw v0
.end method


# virtual methods
.method public a()Lems;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Leoe;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leoe;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v6, p0, Leoe;->a:Landroid/database/Cursor;

    .line 2192
    if-nez v6, :cond_1

    .line 2193
    :cond_0
    :goto_0
    return-object v0

    .line 2195
    :cond_1
    new-instance v0, Leof;

    const/4 v1, 0x0

    .line 2196
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    .line 2197
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    .line 2199
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3069
    invoke-static {v4}, Leny;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4069
    invoke-static {v4}, Leny;->a(Landroid/net/Uri;)J

    move-result-wide v4

    .line 2198
    const/4 v7, 0x1

    .line 2200
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Leof;-><init>(JIJJ)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Leoe;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Leoe;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Leoe;->a:Landroid/database/Cursor;

    .line 293
    :cond_0
    return-void
.end method
