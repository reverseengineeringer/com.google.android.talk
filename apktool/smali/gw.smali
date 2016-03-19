.class public final Lgw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lhg;

.field static final b:Lgw;

.field static final c:Lgw;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:Lhg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 83
    sget-object v0, Lhh;->c:Lhg;

    sput-object v0, Lgw;->a:Lhg;

    .line 113
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgw;->d:Ljava/lang/String;

    .line 118
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgw;->e:Ljava/lang/String;

    .line 215
    new-instance v0, Lgw;

    const/4 v1, 0x0

    sget-object v2, Lgw;->a:Lhg;

    invoke-direct {v0, v1, v3, v2}, Lgw;-><init>(ZILhg;)V

    sput-object v0, Lgw;->b:Lgw;

    .line 220
    new-instance v0, Lgw;

    const/4 v1, 0x1

    sget-object v2, Lgw;->a:Lhg;

    invoke-direct {v0, v1, v3, v2}, Lgw;-><init>(ZILhg;)V

    sput-object v0, Lgw;->c:Lgw;

    return-void
.end method

.method constructor <init>(ZILhg;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Lgw;->f:Z

    .line 262
    iput p2, p0, Lgw;->g:I

    .line 263
    iput-object p3, p0, Lgw;->h:Lhg;

    .line 264
    return-void
.end method

.method public static a()Lgw;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lgx;

    invoke-direct {v0}, Lgx;-><init>()V

    invoke-virtual {v0}, Lgx;->a()Lgw;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4143
    sget-object v1, Lhn;->a:Lho;

    invoke-virtual {v1, p0}, Lho;->a(Ljava/util/Locale;)I

    move-result v1

    .line 440
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lgy;

    invoke-direct {v0, p0}, Lgy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgy;->b()I

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 482
    new-instance v0, Lgy;

    invoke-direct {v0, p0}, Lgy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgy;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lhg;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 1376
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lhg;->a(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 1378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2278
    iget v0, p0, Lgw;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    .line 1379
    :goto_1
    if-eqz v0, :cond_2

    .line 1380
    if-eqz v2, :cond_5

    sget-object v0, Lhh;->b:Lhg;

    .line 2324
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lhg;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 2326
    iget-boolean v4, p0, Lgw;->f:Z

    if-nez v4, :cond_6

    if-nez v0, :cond_1

    invoke-static {p1}, Lgw;->c(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 2327
    :cond_1
    sget-object v0, Lgw;->d:Ljava/lang/String;

    .line 1380
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_2
    iget-boolean v0, p0, Lgw;->f:Z

    if-eq v2, v0, :cond_a

    .line 1384
    if-eqz v2, :cond_9

    const/16 v0, 0x202b

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    const/16 v0, 0x202c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1391
    :goto_5
    if-eqz v2, :cond_b

    sget-object v0, Lhh;->b:Lhg;

    .line 3297
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lhg;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 3299
    iget-boolean v2, p0, Lgw;->f:Z

    if-nez v2, :cond_c

    if-nez v0, :cond_3

    invoke-static {p1}, Lgw;->b(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 3300
    :cond_3
    sget-object v0, Lgw;->d:Ljava/lang/String;

    .line 1391
    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2278
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1380
    :cond_5
    sget-object v0, Lhh;->a:Lhg;

    goto :goto_2

    .line 2329
    :cond_6
    iget-boolean v4, p0, Lgw;->f:Z

    if-eqz v4, :cond_8

    if-eqz v0, :cond_7

    invoke-static {p1}, Lgw;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 2330
    :cond_7
    sget-object v0, Lgw;->e:Ljava/lang/String;

    goto :goto_3

    .line 2332
    :cond_8
    const-string v0, ""

    goto :goto_3

    .line 1384
    :cond_9
    const/16 v0, 0x202a

    goto :goto_4

    .line 1388
    :cond_a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1391
    :cond_b
    sget-object v0, Lhh;->a:Lhg;

    goto :goto_6

    .line 3302
    :cond_c
    iget-boolean v1, p0, Lgw;->f:Z

    if-eqz v1, :cond_e

    if-eqz v0, :cond_d

    invoke-static {p1}, Lgw;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 3303
    :cond_d
    sget-object v0, Lgw;->e:Ljava/lang/String;

    goto :goto_7

    .line 3305
    :cond_e
    const-string v0, ""

    goto :goto_7
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lgw;->h:Lhg;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lhg;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
