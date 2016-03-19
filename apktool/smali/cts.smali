.class public final Lcts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbec;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcts;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcts;->b:Landroid/database/Cursor;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lbdy;
    .locals 14

    .prologue
    .line 45
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v10, Lhq;

    invoke-direct {v10}, Lhq;-><init>()V

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 50
    const-string v1, "#DELIM1#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 51
    array-length v12, v11

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v12, :cond_4

    aget-object v0, v11, v7

    .line 52
    const-string v1, "#DELIM2#"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 53
    const/4 v0, 0x0

    aget-object v0, v4, v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 55
    const/4 v0, 0x6

    aget-object v2, v4, v0

    .line 56
    const/4 v0, 0x7

    aget-object v3, v4, v0

    .line 57
    const/16 v0, 0x8

    aget-object v5, v4, v0

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 60
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdx;

    .line 61
    if-nez v0, :cond_7

    .line 62
    new-instance v0, Lbdx;

    invoke-direct {v0, v2}, Lbdx;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    .line 66
    :goto_1
    if-eqz v6, :cond_1

    .line 67
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {v6, v3}, Lbdx;->a(Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {v6, v5}, Lbdx;->b(Ljava/lang/String;)V

    .line 74
    :cond_1
    if-nez v1, :cond_3

    .line 75
    const/4 v0, 0x4

    aget-object v0, v4, v0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    invoke-static {v0}, Lezc;->d(I)Z

    move-result v5

    .line 77
    new-instance v0, Lbee;

    const/4 v1, 0x3

    aget-object v1, v4, v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    const/4 v3, 0x2

    aget-object v3, v4, v3

    const/16 v13, 0xa

    aget-object v4, v4, v13

    invoke-direct/range {v0 .. v5}, Lbee;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    if-eqz v6, :cond_2

    .line 85
    invoke-virtual {v6, v0}, Lbdx;->a(Lbee;)V

    .line 51
    :cond_2
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 88
    new-instance v0, Lbdw;

    const/4 v1, 0x3

    aget-object v1, v4, v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-direct {v0, v1, v2}, Lbdw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    if-eqz v6, :cond_2

    .line 94
    invoke-virtual {v6, v0}, Lbdx;->a(Lbdw;)V

    goto :goto_2

    .line 100
    :cond_4
    new-instance v0, Lbeb;

    invoke-direct {v0}, Lbeb;-><init>()V

    const/4 v1, 0x5

    .line 101
    invoke-virtual {p0, v1}, Lcts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbeb;->b(Ljava/lang/String;)Lbeb;

    move-result-object v0

    const/16 v1, 0x8

    .line 103
    invoke-virtual {p0, v1}, Lcts;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lezc;->d(I)Z

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Lbeb;->b(Z)Lbeb;

    move-result-object v0

    const/16 v1, 0x9

    .line 105
    invoke-virtual {p0, v1}, Lcts;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lezc;->d(I)Z

    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Lbeb;->a(Z)Lbeb;

    move-result-object v0

    const/4 v1, 0x6

    .line 107
    invoke-virtual {p0, v1}, Lcts;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lezc;->d(I)Z

    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Lbeb;->c(Z)Lbeb;

    move-result-object v0

    const/4 v1, 0x4

    .line 108
    invoke-virtual {p0, v1}, Lcts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbeb;->a(Ljava/lang/String;)Lbeb;

    move-result-object v0

    .line 109
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbeb;->a(Ljava/util/Collection;)Lbeb;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v8}, Lbeb;->c(Ljava/util/Collection;)Lbeb;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v9}, Lbeb;->b(Ljava/util/Collection;)Lbeb;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcts;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-virtual {p0, v1}, Lcts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lbeb;->c(Ljava/lang/String;)Lbeb;

    .line 117
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcts;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 118
    const/4 v1, 0x2

    .line 119
    invoke-virtual {p0, v1}, Lcts;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lbeb;->d(Ljava/lang/String;)Lbeb;

    .line 122
    :cond_6
    invoke-virtual {v0}, Lbeb;->a()Lbea;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v6, v0

    goto/16 :goto_1

    :cond_8
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcts;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 223
    return-void
.end method

.method public deactivate()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 264
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public move(I)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 285
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 295
    return-void
.end method

.method public requery()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 305
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 290
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcts;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 300
    return-void
.end method
