.class public final Lemw;
.super Lems;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field private static w:I


# instance fields
.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:J

.field public p:J

.field public q:J

.field public r:I

.field public s:J

.field public t:I

.field public u:Z

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "seen"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    sput-object v0, Lemw;->a:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lemw;->b:[Ljava/lang/String;

    .line 99
    sput v3, Lemw;->w:I

    sput v4, Lemw;->w:I

    sput v3, Lemw;->c:I

    .line 100
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->d:I

    .line 101
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->e:I

    .line 102
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->f:I

    .line 103
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->g:I

    .line 104
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->h:I

    .line 105
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->i:I

    .line 106
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->j:I

    .line 107
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->k:I

    .line 108
    sget v0, Lemw;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemw;->w:I

    sput v0, Lemw;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lems;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    sget v0, Lemw;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lemw;->o:J

    .line 126
    sget v0, Lemw;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lemw;->m:Ljava/lang/String;

    .line 127
    sget v0, Lemw;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lemw;->n:Ljava/lang/String;

    .line 129
    sget v0, Lemw;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lemw;->p:J

    .line 131
    invoke-static {}, Lenn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lemw;->l:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    mul-long/2addr v0, v4

    :goto_0
    iput-wide v0, p0, Lemw;->q:J

    .line 132
    sget v0, Lemw;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lemw;->r:I

    .line 133
    sget v0, Lemw;->h:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lemw;->s:J

    .line 134
    sget v0, Lemw;->i:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lemw;->t:I

    .line 135
    sget v0, Lemw;->j:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lemw;->u:Z

    .line 136
    sget v0, Lemw;->k:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    iput-boolean v2, p0, Lemw;->v:Z

    .line 137
    return-void

    .line 131
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 135
    goto :goto_1

    :cond_2
    move v2, v3

    .line 136
    goto :goto_2
.end method

.method public b()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lemw;->o:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lemw;->p:J

    return-wide v0
.end method
