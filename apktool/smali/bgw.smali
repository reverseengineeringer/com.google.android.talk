.class public final Lbgw;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field static final a:Z

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbgw;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field private g:Z

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    sget-object v0, Lezi;->d:Limx;

    sput-boolean v2, Lbgw;->a:Z

    .line 95
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    sput-object v0, Lbgw;->c:[Ljava/lang/String;

    .line 111
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lbgw;->d:Ljava/util/Map;

    .line 117
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lbgw;->e:[Ljava/lang/String;

    .line 118
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "circle_id"

    aput-object v1, v0, v2

    sput-object v0, Lbgw;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 210
    const-string v0, "babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".db"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x47e

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 211
    iput-object p1, p0, Lbgw;->b:Landroid/content/Context;

    .line 212
    iput p2, p0, Lbgw;->h:I

    .line 213
    const-string v0, "babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".db"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgw;->i:Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbgw;->setWriteAheadLoggingEnabled(Z)V

    .line 219
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4120
    if-eqz p1, :cond_1

    .line 4121
    :try_start_0
    const-string v1, "participants"

    sget-object v2, Lbgw;->e:[Ljava/lang/String;

    const-string v3, "gaia_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 4122
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4177
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4178
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 4181
    if-eqz v1, :cond_0

    .line 4182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4211
    :cond_0
    :goto_1
    return v0

    .line 4130
    :cond_1
    if-eqz p2, :cond_2

    .line 4131
    :try_start_2
    const-string v1, "participants"

    sget-object v2, Lbgw;->e:[Ljava/lang/String;

    const-string v3, "chat_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 4132
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 4140
    :cond_2
    if-eqz p3, :cond_3

    .line 4141
    const-string v1, "participants"

    sget-object v2, Lbgw;->e:[Ljava/lang/String;

    const-string v3, "phone_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 4142
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 4150
    :cond_3
    if-eqz p4, :cond_4

    .line 4151
    const-string v1, "participants"

    sget-object v2, Lbgw;->e:[Ljava/lang/String;

    const-string v3, "circle_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 4152
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 4160
    :cond_4
    if-eqz p5, :cond_5

    .line 4161
    const-string v1, "participants"

    sget-object v2, Lbgw;->e:[Ljava/lang/String;

    const-string v3, "( chat_id=? AND fallback_name=? )"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p5, v4, v0

    const/4 v0, 0x1

    aput-object p5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 4162
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 4182
    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .line 4181
    :cond_6
    if-eqz v1, :cond_7

    .line 4182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4186
    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4187
    if-eqz p2, :cond_8

    .line 4188
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4190
    :cond_8
    if-eqz p1, :cond_9

    .line 4191
    const-string v1, "gaia_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4193
    :cond_9
    if-eqz p3, :cond_a

    .line 4194
    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4196
    :cond_a
    if-eqz p4, :cond_b

    .line 4197
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    :cond_b
    if-eqz p5, :cond_c

    .line 4200
    const-string v1, "fallback_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    if-nez p2, :cond_c

    if-nez p1, :cond_c

    if-nez p3, :cond_c

    if-nez p4, :cond_c

    .line 4203
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    :cond_c
    if-nez p1, :cond_d

    .line 4208
    const-string v1, "batch_gebi_tag"

    const-string v2, "blocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    :cond_d
    const-string v1, "participants"

    invoke-virtual {p0, v1, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    goto/16 :goto_1

    .line 4181
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_e

    .line 4182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    .line 4181
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)Lbgw;
    .locals 5

    .prologue
    .line 162
    invoke-static {}, Laal;->x()V

    .line 168
    :try_start_0
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;
    :try_end_0
    .catch Lhqd; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    sget-object v2, Lbgw;->d:Ljava/util/Map;

    monitor-enter v2

    .line 173
    :try_start_1
    sget-object v0, Lbgw;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgw;

    .line 174
    if-nez v0, :cond_1

    .line 183
    const-string v0, "sms_only"

    invoke-interface {v1, v0}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6133
    invoke-interface {v1}, Lhqb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6134
    const-string v0, "Babel"

    const-string v3, "account_name"

    .line 6136
    invoke-interface {v1, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not logged in"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 6134
    invoke-static {v0, v1, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6137
    new-instance v0, Lbgz;

    invoke-direct {v0}, Lbgz;-><init>()V

    throw v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lbgz;

    invoke-direct {v1, v0}, Lbgz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_0
    :try_start_2
    new-instance v0, Lbgw;

    invoke-direct {v0, p0, p1}, Lbgw;-><init>(Landroid/content/Context;I)V

    .line 187
    sget-object v1, Lbgw;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lczb;
    .locals 5

    .prologue
    .line 4223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4224
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4226
    if-ltz v0, :cond_1

    .line 4227
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4230
    :goto_0
    const/4 v1, 0x5

    .line 4234
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    .line 4232
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4231
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4235
    invoke-static {p0, v0}, Lbff;->a(Landroid/content/Context;I)Lczb;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4242
    return-object v0

    .line 4236
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 4238
    const-string v3, "Babel"

    const-string v4, "unable to parse database file name to determine index: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "unable to parse database file name to determine index"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4238
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lczb;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lczb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4589
    const-string v0, "participant_ids"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4590
    const-string v1, "participants"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4591
    const-string v2, "1on1_participant_first_name"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 4592
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    instance-of v2, v1, Leyp;

    if-eqz v2, :cond_3

    .line 4596
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 4597
    check-cast v6, Ljava/util/List;

    move-object v7, v1

    .line 4598
    check-cast v7, Leyp;

    .line 4599
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4600
    instance-of v1, v0, Lczb;

    if-eqz v1, :cond_0

    .line 4601
    check-cast v0, Lczb;

    .line 4602
    invoke-virtual {v7, v0}, Leyp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4603
    if-eqz v5, :cond_0

    instance-of v1, v5, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4604
    iget-object v1, v0, Lczb;->a:Ljava/lang/String;

    iget-object v2, v0, Lczb;->b:Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    .line 4605
    invoke-static/range {v0 .. v5}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4613
    if-ltz v0, :cond_0

    .line 4614
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4615
    const/16 v1, 0x7c

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4617
    :cond_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4625
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v8, :cond_4

    instance-of v0, v8, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4628
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4629
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4630
    instance-of v1, v0, Lczb;

    if-eqz v1, :cond_4

    check-cast v0, Lczb;

    .line 4631
    invoke-virtual {p1, v0}, Lczb;->a(Lczb;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v7, v8

    .line 4632
    check-cast v7, Ljava/lang/String;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v2 .. v7}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4634
    if-ltz v1, :cond_4

    .line 4635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4640
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 4641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4644
    :cond_3
    return-object v3

    :cond_4
    move-object v0, v9

    goto :goto_1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x7c

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 4513
    const-string v0, "participant_ids"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4514
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 4515
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4516
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4518
    if-eqz v0, :cond_b

    instance-of v1, v0, Ldtw;

    if-eqz v1, :cond_b

    .line 4519
    check-cast v0, Ldtw;

    .line 4520
    iget-object v1, v0, Ldtw;->a:Ljava/lang/String;

    iget-object v2, v0, Ldtw;->b:Ljava/lang/String;

    iget-object v3, v0, Ldtw;->d:Ljava/lang/String;

    iget-object v4, v0, Ldtw;->c:Ljava/lang/String;

    iget-object v5, v0, Ldtw;->e:Ljava/lang/String;

    move-object v0, p0

    .line 4521
    invoke-static/range {v0 .. v5}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4529
    :goto_1
    if-ltz v0, :cond_0

    .line 4530
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4531
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4533
    :cond_1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4536
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 4537
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 4565
    :cond_3
    :goto_3
    return-object v6

    .line 4540
    :cond_4
    const-string v0, "participants"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4541
    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 4542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4543
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4545
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 4546
    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    .line 4547
    invoke-static/range {v0 .. v5}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4553
    :goto_5
    if-ltz v0, :cond_5

    .line 4554
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 4555
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4557
    :cond_6
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4548
    :cond_7
    instance-of v0, v5, Lczb;

    if-eqz v0, :cond_9

    .line 4549
    check-cast v5, Lczb;

    .line 4550
    iget-object v1, v5, Lczb;->a:Ljava/lang/String;

    iget-object v2, v5, Lczb;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    .line 4551
    invoke-static/range {v0 .. v5}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 4560
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 4561
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    move v0, v7

    goto :goto_5

    :cond_a
    move-object v0, v6

    goto :goto_2

    :cond_b
    move v0, v7

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4033
    const/4 v0, 0x0

    .line 4035
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4036
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4037
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4038
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 4039
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4043
    :goto_0
    return-object v0

    .line 4040
    :catch_0
    move-exception v1

    .line 4041
    const-string v2, "Babel"

    const-string v3, "got exception serializing strings array"

    invoke-static {v2, v3, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4011
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4012
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 4013
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4014
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4017
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4026
    :goto_0
    return-object v0

    .line 4018
    :catch_0
    move-exception v0

    .line 4019
    :try_start_2
    const-string v2, "Babel"

    const-string v3, "error decoding"

    invoke-static {v2, v3, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 4023
    :catch_1
    move-exception v0

    .line 4024
    const-string v2, "Babel"

    const-string v3, "decode object failure"

    invoke-static {v2, v3, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 4026
    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3891
    const-string v1, "conversations"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "conversation_id"

    aput-object v0, v2, v4

    const-string v0, "generated_name"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 3892
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3901
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3902
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3903
    const-string v2, "^\\+?[0-9]+$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3904
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3905
    const-string v3, "generated_name"

    .line 3906
    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3905
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    const-string v0, "conversations"

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3911
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3907
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3915
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 3916
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 3915
    :cond_2
    if-eqz v1, :cond_3

    .line 3916
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3919
    :cond_3
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3981
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6991
    const-string v0, "alter table conversations rename to temp"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6992
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6993
    const-string v0, "insert into conversations("

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from temp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7002
    const-string v0, "drop table temp"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3986
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3987
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 4060
    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 4061
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    .line 4062
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    .line 4063
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 4071
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4072
    const/4 v0, 0x1

    .line 4073
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbgw;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 4074
    if-eqz v2, :cond_0

    .line 4077
    const-string v0, "type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4078
    if-eqz v0, :cond_0

    .line 7043
    const/4 v3, 0x0

    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 4085
    add-int/lit8 v0, v0, 0x1

    .line 4086
    const-string v3, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4087
    invoke-static {v2}, Lbgw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4089
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v0

    .line 4091
    invoke-virtual {p0, p2, v9, p4, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4094
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 4095
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 4094
    :cond_2
    if-eqz v1, :cond_3

    .line 4095
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4098
    :cond_3
    return-void

    .line 4094
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 194
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 199
    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    invoke-interface {v0}, Lhqb;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 198
    :goto_0
    invoke-static {v0}, Laen;->b(Z)V

    .line 201
    const-string v0, "babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".db"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "Babel"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    sget-object v1, Lbgw;->d:Ljava/util/Map;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Lbgw;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit v1

    return-void

    :cond_1
    move v0, v1

    .line 200
    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3926
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 3928
    const-string v0, "dnd_expiration"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3930
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3931
    invoke-static {v2}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3932
    invoke-static {v5}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3933
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3934
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3936
    const-string v0, "last_invite_seen_timestamp"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3938
    const-string v0, "last_suggested_contacts_time"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3939
    const-string v0, "sms_last_full_sync_time_millis"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3940
    const-string v0, "refresh_participants_time"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3941
    const-string v0, "last_warm_sync_localtime"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3942
    const-string v0, "second_peak_scroll_time"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3943
    const-string v0, "second_peak_scroll_to_conversation_timestamp"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3944
    const-string v0, "sms_last_sync_time_millis"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3945
    const-string v0, "last_successful_sync_time"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3946
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 3949
    const-string v0, "hash_pinned"

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3950
    const-string v0, "hash_favorites"

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3951
    const-string v0, "hash_people_you_hangout_with"

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3952
    const-string v0, "hash_other_people_on_hangout"

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3953
    const-string v0, "hash_dismissed_contacts"

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3955
    const-string v1, "realtimechat_metadata"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v2, v4

    const-string v0, "value"

    aput-object v0, v2, v5

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 3956
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3958
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget v2, p0, Lbgw;->h:I

    invoke-interface {v0, v2}, Lhpz;->b(I)Lhqc;

    move-result-object v2

    .line 3960
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3961
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3962
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3963
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3964
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lhqc;->b(Ljava/lang/String;J)Lhqc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3973
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3965
    :cond_0
    :try_start_1
    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3966
    invoke-virtual {v2, v0, v3}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    goto :goto_0

    .line 3968
    :cond_1
    const-string v3, "Babel"

    const-string v4, "Dropping metadata key "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3971
    :cond_3
    invoke-virtual {v2}, Lhqc;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3973
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3975
    const-string v0, "drop table if exists realtimechat_metadata;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3976
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .prologue
    .line 4256
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "text"

    aput-object v1, v2, v0

    .line 4295
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lbgw;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lczb;

    move-result-object v9

    .line 4298
    const/4 v8, 0x0

    .line 4300
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 4301
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    .line 4302
    const-string v1, "messages"

    const-string v0, "( type != "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lemd;->b:Lemd;

    .line 4309
    invoke-virtual {v3}, Lemd;->ordinal()I

    move-result v3

    const-string v4, "type"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lemd;->c:Lemd;

    .line 4313
    invoke-virtual {v5}, Lemd;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x21

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v7, v12

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 4303
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    .line 4319
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4320
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 4321
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 4323
    const/4 v2, 0x2

    .line 4324
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbgw;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 4325
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 4326
    :cond_1
    const-string v2, "No system message parameters for a membership change event"

    sget-object v3, Lemd;->e:Lemd;

    invoke-static {v2, v0, v3}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4393
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4394
    const-string v0, "text"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4395
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    .line 4396
    const-string v0, "messages"

    const-string v2, "_id=?"

    .line 4397
    invoke-virtual {p1, v0, v10, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4398
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 4399
    const-string v0, "messages"

    const-string v2, "_id=?"

    invoke-virtual {p1, v0, v10, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4404
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 4405
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 4331
    :cond_4
    const/4 v2, 0x0

    .line 4333
    :try_start_2
    sget-object v3, Lbgy;->a:[I

    invoke-virtual {v0}, Lemd;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4336
    :pswitch_1
    const-string v0, "new_name"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4338
    if-eqz v0, :cond_2

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4339
    check-cast v0, Ljava/lang/String;

    .line 4340
    const-string v2, "new_conversation_name"

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4346
    :pswitch_2
    sget-object v3, Lemd;->m:Lemd;

    .line 4347
    const-string v0, "type"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4348
    if-eqz v0, :cond_10

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_10

    .line 4349
    check-cast v0, Ljava/lang/Integer;

    .line 8043
    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 4350
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 4352
    sget-object v2, Lemd;->l:Lemd;

    .line 4354
    :goto_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    .line 4357
    :goto_4
    const-string v3, "type"

    invoke-virtual {v2}, Lemd;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4364
    :goto_5
    invoke-static {p1, v4, v0}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 4365
    if-eqz v0, :cond_2

    .line 4366
    const-string v2, "participant_keys"

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4353
    :cond_5
    sget-object v2, Lemd;->m:Lemd;

    goto :goto_3

    .line 4354
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 4380
    :pswitch_3
    invoke-static {p1, v9, v4}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Lczb;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4381
    if-eqz v0, :cond_2

    .line 4382
    const-string v2, "participant_keys"

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 4404
    :cond_7
    if-eqz v1, :cond_8

    .line 4405
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4410
    :cond_8
    const/4 v1, 0x0

    .line 4413
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4414
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 4415
    const-string v3, "SELECT conversations._id, conversations.snippet_type, messages.author_chat_id, messages.author_gaia_id, messages.new_conversation_name, messages.participant_keys FROM conversations LEFT JOIN messages ON ( conversations.snippet_message_row_id = messages._id ) WHERE ( conversations.snippet_type = 4 OR conversations.snippet_type = 5 )"

    .line 4443
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4444
    :cond_9
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4445
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 4447
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4448
    packed-switch v3, :pswitch_data_1

    .line 4466
    :cond_a
    :goto_7
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4467
    if-eqz v3, :cond_b

    .line 4468
    const-string v4, "snippet_author_chat_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    :cond_b
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4471
    if-eqz v3, :cond_c

    .line 4472
    const-string v4, "snippet_author_gaia_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4475
    :cond_c
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 4476
    const-string v3, "snippet_text"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4477
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4478
    const-string v3, "conversations"

    const-string v4, "_id=?"

    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 4483
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_d

    .line 4484
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    .line 4451
    :pswitch_4
    const/4 v3, 0x4

    :try_start_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4452
    if-eqz v3, :cond_a

    .line 4453
    const-string v4, "snippet_new_conversation_name"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 4459
    :pswitch_5
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4460
    if-eqz v3, :cond_a

    .line 4461
    const-string v4, "snippet_participant_keys"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 4483
    :cond_e
    if-eqz v1, :cond_f

    .line 4484
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4487
    :cond_f
    return-void

    .line 4404
    :catchall_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_2

    :pswitch_6
    move v0, v2

    goto/16 :goto_5

    :cond_10
    move v0, v2

    move-object v2, v3

    goto/16 :goto_4

    .line 4333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 4448
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    .prologue
    .line 4746
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "conversation_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "participant_keys"

    aput-object v2, v3, v1

    .line 4752
    const/4 v9, 0x0

    .line 4754
    :try_start_0
    const-string v2, "messages"

    const-string v4, "participant_keys IS NOT NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 4755
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v11

    .line 4763
    :cond_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4764
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4765
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4766
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x7c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4767
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 4768
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8652
    const/4 v12, 0x0

    .line 8653
    const/4 v10, 0x0

    .line 8655
    :try_start_2
    const-string v2, "participants"

    sget-object v3, Lbgw;->f:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 8656
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 8664
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 8665
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-result-object v1

    if-eqz v1, :cond_e

    .line 8666
    const/4 v1, 0x1

    move v13, v1

    .line 8670
    :goto_1
    if-eqz v2, :cond_2

    .line 8671
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8675
    :cond_2
    const/4 v12, 0x0

    .line 8676
    const/4 v10, 0x0

    .line 8678
    :try_start_5
    const-string v2, "conversation_participants"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "participant_row_id=? AND conversation_id=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v5, v1

    const/4 v1, 0x1

    aput-object v14, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 8679
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 8690
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result v1

    if-eqz v1, :cond_d

    .line 8691
    const/4 v1, 0x1

    .line 8694
    :goto_2
    if-eqz v2, :cond_3

    .line 8695
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 8699
    :cond_3
    if-nez v1, :cond_1

    .line 8700
    const/4 v10, 0x0

    .line 8701
    const/4 v12, 0x0

    .line 8704
    :try_start_8
    const-string v2, "conversation_participants"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "MAX(sequence)"

    aput-object v4, v3, v1

    const-string v4, "conversation_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 8705
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v2

    .line 8713
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8714
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result v1

    .line 8717
    :goto_3
    if-eqz v2, :cond_4

    .line 8718
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 8722
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 8723
    const-string v3, "conversation_id"

    invoke-virtual {v2, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8724
    if-eqz v13, :cond_5

    .line 8725
    const-string v3, "participant_type"

    sget-object v4, Lczd;->c:Lczd;

    .line 8727
    invoke-virtual {v4}, Lczd;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8725
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8729
    :cond_5
    const-string v3, "participant_row_id"

    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8730
    const-string v3, "sequence"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8731
    const-string v1, "active"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8733
    const-string v1, "conversation_participants"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 4773
    :catchall_0
    move-exception v1

    move-object v2, v11

    :goto_4
    if-eqz v2, :cond_6

    .line 4774
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 8670
    :catchall_1
    move-exception v1

    move-object v2, v10

    :goto_5
    if-eqz v2, :cond_7

    .line 8671
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 8694
    :catchall_2
    move-exception v1

    move-object v2, v10

    :goto_6
    if-eqz v2, :cond_8

    .line 8695
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 8717
    :catchall_3
    move-exception v1

    move-object v2, v10

    :goto_7
    if-eqz v2, :cond_9

    .line 8718
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4773
    :cond_a
    if-eqz v11, :cond_b

    .line 4774
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4777
    :cond_b
    return-void

    .line 4773
    :catchall_4
    move-exception v1

    move-object v2, v9

    goto :goto_4

    .line 8717
    :catchall_5
    move-exception v1

    goto :goto_7

    .line 8694
    :catchall_6
    move-exception v1

    goto :goto_6

    .line 8670
    :catchall_7
    move-exception v1

    goto :goto_5

    :cond_c
    move v1, v12

    goto :goto_3

    :cond_d
    move v1, v12

    goto/16 :goto_2

    :cond_e
    move v13, v12

    goto/16 :goto_1
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x0

    .line 4780
    invoke-static {}, Lcom/google/android/apps/hangouts/content/EsProvider;->c()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v3, v2, v0

    .line 4781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "drop view if exists "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4782
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4784
    :cond_0
    invoke-static {}, Lctr;->d()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_1
    if-gtz v0, :cond_1

    aget-object v3, v2, v1

    .line 4785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "drop view if exists "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4786
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4784
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4788
    :cond_1
    invoke-static {}, Lcom/google/android/apps/hangouts/content/EsProvider;->d()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_2

    aget-object v3, v2, v0

    .line 4789
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4788
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4791
    :cond_2
    invoke-static {}, Lctr;->c()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_3
    if-gtz v0, :cond_3

    aget-object v3, v2, v1

    .line 4792
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4791
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4794
    :cond_3
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v0, v8

    move v1, v9

    .line 8827
    :goto_0
    if-eqz v1, :cond_4

    add-int/lit8 v10, v0, 0x1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 8829
    const-string v1, "sqlite_master"

    sget-object v2, Lbgw;->c:[Ljava/lang/String;

    const-string v3, "type=\'table\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 8830
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 8831
    if-eqz v2, :cond_3

    move v1, v8

    .line 8834
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8835
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8838
    const-string v0, "android_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sqlite_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 8842
    :try_start_1
    const-string v0, "DROP TABLE IF EXISTS "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v9

    .line 8846
    goto :goto_1

    .line 8842
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 8844
    :catch_0
    move-exception v0

    .line 8845
    :try_start_2
    const-string v5, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v7, v11

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "unable to drop table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 8849
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 8850
    goto/16 :goto_0

    :cond_3
    move v0, v10

    move v1, v8

    .line 8852
    goto/16 :goto_0

    .line 4814
    :cond_4
    invoke-static {p1}, Lbgw;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4815
    invoke-static {p1}, Lbgw;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4818
    invoke-virtual {p0, p1}, Lbgw;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4819
    return-void
.end method

.method private static g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4859
    const-string v1, "sqlite_master"

    sget-object v2, Lbgw;->c:[Ljava/lang/String;

    const-string v3, "type=\'view\'"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 4860
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4861
    if-eqz v1, :cond_3

    .line 4864
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4865
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4867
    :try_start_1
    const-string v0, "DROP VIEW IF EXISTS "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4868
    :catch_0
    move-exception v0

    .line 4869
    :try_start_2
    const-string v3, "Babel"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4870
    const-string v3, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "unable to drop view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4875
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4867
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4875
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4878
    :cond_3
    return-void
.end method

.method private static h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4884
    const-string v1, "sqlite_master"

    sget-object v2, Lbgw;->c:[Ljava/lang/String;

    const-string v3, "type=\'index\'"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 4885
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4886
    if-eqz v1, :cond_3

    .line 4889
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4890
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4892
    :try_start_1
    const-string v0, "DROP INDEX IF EXISTS "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4893
    :catch_0
    move-exception v0

    .line 4894
    :try_start_2
    const-string v3, "Babel"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4895
    const-string v3, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "unable to drop index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4900
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4892
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4900
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4903
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lbha;
    .locals 2

    .prologue
    .line 5268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lbgw;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lbha;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lbha;
    .locals 2

    .prologue
    .line 5272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lbgw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v0, v1}, Lbha;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lbha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 5282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgw;->g:Z

    .line 5283
    return-void
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 5229
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbgw;->g:Z

    if-eqz v0, :cond_0

    .line 5230
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database deleted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5233
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 5239
    :goto_0
    monitor-exit p0

    return-object v0

    .line 5234
    :catch_0
    move-exception v0

    .line 5235
    :try_start_2
    const-string v1, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "[EsDatabaseHelper] getWritableDatabase threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5236
    instance-of v1, v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    if-eqz v1, :cond_1

    .line 5238
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    iget-object v1, p0, Lbgw;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 5239
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 5242
    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 5249
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbgw;->g:Z

    if-eqz v0, :cond_0

    .line 5250
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database deleted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5253
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 5259
    :goto_0
    monitor-exit p0

    return-object v0

    .line 5254
    :catch_0
    move-exception v0

    .line 5255
    :try_start_2
    const-string v1, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "[EsDatabaseHelper] getWritableDatabase threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5256
    instance-of v1, v0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    if-eqz v1, :cond_1

    .line 5258
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    iget-object v1, p0, Lbgw;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 5259
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 5262
    :cond_1
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 230
    invoke-static {}, Lcom/google/android/apps/hangouts/content/EsProvider;->a()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 231
    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v3, v2, v0

    .line 232
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lctr;->b()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    .line 236
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_1
    invoke-static {}, Lcom/google/android/apps/hangouts/content/EsProvider;->b()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 240
    :goto_2
    if-ge v0, v4, :cond_2

    aget-object v3, v2, v0

    .line 241
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    :cond_2
    invoke-static {}, Lcom/google/android/apps/hangouts/content/EsProvider;->d()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 245
    :goto_3
    const/4 v3, 0x7

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    .line 246
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 249
    :cond_3
    invoke-static {}, Lctr;->c()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_4
    if-gtz v0, :cond_4

    aget-object v3, v2, v1

    .line 250
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 253
    :cond_4
    invoke-static {}, Lcom/google/android/apps/hangouts/content/EsProvider;->e()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 254
    :goto_5
    if-gtz v0, :cond_5

    aget-object v3, v2, v1

    .line 255
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 258
    :cond_5
    new-instance v0, Lbgx;

    invoke-direct {v0, p0}, Lbgx;-><init>(Lbgw;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Downgrading from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-direct {p0, p1}, Lbgw;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 6279
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    const-string v1, "activity"

    .line 6280
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6281
    const-string v1, "Babel"

    const-string v2, "Clearing app data, service will be restarted!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6282
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    .line 275
    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10

    .prologue
    const/16 v9, 0x34

    const/4 v1, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2403
    const-string v0, "Babel"

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2404
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Upgrade database: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " --> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2422
    :cond_0
    const/16 v0, 0xf2

    .line 2423
    const-string v1, "hammerhead"

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2427
    const/16 v0, 0xea

    .line 2443
    :cond_1
    const/16 v1, 0x8a

    if-lt p2, v1, :cond_4

    const/16 v1, 0x8a

    if-le p2, v1, :cond_2

    if-lt p2, v0, :cond_4

    :cond_2
    const/16 v0, 0xdb

    if-le p2, v0, :cond_3

    const/16 v0, 0xe1

    if-lt p2, v0, :cond_4

    :cond_3
    const/16 v0, 0x192

    if-le p2, v0, :cond_5

    const/16 v0, 0x1ae

    if-ge p2, v0, :cond_5

    .line 2447
    :cond_4
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "upgrade from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not supported; recreating"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2448
    invoke-direct {p0, p1}, Lbgw;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3888
    :goto_0
    return-void

    .line 2465
    :cond_5
    sparse-switch p2, :sswitch_data_0

    .line 3847
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x34

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Must support upgrade from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3850
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3852
    :try_start_1
    const-string v0, "Babel"

    .line 3854
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Upgrade database failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3852
    invoke-static {v0, v4, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3858
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    const-class v4, Lfak;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfak;

    invoke-virtual {v0}, Lfak;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3869
    :cond_6
    :goto_1
    if-eqz v3, :cond_9

    .line 3870
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to upgrade from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3874
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbgw;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3877
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_database_upgrade_version"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3878
    throw v0

    .line 2469
    :sswitch_0
    :try_start_2
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6799
    const-string v0, "ALTER TABLE messages ADD COLUMN attachment_content_type TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2473
    const-string v0, "alter table participants rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2474
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2475
    const-string v0, "insert into participants(_id, participant_type, gaia_id, chat_id, circle_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked) select _id, participant_type, gaia_id, chat_id, circle_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2484
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2487
    const-string v0, "CREATE INDEX index_participants_chat_id ON participants(chat_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2489
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2493
    const-string v0, "update conversations set otr_status = otr_status + 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2504
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string v4, "text"

    aput-object v4, v0, v1

    const-string v1, "messages"

    const-string v4, "type="

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lemd;->e:Lemd;

    .line 2508
    invoke-virtual {v5}, Lemd;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id=?"

    .line 2504
    invoke-static {p1, v0, v1, v4, v5}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string v4, "snippet_text"

    aput-object v4, v0, v1

    const-string v1, "conversations"

    const-string v4, "snippet_type=4"

    const-string v5, "_id=?"

    invoke-static {p1, v0, v1, v4, v5}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    const-string v0, "update conversations set conversation_type = conversation_type - 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2547
    :sswitch_1
    const-string v0, "alter table messages add column transport_type INT NOT NULL DEFAULT(1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2561
    :sswitch_2
    const-string v0, "alter table messages add column external_ids TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2571
    :sswitch_3
    const-string v0, "alter table messages add column sms_timestamp_sent INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2577
    const-string v0, "alter table messages add column sms_priority INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2583
    const-string v0, "alter table messages add column sms_message_size INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2592
    :sswitch_4
    const-string v0, "alter table messages add column mms_subject TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2598
    const-string v0, "alter table messages add column sms_raw_sender TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2604
    const-string v0, "alter table messages add column sms_raw_recipients TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2622
    :sswitch_5
    const-string v0, "alter table conversations add column transport_type INT DEFAULT(1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2635
    :sswitch_6
    const-string v0, "alter table messages add column persisted INT DEFAULT(1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2644
    :sswitch_7
    const-string v0, "alter table conversations add column sms_service_center TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2652
    :sswitch_8
    const-string v0, "alter table messages add column sms_message_status INT DEFAULT(-1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2664
    :sswitch_9
    const-string v0, "alter table conversations add column is_temporary INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2673
    :sswitch_a
    const-string v0, "alter table messages add column location_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2675
    const-string v0, "alter table messages add column latitude DOUBLE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2681
    const-string v0, "alter table messages add column longitude DOUBLE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2687
    const-string v0, "alter table messages add column static_map_url TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2689
    const-string v0, "alter table messages add column target_map_url TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2698
    :sswitch_b
    const-string v0, "alter table messages add column sms_type INT DEFAULT(-1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2712
    const-string v0, "UPDATE messages SET sms_type=(CASE WHEN external_ids LIKE \'content://sms/%\' THEN 0 WHEN external_ids LIKE \'content://mms/%\' THEN 1 ELSE 2 END) WHERE transport_type=1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2737
    :sswitch_c
    const-string v0, "alter table conversations add column sms_thread_id INT DEFAULT(-1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2745
    :sswitch_d
    const-string v0, "alter table messages add column video_stream_url TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2768
    :sswitch_e
    const-string v0, "CREATE INDEX index_messages_conversation_id_timestamp ON messages(conversation_id, timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2769
    const-string v0, "CREATE INDEX index_conversation_participants_sequence ON conversation_participants(sequence)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2778
    :sswitch_f
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2779
    const-string v0, "alter table messages rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2780
    const-string v0, "CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, location_name TEXT, latitude DOUBLE, longitude DOUBLE, static_map_url TEXT, target_map_url TEXT, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), hidden_by INT, alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), video_stream_url TEXT, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2781
    const-string v0, "insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, location_name, latitude, longitude, static_map_url, target_map_url, notification_level, expiration_timestamp, notified_for_failure, hidden_by, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, location_name, latitude, longitude, static_map_url, target_map_url, notification_level, expiration_timestamp, notified_for_failure, hidden_by, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2790
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2793
    const-string v0, "CREATE INDEX index_messages_conversation_id_timestamp ON messages(conversation_id, timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2794
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2803
    :sswitch_10
    const-string v0, "CREATE TABLE mms_notification_inds (_id INTEGER PRIMARY KEY, content_location TEXT, transaction_id TEXT, from_address TEXT, message_size INT DEFAULT(0), expiry INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2807
    :sswitch_11
    const-string v0, "update messages set attachment_content_type = \'image/*\' where attachment_content_type isnull and (remote_url notnull or local_url notnull)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2834
    :sswitch_12
    const-string v0, "CREATE TABLE multipart_attachments (_id INTEGER PRIMARY KEY, message_id TEXT, conversation_id TEXT, url TEXT, content_type TEXT, width INT, height INT, FOREIGN KEY (message_id, conversation_id) REFERENCES messages(message_id, conversation_id) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2835
    const-string v0, "CREATE INDEX index_multipart_attachments_conversation_id_message_id ON multipart_attachments(conversation_id, message_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2836
    const-string v0, "DROP TABLE account_status;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2840
    :sswitch_13
    const-string v0, "alter table messages add column attachment_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2846
    const-string v0, "alter table messages add column attachment_target_url TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2852
    const-string v0, "UPDATE messages SET attachment_name = location_name, attachment_content_type = \'hangouts/location\', attachment_target_url = target_map_url, remote_url = static_map_url WHERE location_name IS NOT NULL OR static_map_url IS NOT NULL OR target_map_url IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2871
    const-string v0, "UPDATE messages SET location_name= NULL, target_map_url = NULL, static_map_url = NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2883
    :sswitch_14
    const-string v0, "alter table messages add column image_rotation INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2894
    :sswitch_15
    const-string v0, "UPDATE messages SET transport_type=(CASE WHEN transport_type=1 THEN 0 WHEN transport_type=2 THEN 1 WHEN transport_type=4 THEN 3 ELSE 0 END)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2915
    const-string v0, "UPDATE conversations SET transport_type=(CASE WHEN transport_type=1 THEN 0 WHEN transport_type=2 THEN 1 WHEN transport_type=4 THEN 3 ELSE 0 END)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2939
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2941
    const-string v0, "alter table conversations rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2942
    const-string v0, "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_status INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT, has_joined_hangout INT, last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), UNIQUE (conversation_id ));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2943
    const-string v0, "insert into conversations(_id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present, notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, sms_service_center, is_temporary, sms_thread_id) select _id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present, notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, sms_service_center, is_temporary, sms_thread_id from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2952
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2954
    const-string v0, "alter table messages rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2955
    const-string v0, "CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, location_name TEXT, latitude DOUBLE, longitude DOUBLE, static_map_url TEXT, target_map_url TEXT, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), video_stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2956
    const-string v0, "insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, width_pixels, height_pixels, local_url, stream_id, image_id, album_id, image_rotation, attachment_content_type, remote_url, attachment_name, attachment_target_url, location_name, static_map_url, target_map_url, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, width_pixels, height_pixels, local_url, stream_id, image_id, album_id, image_rotation, attachment_content_type, remote_url, attachment_name, attachment_target_url, location_name, static_map_url, target_map_url, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2965
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2967
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2972
    :sswitch_16
    const-string v0, "CREATE TABLE event_suggestions (_id INTEGER PRIMARY KEY, conversation_id TEXT, suggestion_id TEXT, timestamp INT, expiration_time_usec INT, type INT, gem_asset_url STRING, gem_horizontal_alignment INT, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE, UNIQUE (conversation_id,suggestion_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2973
    const-string v0, "CREATE INDEX index_event_suggestions_conversation_id_expiration_time_timestamp  ON event_suggestions(conversation_id, expiration_time_usec, timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2978
    :sswitch_17
    const-string v0, "CREATE INDEX index_participants_blocked ON participants(blocked)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2985
    :sswitch_18
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2988
    const-string v0, "alter table participants rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2989
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2990
    const-string v0, "insert into participants(_id, participant_type, gaia_id, chat_id, circle_id, phone_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked) select _id, participant_type, gaia_id, chat_id, circle_id, phone_id, first_name, full_name, fallback_name, profile_photo_url, batch_gebi_tag, blocked from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2999
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3002
    const-string v0, "CREATE INDEX index_participants_chat_id ON participants(chat_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3003
    const-string v0, "CREATE INDEX index_participants_blocked ON participants(blocked)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3005
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3011
    :sswitch_19
    const-string v0, "alter table messages add column new_conversation_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3017
    const-string v0, "alter table messages add column participant_keys TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3023
    const-string v0, "alter table conversations add column previous_latest_timestamp INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3029
    const-string v0, "alter table conversations add column snippet_new_conversation_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3035
    const-string v0, "alter table conversations add column snippet_participant_keys TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3043
    invoke-direct {p0, p1}, Lbgw;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3064
    :sswitch_1a
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3065
    const-string v0, "alter table messages rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3066
    const-string v0, "CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, latitude DOUBLE, longitude DOUBLE, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), video_stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), new_conversation_name TEXT, participant_keys TEXT, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3067
    const-string v0, "insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, video_stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3076
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3079
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3084
    :sswitch_1b
    const-string v0, "alter table messages add column transport_phone TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3091
    const-string v0, "alter table conversations add column default_transport_phone TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3100
    :sswitch_1c
    const-string v0, "_id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present,notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, snippet_new_conversation_name, snippet_participant_keys, previous_latest_timestamp, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, call_media_type, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, default_transport_phone, sms_service_center, is_temporary, sms_thread_id"

    const-string v1, "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_status INT, snippet_new_conversation_name TEXT, snippet_participant_keys TEXT, previous_latest_timestamp INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT DEFAULT(0), has_joined_hangout INT, last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), default_transport_phone TEXT, sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), UNIQUE (conversation_id ));"

    invoke-static {p1, v0, v1}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    const-string v0, "update conversations set call_media_type =  ( select case when conversations.call_media_type is null then 0 else conversations.call_media_type end );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3130
    :sswitch_1d
    invoke-static {p1}, Lbgw;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3134
    :sswitch_1e
    const-string v0, "CREATE TABLE transport_events (_id INTEGER PRIMARY KEY, upload_key TEXT, message_row_id INT, request_trace_id INT, event_id TEXT, notified INT, was_newest INT, past_watermark INT, dnd INT, in_focused_conversation INT, active_client_state INT, notification_level INT, local_timestamp INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3135
    const-string v0, "CREATE INDEX index_transport_events_upload_key ON transport_events(upload_key)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3142
    :sswitch_1f
    const-string v0, "alter table messages add column forwarded_mms_url TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3148
    const-string v0, "alter table messages add column forwarded_mms_count INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3164
    :sswitch_20
    const-string v0, "alter table messages add column attachment_description TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3170
    const-string v0, "alter table messages add column attachment_target_url_description TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3176
    const-string v0, "alter table messages add column attachment_target_url_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3190
    :sswitch_21
    const-string v0, "CREATE TABLE merge_keys (_id INTEGER PRIMARY KEY, conversation_id TEXT, merge_key TEXT, UNIQUE (conversation_id) ON CONFLICT REPLACE, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3202
    :sswitch_22
    const-string v0, "_id, conversation_id, conversation_type, latest_message_timestamp, latest_message_expiration_timestamp, metadata_present,notification_level, name, generated_name, snippet_type, snippet_text, snippet_image_url, snippet_author_gaia_id, snippet_author_chat_id, snippet_message_row_id, snippet_status, snippet_new_conversation_name, snippet_participant_keys, previous_latest_timestamp, status, view, inviter_gaia_id, inviter_chat_id, inviter_affinity, is_pending_leave, account_id, is_otr, packed_avatar_urls, self_avatar_url, self_watermark, chat_watermark, hangout_watermark, is_draft, sequence_number, has_joined_hangout, last_hangout_event_time, draft, otr_status, otr_toggle, last_otr_modification_time, continuation_token, continuation_event_timestamp, has_oldest_message, sort_timestamp, first_peak_scroll_time, first_peak_scroll_to_message_timestamp, second_peak_scroll_time, second_peak_scroll_to_message_timestamp, conversation_hash, disposition, has_persistent_events, transport_type, default_transport_phone, sms_service_center, is_temporary, sms_thread_id"

    const-string v1, "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_selector INT, snippet_status INT, snippet_new_conversation_name TEXT, snippet_participant_keys TEXT, previous_latest_timestamp INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT DEFAULT(0), has_joined_hangout INT, last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), default_transport_phone TEXT, sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), UNIQUE (conversation_id ));"

    invoke-static {p1, v0, v1}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    :sswitch_23
    sget-object v0, Lcom/google/android/apps/hangouts/content/EsProvider;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3215
    :sswitch_24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "INSERT INTO %s (%s, %s) SELECT %s, \'CONV:\'||%s FROM %s;"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "merge_keys"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "conversation_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "merge_key"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "conversation_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "conversation_id"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "conversations"

    aput-object v6, v4, v5

    .line 3216
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3225
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3252
    :sswitch_25
    const-string v0, "alter table conversations add column has_chat_notifications INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3258
    const-string v0, "alter table conversations add column has_video_notifications INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3264
    const-string v0, "update conversations SET has_chat_notifications= ( CASE WHEN latest_message_timestamp>chat_watermark THEN 1 ELSE 0 END);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3274
    const-string v0, "update conversations SET has_video_notifications= ( CASE WHEN latest_message_timestamp>hangout_watermark THEN 1 ELSE 0 END);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3285
    const-string v0, "CREATE INDEX index_conversations_chat_notifications ON conversations(has_chat_notifications)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3286
    const-string v0, "CREATE INDEX index_conversations_video_notifications ON conversations(has_video_notifications)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3292
    :sswitch_26
    const-string v0, "alter table event_suggestions add column event_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3302
    :sswitch_27
    const-string v0, "alter table transport_events add column client_generated_id INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3308
    const-string v0, "alter table transport_events add column event_type INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3314
    const-string v0, "alter table transport_events add column chat_action INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3324
    :sswitch_28
    const-string v0, "UPDATE conversations SET has_oldest_message=0 WHERE continuation_event_timestamp=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3336
    :sswitch_29
    const-string v0, "DROP INDEX IF EXISTS index_merge_keys_merge_key"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3337
    const-string v0, "DROP INDEX IF EXISTS index_merge_keys_merge_key_NEW"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3338
    const-string v0, "DROP INDEX IF EXISTS index_merge_keys_merge_conversation_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3339
    const-string v0, "CREATE INDEX index_merge_keys_merge_key_NEW ON merge_keys(merge_key)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3340
    const-string v0, "CREATE INDEX index_merge_keys_merge_conversation_id ON merge_keys(conversation_id); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3345
    :sswitch_2a
    const-string v0, "alter table conversations add column snippet_sms_type INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3352
    const-string v0, "UPDATE conversations SET snippet_sms_type = ( SELECT messages.sms_type FROM messages WHERE conversations.snippet_message_row_id = messages._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3377
    :sswitch_2b
    const-string v0, "CREATE TABLE dismissed_contacts (_id INTEGER PRIMARY KEY, chat_id TEXT, gaia_id TEXT, name TEXT, profile_photo_url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3378
    const-string v0, "CREATE INDEX index_dismissed_contacts_gaia_id ON dismissed_contacts(gaia_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3382
    :sswitch_2c
    const-string v0, "alter table messages add column sending_error INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3391
    :sswitch_2d
    const-string v0, "alter table conversations add column chat_ringtone_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3397
    const-string v0, "alter table conversations add column hangout_ringtone_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3408
    :sswitch_2e
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3409
    const-string v0, "alter table messages rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3410
    const-string v0, "CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, latitude DOUBLE, longitude DOUBLE, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), alert_status INT DEfAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), transport_phone TEXT, external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), new_conversation_name TEXT, participant_keys TEXT, forwarded_mms_url TEXT, forwarded_mms_count INT DEFAULT(0), attachment_description TEXT, attachment_target_url_description TEXT, attachment_target_url_name TEXT, sending_error INT DEFAULT(0), stream_expiration INT, voicemail_length INT DEFAULT (0), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3411
    const-string v0, "insert into messages(_id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, sending_error) select _id, message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, notification_level, expiration_timestamp, notified_for_failure, alert_status, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, sending_error from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3420
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3423
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3431
    :sswitch_2f
    const-string v0, "alter table conversations add column wearable_watermark INT DEFAULT(0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3442
    :sswitch_30
    const-string v0, "CREATE TABLE recent_calls (_id INTEGER PRIMARY KEY, normalized_number TEXT NOT NULL, phone_number TEXT, contact_id TEXT, call_timestamp INT, call_type INT, contact_type INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3443
    const-string v0, "CREATE INDEX index_recent_calls_sequence ON recent_calls(call_timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3446
    const-string v0, "alter table messages add column call_media_type INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3453
    const-string v0, "alter table conversations add column snippet_voicemail_duration INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3467
    :sswitch_31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3468
    const-string v1, "phone_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    const-string v1, "participants"

    const-string v4, "participant_type = ? and phone_id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lczd;->d:Lczd;

    .line 3476
    invoke-virtual {v7}, Lczd;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v5, v6

    .line 3469
    invoke-virtual {p1, v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3480
    :sswitch_32
    invoke-static {p1}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3485
    :sswitch_33
    const-string v0, "alter table transport_events add column event_reason INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3495
    :sswitch_34
    const-string v0, "CREATE TABLE sticker_albums (album_id TEXT NOT NULL, title TEXT, cover_photo_id TEXT, PRIMARY KEY (album_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3496
    const-string v0, "CREATE TABLE sticker_photos (photo_id TEXT NOT NULL, album_id TEXT NOT NULL, url TEXT NOT NULL, file_name TEXT, PRIMARY KEY (photo_id), FOREIGN KEY (album_id) REFERENCES sticker_albums(album_id) ON DELETE CASCADE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3501
    :sswitch_35
    const-string v0, "alter table recent_calls add column call_rate TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3508
    const-string v0, "alter table recent_calls add column is_free_call BOOLEAN;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3518
    :sswitch_36
    const-string v0, "update transport_events set notified=3 where notified=4"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3530
    :sswitch_37
    const-string v0, "CREATE TABLE presence (_id INTEGER PRIMARY KEY, gaia_id TEXT NOT NULL, reachable INT DEFAULT(0), reachable_time INT DEFAULT(0), available INT DEFAULT(0), available_time INT DEFAULT(0), status_message TEXT, status_message_time INT DEFAULT(0), call_type INT DEFAULT(0), call_type_time INT DEFAULT(0), device_status INT DEFAULT(0), device_status_time INT DEFAULT(0), last_seen INT DEFAULT(0), last_seen_time INT DEFAULT(0), UNIQUE (gaia_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3535
    :sswitch_38
    const-string v0, "alter table messages add column address TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3545
    :sswitch_39
    const-string v0, "drop table if exists transport_events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3546
    const-string v0, "drop index if exists index_transport_events_upload_key;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3552
    :sswitch_3a
    const-string v0, "alter table messages add column delete_after_read_timetamp INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3563
    :sswitch_3b
    const-string v0, "alter table event_suggestions add column matched_message_substring TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3573
    :sswitch_3c
    const-string v0, "update conversations set chat_watermark = wearable_watermark WHERE wearable_watermark > chat_watermark"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3582
    const-string v0, "_id,conversation_id,conversation_type,latest_message_timestamp,latest_message_expiration_timestamp,metadata_present,notification_level,name,generated_name,snippet_type,snippet_text,snippet_image_url,snippet_author_gaia_id,snippet_author_chat_id,snippet_message_row_id,snippet_selector,snippet_status,snippet_new_conversation_name,snippet_participant_keys,snippet_sms_type,previous_latest_timestamp,status,view,inviter_gaia_id,inviter_chat_id,inviter_affinity,is_pending_leave,account_id,is_otr,packed_avatar_urls,self_avatar_url,self_watermark,chat_watermark,hangout_watermark,is_draft,sequence_number,call_media_type,has_joined_hangout,has_chat_notifications,has_video_notifications,last_hangout_event_time,draft,otr_status,otr_toggle,last_otr_modification_time,continuation_token,continuation_event_timestamp,has_oldest_message,sort_timestamp,first_peak_scroll_time,first_peak_scroll_to_message_timestamp,second_peak_scroll_time,second_peak_scroll_to_message_timestamp,conversation_hash,disposition,has_persistent_events,transport_type,default_transport_phone,sms_service_center,is_temporary,sms_thread_id,chat_ringtone_uri,hangout_ringtone_uri,snippet_voicemail_duration"

    const-string v1, "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_selector INT, snippet_status INT, snippet_new_conversation_name TEXT, snippet_participant_keys TEXT, snippet_sms_type TEXT, previous_latest_timestamp INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT DEFAULT(0), has_joined_hangout INT, has_chat_notifications DEFAULT(0),has_video_notifications DEFAULT(0),last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), default_transport_phone TEXT, sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), chat_ringtone_uri TEXT, hangout_ringtone_uri TEXT, snippet_voicemail_duration INT DEFAULT (0), UNIQUE (conversation_id ));"

    invoke-static {p1, v0, v1}, Lbgw;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    :sswitch_3d
    const-string v0, "alter table sticker_photos add column last_used INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3589
    const-string v0, "alter table sticker_albums add column last_used INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3597
    :sswitch_3e
    const-string v0, "update messages set status = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lemc;->a:Lemc;

    .line 3603
    invoke-virtual {v1}, Lemc;->ordinal()I

    move-result v1

    const-string v4, "status"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3597
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3607
    const-string v0, "update conversations set snippet_status = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lemc;->a:Lemc;

    .line 3613
    invoke-virtual {v1}, Lemc;->ordinal()I

    move-result v1

    const-string v4, "snippet_status"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3607
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3621
    :sswitch_3f
    const-string v0, "alter table conversation_participants add column invitation_status INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3631
    :sswitch_40
    const-string v0, "alter table messages add column last_seen_timestamp INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3646
    :sswitch_41
    invoke-direct {p0, p1}, Lbgw;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3650
    :sswitch_42
    const-string v0, "alter table participants add column in_users_domain BOOLEAN;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3656
    :sswitch_43
    const-string v0, "drop index if exists index_dismissed_contacts_gaia_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3657
    const-string v0, "CREATE INDEX index_dismissed_contacts_gaia_id ON dismissed_contacts(gaia_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3660
    const-string v0, "CREATE INDEX index_conversation_participants_view_conversation_id ON conversation_participants(conversation_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3682
    :sswitch_44
    const-string v0, "DROP TABLE IF EXISTS merged_contact_details"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3683
    const-string v0, "DROP TABLE IF EXISTS merged_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3684
    invoke-static {}, Lctr;->a()[Ljava/lang/String;

    move-result-object v1

    move v0, v2

    :goto_2
    if-ge v0, v8, :cond_7

    aget-object v4, v1, v0

    .line 3685
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3684
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3690
    :cond_7
    :sswitch_45
    const-string v0, "CREATE INDEX index_merged_contact_details_parent_key ON merged_contact_details(merged_contact_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3694
    :sswitch_46
    const-string v0, "alter table merged_contacts add column is_frequent INT DEFAULT (0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3700
    const-string v0, "alter table merged_contacts add column is_favorite INT DEFAULT (0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3706
    const-string v0, "alter table merged_contact_details add column lookup_data_display TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3721
    :sswitch_47
    const-string v0, "alter table messages add column observed_status INT DEFAULT(2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3733
    :sswitch_48
    const-string v0, "alter table presence add column location BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3734
    const-string v0, "alter table presence add column location_time INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3739
    :sswitch_49
    const-string v0, "alter table messages add column attachment_blob_data BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3749
    :sswitch_4a
    const-string v0, "alter table conversations add column share_count INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3759
    :sswitch_4b
    const-string v0, "alter table messages add column attachment_uploading_progress INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3769
    :sswitch_4c
    const-string v0, "alter table conversations add column has_unobserved TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3776
    :sswitch_4d
    const-string v0, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3777
    const-string v0, "alter table messages rename to temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3778
    const-string v0, "CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, delete_after_read_timetamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, latitude DOUBLE, longitude DOUBLE, address ADDRESS, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), transport_phone TEXT, external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), new_conversation_name TEXT, participant_keys TEXT, forwarded_mms_url TEXT, forwarded_mms_count INT DEFAULT(0), attachment_description TEXT, attachment_target_url_description TEXT, attachment_target_url_name TEXT, attachment_blob_data BLOB,attachment_uploading_progress INT DEFAULT(0), sending_error INT DEFAULT(0), stream_expiration INT, voicemail_length INT DEFAULT (0), call_media_type INT DEFAULT(0), last_seen_timestamp INT DEFAULT(0), observed_status INT DEFAULT(2), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3779
    const-string v0, "insert into messages(message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, delete_after_read_timetamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, address, notification_level, expiration_timestamp, notified_for_failure, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, attachment_blob_data,attachment_uploading_progress, sending_error, stream_expiration, voicemail_length, call_media_type, last_seen_timestamp, observed_status) select message_id, message_type, conversation_id, author_chat_id, author_gaia_id, text, timestamp, delete_after_read_timetamp, status, type, local_url, remote_url, attachment_content_type, width_pixels, height_pixels, stream_id, image_id, album_id, latitude, longitude, address, notification_level, expiration_timestamp, notified_for_failure, off_the_record, transport_type, transport_phone, external_ids, sms_timestamp_sent, sms_priority, sms_message_size, mms_subject, sms_raw_sender, sms_raw_recipients, persisted, sms_message_status, sms_type, stream_url, attachment_target_url, attachment_name, image_rotation, new_conversation_name, participant_keys, forwarded_mms_url, forwarded_mms_count, attachment_description, attachment_target_url_description, attachment_target_url_name, attachment_blob_data,attachment_uploading_progress, sending_error, stream_expiration, voicemail_length, call_media_type, last_seen_timestamp, observed_status from temp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3788
    const-string v0, "drop table temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3791
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3796
    :sswitch_4e
    const-string v0, "alter table conversations add column last_share_timestamp INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3806
    :sswitch_4f
    const-string v0, "alter table messages add column receive_type INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3812
    const-string v0, "alter table messages add column init_timestamp INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3818
    const-string v0, "alter table messages add column in_app_msg_latency INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3824
    const-string v0, "alter table messages add column notified INT DEFAULT(0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3839
    :sswitch_50
    invoke-static {p1}, Lbgw;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3840
    new-instance v0, Lbfz;

    iget-object v1, p0, Lbgw;->b:Landroid/content/Context;

    new-instance v4, Lbha;

    iget-object v5, p0, Lbgw;->b:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lbha;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iget v5, p0, Lbgw;->h:I

    invoke-direct {v0, v1, v4, v5}, Lbfz;-><init>(Landroid/content/Context;Lbha;I)V

    .line 3842
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbfz;->a(Lbfz;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3874
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3877
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_database_upgrade_version"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v3

    .line 3880
    :goto_3
    if-eqz v0, :cond_a

    .line 3881
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "db upgrade from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " succeeded"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3863
    :cond_8
    :try_start_3
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3864
    const-string v4, "last_database_upgrade_version"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-ne v0, p3, :cond_6

    move v3, v2

    goto/16 :goto_1

    .line 3874
    :cond_9
    iget-object v0, p0, Lbgw;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3877
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_database_upgrade_version"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v2

    .line 3878
    goto :goto_3

    .line 3885
    :cond_a
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x39

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "db upgrade failed; recreating: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3886
    invoke-direct {p0, p1}, Lbgw;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 2465
    nop

    :sswitch_data_0
    .sparse-switch
        0x8a -> :sswitch_0
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0xcf -> :sswitch_2
        0xd0 -> :sswitch_3
        0xd1 -> :sswitch_3
        0xd2 -> :sswitch_4
        0xd3 -> :sswitch_5
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_5
        0xd6 -> :sswitch_5
        0xd7 -> :sswitch_5
        0xd8 -> :sswitch_6
        0xd9 -> :sswitch_7
        0xda -> :sswitch_8
        0xdc -> :sswitch_9
        0xde -> :sswitch_9
        0xdf -> :sswitch_a
        0xe0 -> :sswitch_b
        0xe1 -> :sswitch_b
        0xe3 -> :sswitch_c
        0xe4 -> :sswitch_d
        0xe5 -> :sswitch_e
        0xe6 -> :sswitch_e
        0xe8 -> :sswitch_e
        0xe9 -> :sswitch_e
        0xea -> :sswitch_e
        0xeb -> :sswitch_f
        0xec -> :sswitch_f
        0xed -> :sswitch_10
        0xee -> :sswitch_10
        0xef -> :sswitch_11
        0xf0 -> :sswitch_12
        0xf1 -> :sswitch_12
        0xf2 -> :sswitch_12
        0x10f -> :sswitch_13
        0x190 -> :sswitch_14
        0x191 -> :sswitch_14
        0x192 -> :sswitch_15
        0x193 -> :sswitch_16
        0x194 -> :sswitch_17
        0x195 -> :sswitch_18
        0x196 -> :sswitch_18
        0x197 -> :sswitch_19
        0x198 -> :sswitch_19
        0x199 -> :sswitch_1a
        0x19a -> :sswitch_1a
        0x19b -> :sswitch_1a
        0x19c -> :sswitch_1a
        0x19d -> :sswitch_1b
        0x19e -> :sswitch_1c
        0x19f -> :sswitch_1d
        0x1a0 -> :sswitch_1d
        0x1a1 -> :sswitch_1d
        0x1a2 -> :sswitch_1e
        0x1a3 -> :sswitch_1f
        0x1a4 -> :sswitch_1f
        0x1a6 -> :sswitch_20
        0x1a7 -> :sswitch_20
        0x1a8 -> :sswitch_20
        0x1a9 -> :sswitch_20
        0x1aa -> :sswitch_21
        0x1ab -> :sswitch_21
        0x1ac -> :sswitch_21
        0x1ad -> :sswitch_21
        0x1ae -> :sswitch_22
        0x1af -> :sswitch_22
        0x1b0 -> :sswitch_22
        0x1b1 -> :sswitch_22
        0x1b2 -> :sswitch_22
        0x1b3 -> :sswitch_22
        0x1b4 -> :sswitch_23
        0x1b5 -> :sswitch_23
        0x1b6 -> :sswitch_24
        0x1b7 -> :sswitch_25
        0x1b8 -> :sswitch_25
        0x1c2 -> :sswitch_25
        0x1cc -> :sswitch_25
        0x1d6 -> :sswitch_25
        0x1e0 -> :sswitch_25
        0x1ea -> :sswitch_25
        0x1f4 -> :sswitch_26
        0x1fe -> :sswitch_26
        0x208 -> :sswitch_27
        0x212 -> :sswitch_28
        0x21c -> :sswitch_29
        0x21d -> :sswitch_2a
        0x226 -> :sswitch_2b
        0x230 -> :sswitch_2b
        0x23a -> :sswitch_2c
        0x244 -> :sswitch_2d
        0x24e -> :sswitch_2e
        0x258 -> :sswitch_2f
        0x262 -> :sswitch_2f
        0x26c -> :sswitch_30
        0x276 -> :sswitch_31
        0x280 -> :sswitch_31
        0x28a -> :sswitch_31
        0x302 -> :sswitch_31
        0x30c -> :sswitch_32
        0x316 -> :sswitch_33
        0x320 -> :sswitch_34
        0x32a -> :sswitch_35
        0x334 -> :sswitch_36
        0x33e -> :sswitch_37
        0x348 -> :sswitch_38
        0x352 -> :sswitch_39
        0x35c -> :sswitch_3a
        0x366 -> :sswitch_3b
        0x370 -> :sswitch_3b
        0x37a -> :sswitch_3c
        0x384 -> :sswitch_3d
        0x38e -> :sswitch_3e
        0x398 -> :sswitch_3e
        0x3a2 -> :sswitch_3f
        0x3ac -> :sswitch_40
        0x3b6 -> :sswitch_41
        0x3c0 -> :sswitch_41
        0x3ca -> :sswitch_42
        0x3d4 -> :sswitch_43
        0x3de -> :sswitch_44
        0x3e8 -> :sswitch_44
        0x3f2 -> :sswitch_44
        0x3fc -> :sswitch_44
        0x406 -> :sswitch_45
        0x410 -> :sswitch_46
        0x41a -> :sswitch_47
        0x424 -> :sswitch_47
        0x42e -> :sswitch_48
        0x438 -> :sswitch_49
        0x442 -> :sswitch_4a
        0x44c -> :sswitch_4b
        0x456 -> :sswitch_4c
        0x460 -> :sswitch_4d
        0x46a -> :sswitch_4e
        0x474 -> :sswitch_4f
        0x47e -> :sswitch_50
        0x7fffffff -> :sswitch_50
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5301
    iget v0, p0, Lbgw;->h:I

    iget-object v1, p0, Lbgw;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
