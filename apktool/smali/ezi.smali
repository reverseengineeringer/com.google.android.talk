.class public final Lezi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile A:Z

.field private static final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final C:Ljava/util/regex/Pattern;

.field public static final a:Limx;

.field public static final b:Limx;

.field public static final c:Limx;

.field public static final d:Limx;

.field public static final e:Limx;

.field public static final f:Limx;

.field public static final g:Limx;

.field public static final h:Limx;

.field public static final i:Limx;

.field public static final j:Limx;

.field public static final k:Limx;

.field public static final l:Limx;

.field public static final m:Limx;

.field public static final n:Limx;

.field public static final o:Limx;

.field public static final p:Limx;

.field public static final q:Limx;

.field public static final r:Limx;

.field public static final s:Limx;

.field public static final t:Limx;

.field public static final u:Limx;

.field public static final v:Limx;

.field public static final w:Limw;

.field public static final x:Limx;

.field public static final y:Limx;

.field public static z:Lhlm;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 51
    const-string v0, "audioplayer"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->a:Limx;

    .line 52
    const-string v0, "callerid"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->b:Limx;

    .line 53
    const-string v0, "clearcut"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->c:Limx;

    .line 54
    const-string v0, "content"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->d:Limx;

    .line 55
    const-string v0, "cve"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->e:Limx;

    .line 56
    const-string v0, "fragment"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->f:Limx;

    .line 57
    const-string v0, "hangout"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->g:Limx;

    .line 58
    const-string v0, "latencytracker"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->h:Limx;

    .line 59
    const-string v0, "network"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->i:Limx;

    .line 60
    const-string v0, "networkqueue"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->j:Limx;

    .line 61
    const-string v0, "phone"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->k:Limx;

    .line 62
    const-string v0, "protocol"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->l:Limx;

    .line 63
    const-string v0, "pstn"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->m:Limx;

    .line 64
    const-string v0, "pstn_meta"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->n:Limx;

    .line 65
    const-string v0, "realtimechat"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->o:Limx;

    .line 66
    const-string v0, "requestwriter"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->p:Limx;

    .line 67
    const-string v0, "service"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->q:Limx;

    .line 68
    const-string v0, "sms"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->r:Limx;

    .line 69
    const-string v0, "telephony"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->s:Limx;

    .line 70
    const-string v0, "util"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->t:Limx;

    .line 71
    const-string v0, "view"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->u:Limx;

    .line 72
    const-string v0, "wear"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->v:Limx;

    .line 74
    new-instance v0, Limw;

    const-string v1, "pii"

    invoke-direct {v0, v1, v8}, Limw;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lezi;->w:Limw;

    .line 77
    const-string v0, "perf_cached"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->x:Limx;

    .line 80
    const-string v0, "tracing"

    invoke-static {v0}, Lezi;->c(Ljava/lang/String;)Limx;

    move-result-object v0

    sput-object v0, Lezi;->y:Limx;

    .line 99
    const-string v0, "\t"

    const-string v1, ""

    const-string v2, "\n"

    const-string v3, " ==> "

    const-string v4, "com.google.android.apps.hangouts"

    const-string v5, ""

    const-string v6, ".java"

    const-string v7, ""

    invoke-static/range {v0 .. v7}, Lksm;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lksm;

    move-result-object v0

    sput-object v0, Lezi;->B:Ljava/util/Map;

    .line 3113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3114
    sget-object v0, Lezi;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3115
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3118
    :cond_0
    const-string v0, "(%s)"

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "|"

    invoke-static {v4}, Lknk;->a(Ljava/lang/String;)Lknk;

    move-result-object v4

    invoke-virtual {v4, v1}, Lknk;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezi;->C:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 407
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 410
    sget-object v2, Lezi;->C:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 411
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lezi;->B:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 7

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 1036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 133
    const-string v5, "babel_log_dump"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 135
    sput-boolean v4, Lezi;->A:Z

    if-eqz v4, :cond_1

    sget-object v4, Lezi;->z:Lhlm;

    if-nez v4, :cond_1

    .line 137
    new-instance v4, Lhlm;

    invoke-direct {v4}, Lhlm;-><init>()V

    sput-object v4, Lezi;->z:Lhlm;

    .line 142
    :cond_0
    :goto_0
    sget-object v4, Lezi;->z:Lhlm;

    .line 2148
    const-string v5, "vclib"

    .line 2173
    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2022
    :goto_1
    sput v0, Lhlk;->b:I

    .line 2025
    sput-object v4, Lhlk;->a:Lhlm;

    .line 143
    return-void

    .line 138
    :cond_1
    sget-boolean v4, Lezi;->A:Z

    if-nez v4, :cond_0

    sget-object v4, Lezi;->z:Lhlm;

    if-eqz v4, :cond_0

    .line 140
    const/4 v4, 0x0

    sput-object v4, Lezi;->z:Lhlm;

    goto :goto_0

    .line 2175
    :cond_2
    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2176
    goto :goto_1

    .line 2177
    :cond_3
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 2178
    goto :goto_1

    .line 2179
    :cond_4
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 2180
    goto :goto_1

    .line 2182
    :cond_5
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    const/4 v0, 0x3

    .line 236
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 235
    invoke-static {v5, v0, p0, v1, v2}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method private static varargs a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 326
    const/4 v0, 0x0

    .line 328
    if-eqz p4, :cond_0

    array-length v1, p4

    if-lez v1, :cond_7

    :cond_0
    const/4 v1, 0x1

    .line 329
    :goto_0
    if-nez p0, :cond_1

    if-ge p1, v3, :cond_1

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    :cond_1
    if-eqz v1, :cond_8

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_1
    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    if-lt p1, v3, :cond_4

    const-string v2, "Babel_telephony"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    if-nez v0, :cond_3

    .line 339
    if-eqz v1, :cond_9

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_3
    :goto_2
    invoke-static {v0}, Lhgd;->b(Ljava/lang/String;)V

    .line 344
    :cond_4
    sget-object v2, Lezi;->z:Lhlm;

    .line 345
    if-eqz v2, :cond_6

    const/4 v3, 0x3

    if-lt p1, v3, :cond_6

    .line 346
    if-nez v0, :cond_a

    .line 347
    if-eqz v1, :cond_5

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 349
    :cond_5
    :goto_3
    invoke-virtual {v2, p1, p2, p3}, Lhlm;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_6
    return-void

    .line 328
    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    move-object v0, p3

    .line 330
    goto :goto_1

    :cond_9
    move-object v0, p3

    .line 339
    goto :goto_2

    :cond_a
    move-object p3, v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2209
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 384
    return v0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 363
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 364
    sget-object v1, Lezi;->z:Lhlm;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 369
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 370
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 373
    :cond_1
    return v0

    .line 365
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-object p0

    .line 397
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 398
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Redacted-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-chars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 260
    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 261
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 260
    invoke-static {v0, v1, p0, v2, v3}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method private static c(Ljava/lang/String;)Limx;
    .locals 4

    .prologue
    .line 126
    new-instance v1, Limx;

    const-string v2, "debug.chat."

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Limx;-><init>(Ljava/lang/String;B)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, p1, v0}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, v0, v1}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 310
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, p1, v0}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, v0, v1}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 298
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Lezi;->a(ZILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    return-void
.end method
