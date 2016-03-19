.class final Lckc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcny;


# instance fields
.field final synthetic a:Lckb;


# direct methods
.method constructor <init>(Lckb;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lckc;->a:Lckb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1137
    invoke-static {p2}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 1138
    if-nez v0, :cond_0

    .line 1139
    const-string v3, "Babel_call_logs"

    const-string v4, "Account null."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Laal;->c(Lbfd;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 49
    :goto_0
    if-eqz v0, :cond_4

    .line 2145
    const-class v0, Lekh;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekh;

    .line 2146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2147
    invoke-virtual {v0, p2}, Lekh;->f(I)J

    move-result-wide v6

    .line 2148
    const-string v3, "babel_include_last_call_in_feedback_timeout_ms"

    sget-wide v8, Leea;->t:J

    .line 2149
    invoke-static {p1, v3, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2153
    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-eqz v3, :cond_2

    cmp-long v3, v6, v4

    if-gez v3, :cond_2

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    move v3, v1

    .line 2157
    :goto_1
    if-eqz v3, :cond_3

    .line 2158
    invoke-virtual {v0, p2}, Lekh;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2159
    invoke-virtual {v0, p2}, Lekh;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 49
    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    return v0

    :cond_1
    move v0, v2

    .line 1141
    goto :goto_0

    :cond_2
    move v3, v2

    .line 2153
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2159
    goto :goto_2

    :cond_4
    move v0, v2

    .line 49
    goto :goto_3
.end method

.method public b(Landroid/content/Context;I)[Lcnx;
    .locals 11

    .prologue
    const/16 v10, 0xb18

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-static {}, Laal;->x()V

    .line 3137
    invoke-static {p2}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 3138
    if-nez v2, :cond_0

    .line 3139
    const-string v3, "Babel_call_logs"

    const-string v4, "Account null."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3141
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Laal;->c(Lbfd;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :goto_0
    if-nez v0, :cond_2

    .line 57
    const-string v0, "Babel_call_logs"

    const-string v2, "Diagnostics are not enabled."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-array v0, v1, [Lcnx;

    .line 100
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 3141
    goto :goto_0

    .line 60
    :cond_2
    const-class v0, Lhba;

    .line 61
    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, p2}, Lhba;->a(I)Lhaw;

    move-result-object v2

    .line 63
    const-class v0, Lekh;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekh;

    .line 64
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, p2}, Lekh;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    const-string v0, "Babel_call_logs"

    const-string v3, "Log file not found."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-interface {v2, v10}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lhax;->d()V

    .line 70
    new-array v0, v1, [Lcnx;

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    .line 77
    :goto_2
    new-array v4, v0, [B

    .line 79
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v5, v4, v3, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 81
    if-eq v3, v0, :cond_4

    .line 82
    const-string v6, "Babel_call_logs"

    const-string v7, "Read len (%d) != file len (%d)."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 85
    const/16 v0, 0xb17

    .line 86
    invoke-interface {v2, v0}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lhax;->d()V

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Lcnx;

    const/4 v3, 0x0

    new-instance v5, Lcnx;

    const-string v6, "call_log.txt"

    const-string v7, "text/plain"

    invoke-direct {v5, v6, v7, v4}, Lcnx;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v5, v0, v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 92
    :catch_0
    move-exception v0

    const-string v0, "Babel_call_logs"

    const-string v3, "Log file not found when reading."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :goto_3
    invoke-interface {v2, v10}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Lhax;->d()V

    .line 100
    new-array v0, v1, [Lcnx;

    goto/16 :goto_1

    .line 75
    :cond_5
    const/high16 v0, 0x100000

    goto :goto_2

    .line 94
    :catch_1
    move-exception v0

    const-string v0, "Babel_call_logs"

    const-string v3, "IOException when reading log file."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method
